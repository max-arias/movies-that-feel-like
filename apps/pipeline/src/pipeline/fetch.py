"""
pipeline.fetch — Pull Reddit data using Arctic Shift.
Stores raw JSON artifacts under data/raw/.
"""

from __future__ import annotations

import argparse
import asyncio
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import timestamp_slug, write_json_artifact
from pipeline.paths import ensure_pipeline_dirs, raw_dir

# Max in-flight comment-tree fetches during the parallel fan-out.
_CONCURRENCY = 8


def _today_utc_str() -> str:
    """Return today's UTC date as ``YYYY-MM-DD``."""
    return datetime.now(timezone.utc).strftime("%Y-%m-%d")


def _year_range(year: int) -> tuple[str, str]:
    """Return ``(after, before)`` date strings for the given *year*.

    If *year* is the current calendar year, *before* defaults to today's
    UTC date; otherwise it is ``{year}-12-31``.
    """
    after = f"{year}-01-01"
    if year == datetime.now(timezone.utc).year:
        before = _today_utc_str()
    else:
        before = f"{year}-12-31"
    return after, before


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Fetch Reddit posts via Arctic Shift and save raw artifacts.",
    )
    parser.add_argument(
        "--subreddit",
        default="MoviesThatFeelLike",
        help="Subreddit to pull from (default: %(default)s)",
    )
    parser.add_argument(
        "--year",
        type=int,
        default=2026,
        help="Filter posts from this year (default: %(default)s)",
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=5,
        help="Maximum number of posts to fetch (default: %(default)s)",
    )
    parser.add_argument(
        "--skip-comments",
        action="store_true",
        help="Skip comment-tree fetching (faster for smoke tests)",
    )
    parser.add_argument(
        "--after",
        default=None,
        help="Start date YYYY-MM-DD (default: derived from --year)",
    )
    parser.add_argument(
        "--before",
        default=None,
        help="End date YYYY-MM-DD (default: derived from --year; today if current year)",
    )
    parser.add_argument(
        "--out",
        default=None,
        help="Output path (default: data/raw/arctic-shift-{subreddit}-{year}-{timestamp}.json)",
    )
    return parser


async def _fetch_one_comment_tree(
    client: Any, link_id: str,
) -> tuple[str, Any]:
    """Fetch a single comment tree via ``asyncio.to_thread``.

    Returns ``(link_id, tree)`` on success or ``(link_id, {"error": …})``
    on exception — never raises.
    """
    try:
        tree = await asyncio.to_thread(
            client.get_comment_tree,
            link_id=link_id,
            limit=9999,
            start_breadth=4,
            start_depth=4,
        )
        return link_id, tree
    except Exception as exc:
        return link_id, {"error": str(exc)}


async def _fetch_all_comment_trees(
    client: Any,
    raw_posts: list[dict[str, Any]],
) -> dict[str, Any]:
    """Fetch comment trees for all *raw_posts* with bounded concurrency."""
    sem = asyncio.Semaphore(_CONCURRENCY)

    async def _bounded(link_id: str) -> tuple[str, Any]:
        async with sem:
            return await _fetch_one_comment_tree(client, link_id)

    tasks = [_bounded(f"t3_{post['id']}") for post in raw_posts]
    results = await asyncio.gather(*tasks, return_exceptions=False)

    comments_by_post: dict[str, Any] = {}
    for link_id, result in results:
        comments_by_post[link_id] = result
    return comments_by_post


async def _async_main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    # Resolve date range ---------------------------------------------------
    default_after, default_before = _year_range(args.year)
    after = args.after if args.after is not None else default_after
    before = args.before if args.before is not None else default_before

    # Output path ----------------------------------------------------------
    slug = timestamp_slug()
    if args.out is None:
        out = raw_dir() / f"arctic-shift-{args.subreddit}-{args.year}-{slug}.json"
    else:
        out = Path(args.out)

    # Arctic Shift client --------------------------------------------------
    from arcshiftwrap import ArcticShiftClient

    client = ArcticShiftClient(
        timeout=90,
        sleep_seconds=1,
        max_retries=4,
        backoff_factor=2.0,
    )

    print(
        f"[pipeline:fetch] Searching r/{args.subreddit} "
        f"({after} → {before}, limit={args.limit})"
    )

    t0 = time.monotonic()
    response = await asyncio.to_thread(
        client.search_posts,
        subreddit=args.subreddit,
        after=after,
        before=before,
        limit=args.limit,
        sort="asc",
    )
    t1 = time.monotonic()
    print(f"[pipeline:fetch] Search took {t1 - t0:.2f}s")

    posts = response.get("data", response) if isinstance(response, dict) else response

    print(f"[pipeline:fetch] Fetched {len(posts)} posts")

    # Post-process: ensure each post is a plain dict
    raw_posts: list[dict[str, Any]] = [dict(p) if not isinstance(p, dict) else p for p in posts]

    # Comment trees --------------------------------------------------------
    comments_by_post: dict[str, Any] = {}
    if not args.skip_comments:
        print(
            f"[pipeline:fetch] Fetching comment trees "
            f"(concurrency={_CONCURRENCY}) …"
        )
        t2 = time.monotonic()
        comments_by_post = await _fetch_all_comment_trees(client, raw_posts)
        t3 = time.monotonic()
        print(f"[pipeline:fetch] Comment trees took {t3 - t2:.2f}s")

    # Summary --------------------------------------------------------------
    comment_tree_count = sum(
        1 for v in comments_by_post.values() if "error" not in v
    )
    comment_error_count = sum(
        1 for v in comments_by_post.values() if "error" in v
    )

    # Build artifact -------------------------------------------------------
    artifact: dict[str, Any] = {
        "status": "fetched",
        "source": "arctic_shift",
        "fetched_at": datetime.now(timezone.utc).isoformat(),
        "args": {
            "subreddit": args.subreddit,
            "year": args.year,
            "limit": args.limit,
            "skip_comments": args.skip_comments,
            "after": after,
            "before": before,
        },
        "query": {
            "subreddit": args.subreddit,
            "after": after,
            "before": before,
            "limit": args.limit,
            "sort": "asc",
        },
        "posts": raw_posts,
        "comments_by_post": comments_by_post,
        "summary": {
            "post_count": len(raw_posts),
            "comment_tree_count": comment_tree_count,
            "comment_error_count": comment_error_count,
        },
    }

    ensure_pipeline_dirs()
    write_json_artifact(out, artifact)

    print(
        f"[pipeline:fetch] Done: {len(raw_posts)} posts, "
        f"{comment_tree_count} trees, {comment_error_count} errors"
    )
    print(f"[pipeline:fetch] Artifact written to {out}")


def main(argv: list[str] | None = None) -> None:
    asyncio.run(_async_main(argv))


if __name__ == "__main__":
    main()
