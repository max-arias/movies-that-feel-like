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
_MAX_SEARCH_PAGE_SIZE = 100


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


def _positive_int(value: str) -> int:
    parsed = int(value)
    if parsed < 1:
        raise argparse.ArgumentTypeError("must be at least 1")
    return parsed


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
        "--sort",
        choices=("asc", "desc"),
        default="asc",
        help=(
            "Post ordering: asc for oldest-first or desc for newest-first "
            "(default: %(default)s)"
        ),
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
    parser.add_argument(
        "--exclude-reddit-ids-file",
        default=None,
        help="Path to a newline-delimited set of Reddit post IDs to exclude",
    )
    parser.add_argument(
        "--max-pages",
        type=_positive_int,
        default=10,
        help=(
            "Maximum search pages when excluding IDs (default: %(default)s); "
            "ignored without --exclude-reddit-ids-file"
        ),
    )
    return parser


def _read_excluded_reddit_ids(path: Path) -> set[str]:
    """Read Reddit post IDs to exclude from a newline-delimited file."""
    try:
        lines = path.read_text(encoding="utf-8").splitlines()
    except FileNotFoundError as exc:
        raise SystemExit(
            f"[pipeline:fetch] Exclusion file does not exist: {path}"
        ) from exc
    except OSError as exc:
        raise SystemExit(
            f"[pipeline:fetch] Could not read exclusion file {path}: {exc}"
        ) from exc
    return {line.strip() for line in lines if line.strip()}


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

    excluded_ids: set[str] = set()
    exclusion_enabled = args.exclude_reddit_ids_file is not None
    if exclusion_enabled:
        excluded_ids = _read_excluded_reddit_ids(Path(args.exclude_reddit_ids_file))

    # Resolve date range ---------------------------------------------------
    default_after, default_before = _year_range(args.year)
    after = args.after if args.after is not None else default_after
    before = args.before if args.before is not None else default_before
    initial_before = before
    effective_sort = "desc" if exclusion_enabled else args.sort

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
        f"({after} → {before}, limit={args.limit}, sort={effective_sort})"
    )

    t0 = time.monotonic()
    posts: list[dict[str, Any]] = []
    page_count = 0
    excluded_post_count = 0
    scanned_post_count = 0
    requested_limit = args.limit
    search_before = before
    seen_ids: set[Any] = set(excluded_ids)
    stopped_for_bound = False

    while True:
        if exclusion_enabled and len(posts) >= requested_limit:
            break
        if exclusion_enabled and page_count >= args.max_pages:
            stopped_for_bound = True
            break
        page_limit = (
            min(_MAX_SEARCH_PAGE_SIZE, requested_limit - len(posts))
            if exclusion_enabled
            else requested_limit
        )
        response = await asyncio.to_thread(
            client.search_posts,
            subreddit=args.subreddit,
            after=after,
            before=search_before,
            limit=page_limit,
            sort=effective_sort,
        )
        page = response.get("data", response) if isinstance(response, dict) else response
        page = list(page)
        page_count += 1
        scanned_post_count += len(page)

        page_posts = [dict(post) if not isinstance(post, dict) else post for post in page]
        unseen_posts = []
        for post in page_posts:
            post_id = post.get("id")
            if post_id in seen_ids:
                excluded_post_count += 1
                continue
            seen_ids.add(post_id)
            unseen_posts.append(post)
        posts.extend(unseen_posts[: max(0, requested_limit - len(posts))])

        if not exclusion_enabled or len(page_posts) < page_limit or not page_posts:
            break

        created_timestamps = [
            post["created_utc"]
            for post in page_posts
            if post.get("created_utc") is not None
        ]
        if not created_timestamps:
            break
        search_before = str(min(created_timestamps) - 1)

    t1 = time.monotonic()
    print(f"[pipeline:fetch] Search took {t1 - t0:.2f}s across {page_count} page(s)")

    print(f"[pipeline:fetch] Fetched {len(posts)} posts")

    # Post-process: ensure each post is a plain dict
    raw_posts = posts

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
            "sort": effective_sort,
            "exclude_reddit_ids_file": args.exclude_reddit_ids_file,
            "max_pages": args.max_pages,
        },
        "query": {
            "subreddit": args.subreddit,
            "after": after,
            "before": initial_before,
            "limit": args.limit,
            "sort": effective_sort,
            "exclude_reddit_ids_file": args.exclude_reddit_ids_file,
            "max_pages": args.max_pages,
        },
        "posts": raw_posts,
        "comments_by_post": comments_by_post,
        "summary": {
            "post_count": len(raw_posts),
            "comment_tree_count": comment_tree_count,
            "comment_error_count": comment_error_count,
            "search_page_count": page_count,
            "scanned_post_count": scanned_post_count,
            "excluded_post_count": excluded_post_count,
            "max_pages": args.max_pages if exclusion_enabled else None,
            "pagination_truncated": stopped_for_bound,
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
