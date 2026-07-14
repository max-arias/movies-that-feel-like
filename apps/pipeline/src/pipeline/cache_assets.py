"""
pipeline.cache_assets — Download normalized image assets to local storage.

Reads a normalized artifact, downloads each image source_url via httpx,
and stores files under ``data/assets/reddit/{reddit_post_id}/``.
"""

from __future__ import annotations

import argparse
import asyncio
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any
from urllib.parse import urlparse, unquote

import httpx

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.paths import assets_dir, ensure_pipeline_dirs, normalized_dir, working_dir

_USER_AGENT = "movies-that-feel-like/0.1"

# Max in-flight image downloads during the parallel fan-out.
_CONCURRENCY = 8


def _safe_filename(source_url: str, sort_order: int) -> str:
    """Derive a safe local filename from a URL.

    Uses the last path component if it looks like a filename, otherwise
    falls back to ``{sort_order}-{url-stub}``.
    """
    path = unquote(urlparse(source_url).path)
    name = Path(path).name
    if name and "." in name:
        return f"{sort_order:04d}-{name}"
    # fallback: use a hash-like stub
    stub = path.strip("/").replace("/", "-") or "image"
    return f"{sort_order:04d}-{stub}"


def _cached_path(
    reddit_post_id: str, source_url: str, sort_order: int
) -> Path:
    """Return the local cache path for an image."""
    fname = _safe_filename(source_url, sort_order)
    return assets_dir() / reddit_post_id / fname


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Download normalized image assets to local storage.",
    )
    parser.add_argument(
        "--input",
        default=None,
        help="Path to normalized artifact (default: latest data/working/normalized/*.json)",
    )
    parser.add_argument(
        "--out",
        default=None,
        help="Output manifest path (default: data/working/assets-cache-{timestamp}.json)",
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=None,
        help="Maximum number of images to attempt downloading",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=30,
        help="HTTP request timeout in seconds (default: %(default)s)",
    )
    return parser


def _latest_normalized() -> Path:
    """Return the most recent ``*.json`` in data/working/normalized/."""
    candidates = sorted(normalized_dir().glob("*.json"))
    if not candidates:
        raise SystemExit(
            "[pipeline:cache_assets] No normalized artifacts found — run normalize first"
        )
    return candidates[-1]


async def _download_one(
    client: httpx.AsyncClient,
    task: dict[str, Any],
    idx: int,
    total: int,
) -> dict[str, Any]:
    """Download a single image, returning the asset dict.

    Never raises — returns the error-shaped dict on failure.

    The returned dict may include an internal ``_on_disk`` marker (stripped
    before the manifest is written) so the caller can distinguish fast-path
    from network downloads for the summary line.
    """
    pid = task["reddit_post_id"]
    url = task["source_url"]
    sort_order = task["sort_order"]
    dst = _cached_path(pid, url, sort_order)

    asset: dict[str, Any] = {
        "reddit_post_id": pid,
        "source_url": url,
        "cache_path": str(dst),
    }

    # Fast path: file already on disk — skip HTTP call entirely.
    if dst.exists():
        size = dst.stat().st_size
        asset["cache_status"] = "cached"
        asset["cache_size"] = size
        asset["_on_disk"] = True
        print(f"  [{idx}/{total}] {dst.name} → cached (on disk, {size} bytes)")
        return asset

    # Download from network
    try:
        dst.parent.mkdir(parents=True, exist_ok=True)
        resp = await client.get(url)
        resp.raise_for_status()
        dst.write_bytes(resp.content)
        asset["cache_status"] = "cached"
        asset["cache_size"] = len(resp.content)
        asset["_on_disk"] = False
        print(f"  [{idx}/{total}] {dst.name} → cached ({len(resp.content)} bytes)")
    except Exception as exc:
        asset["cache_status"] = "error"
        asset["error"] = str(exc)
        asset["fallback_url"] = url
        print(f"  [{idx}/{total}] {dst.name} → ERROR: {exc}")

    return asset


async def _download_all(
    tasks: list[dict[str, Any]],
    timeout: int,
) -> list[dict[str, Any]]:
    """Download all image tasks with bounded concurrency.

    Creates a single ``httpx.AsyncClient`` whose lifecycle spans the entire
    download batch. Concurrency is capped via ``asyncio.Semaphore``.
    """
    sem = asyncio.Semaphore(_CONCURRENCY)
    total = len(tasks)

    async def _bound(client: httpx.AsyncClient, task: dict[str, Any], idx: int) -> dict[str, Any]:
        async with sem:
            return await _download_one(client, task, idx, total)

    async with httpx.AsyncClient(
        timeout=httpx.Timeout(timeout),
        headers={"User-Agent": _USER_AGENT},
        follow_redirects=True,
    ) as client:
        coros = [_bound(client, t, i) for i, t in enumerate(tasks, start=1)]
        results = await asyncio.gather(*coros)

    return list(results)


def main(argv: list[str] | None = None) -> None:
    asyncio.run(_async_main(argv))


async def _async_main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    ensure_pipeline_dirs()

    # Resolve input --------------------------------------------------------
    input_path: Path
    if args.input is not None:
        input_path = Path(args.input)
    else:
        input_path = _latest_normalized()

    norm = read_json_artifact(input_path)
    posts = norm.get("posts", [])

    # Collect all image tasks ----------------------------------------------
    tasks: list[dict[str, Any]] = []
    for post in posts:
        pid = post.get("reddit_post_id", "?")
        for img in post.get("images") or []:
            tasks.append(
                {
                    "reddit_post_id": pid,
                    "source_url": img["source_url"],
                    "sort_order": img["sort_order"],
                }
            )

    if args.limit is not None:
        tasks = tasks[: args.limit]

    print(
        f"[pipeline:cache_assets] Caching up to {len(tasks)} images from "
        f"{input_path.name}"
    )

    # Download images ------------------------------------------------------
    t0 = time.perf_counter()
    print(f"[pipeline:cache_assets] T0 download start — {len(tasks)} tasks, concurrency={_CONCURRENCY}")

    raw_assets = await _download_all(tasks, args.timeout)

    t1 = time.perf_counter()
    elapsed = t1 - t0
    print(f"[pipeline:cache_assets] T1 download done — {elapsed:.2f}s elapsed")

    # Strip internal markers before writing manifest -----------------------
    on_disk_count = sum(1 for a in raw_assets if a.pop("_on_disk", False))
    assets = raw_assets  # internal keys removed in-place

    # Compute summary ------------------------------------------------------
    cached_count = sum(1 for a in assets if a.get("cache_status") == "cached")
    downloaded_count = cached_count - on_disk_count
    failed_count = sum(1 for a in assets if a.get("cache_status") == "error")

    print(
        f"[pipeline:cache_assets] Done: {cached_count} cached "
        f"({on_disk_count} on-disk, {downloaded_count} downloaded), "
        f"{failed_count} failed, {len(tasks)} attempted"
    )

    # Build output manifest ------------------------------------------------
    slug = timestamp_slug()
    if args.out is None:
        out = working_dir() / f"assets-cache-{slug}.json"
    else:
        out = Path(args.out)

    manifest: dict[str, Any] = {
        "status": "assets_cached",
        "source": "pipeline.cache_assets",
        "cached_at": datetime.now(timezone.utc).isoformat(),
        "normalized_artifact": str(input_path),
        "args": {
            "limit": args.limit,
            "timeout": args.timeout,
            "input": str(input_path),
        },
        "assets": assets,
        "summary": {
            "attempted": len(tasks),
            "cached": cached_count,
            "failed": failed_count,
        },
    }

    write_json_artifact(out, manifest)

    print(f"[pipeline:cache_assets] Manifest written to {out}")


if __name__ == "__main__":
    main()
