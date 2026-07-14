"""
pipeline.normalize — Convert raw Arctic Shift artifacts into normalized records
with deduplicated original/source image URLs (no preview resolutions).
"""

from __future__ import annotations

import argparse
import html
import re
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.paths import ensure_pipeline_dirs, normalized_dir, raw_dir

_IMAGE_EXT_RE = re.compile(r"\.(jpe?g|png|webp|gif)(\?|$)", re.IGNORECASE)
_IMAGE_HOST_RE = re.compile(r"^https?://(i\.)?redd\.it/", re.IGNORECASE)


def _decode(url: str) -> str:
    """Decode HTML entities in a URL."""
    return html.unescape(url)


def _is_image_url(url: str) -> bool:
    """Rough check if a URL looks like a direct image link."""
    return bool(_IMAGE_EXT_RE.search(url) or _IMAGE_HOST_RE.match(url))


def _extract_preview_images(post: dict[str, Any]) -> list[str]:
    """Extract source URLs from ``preview.images[*].source.url``.

    This captures the best-quality preview variant but still excludes
    the ``resolutions`` array (smaller size variants).
    """
    urls: list[str] = []
    preview = post.get("preview")
    if not preview:
        return urls
    for img in preview.get("images") or []:
        src = img.get("source") or {}
        url = src.get("url")
        if url:
            urls.append(_decode(url))
    return urls


def _extract_post_url(post: dict[str, Any]) -> list[str]:
    """Extract image URLs from ``post.url`` or ``url_overridden_by_dest``."""
    urls: list[str] = []
    for key in ("url", "url_overridden_by_dest"):
        val = post.get(key)
        if val and _is_image_url(val):
            urls.append(_decode(val))
    return urls


def _extract_gallery_images(post: dict[str, Any]) -> list[str]:
    """Extract source image URLs from gallery ``media_metadata``.

    Prefers ``s.u`` (the source/original-like field). Falls back to
    ``p[-1].u`` (largest resolution variant) only if ``s`` is absent.
    Never includes the full ``p`` resolution array.
    """
    urls: list[str] = []
    mm = post.get("media_metadata")
    if not mm:
        return urls
    for item in mm.values():
        if item.get("status") != "valid" and item.get("e") != "Image":
            continue
        s = item.get("s") or {}
        u = s.get("u")
        if u:
            urls.append(_decode(u))
        else:
            # fallback: use the last (largest) resolution variant
            p = item.get("p") or []
            if p:
                urls.append(_decode(p[-1]["u"]))
    return urls


def _collect_images(post: dict[str, Any]) -> list[dict[str, Any]]:
    """Collect deduplicated image records from a single post.

    Returns a list of ``{source_url, sort_order, kind, source_post_id?, width?, height?}``
    preserving insertion order while keeping only original/source image URLs.

    If the post itself carries no usable images (typical for Reddit crossposts
    that just point at a parent gallery), fall back to the first entry in
    ``crosspost_parent_list`` so the imported post can still be published
    with its original images.
    """
    seen: set[str] = set()
    records: list[dict[str, Any]] = []

    def add_urls(
        urls: list[str], kind: str, source_post_id: str | None = None
    ) -> None:
        for url in urls:
            if url in seen:
                continue
            seen.add(url)
            records.append(
                {
                    "source_url": url,
                    "sort_order": len(records),
                    "kind": kind,
                    **({"source_post_id": source_post_id} if source_post_id else {}),
                }
            )

    gallery_urls = _extract_gallery_images(post)
    post_urls = _extract_post_url(post)
    preview_urls = _extract_preview_images(post)

    # Gallery posts: use gallery source URLs only. Do not add preview variants.
    if gallery_urls:
        add_urls(gallery_urls, "reddit_gallery_source")
        return records

    # Direct image posts: prefer the source/original post URL over preview URLs.
    if post_urls:
        add_urls(post_urls, "reddit_source")
        return records

    # Preview-only fallback: use the source field from Reddit preview,
    # still excluding the smaller resolutions array.
    if preview_urls:
        add_urls(preview_urls, "reddit_preview_source")
        return records

    # Crosspost fallback: if the post itself has no images, but the
    # archive includes the original parent post, try to reuse the
    # parent's gallery / direct image / preview images. Without this,
    # every crosspost would land in the site with no pictures.
    parents = post.get("crosspost_parent_list") or []
    if parents:
        parent = parents[0] or {}
        parent_id = parent.get("id")
        parent_gallery = _extract_gallery_images(parent)
        if parent_gallery:
            add_urls(parent_gallery, "reddit_crosspost_gallery", parent_id)
            return records

        parent_post_urls = _extract_post_url(parent)
        if parent_post_urls:
            add_urls(parent_post_urls, "reddit_crosspost_source", parent_id)
            return records

        parent_preview = _extract_preview_images(parent)
        if parent_preview:
            add_urls(parent_preview, "reddit_crosspost_preview", parent_id)
            return records

    return records


def _normalize_post(
    post: dict[str, Any], raw_artifact_path: str
) -> dict[str, Any]:
    """Convert a single raw post dict into a normalized record."""
    images = _collect_images(post)
    return {
        "reddit_post_id": post.get("id", ""),
        "title": post.get("title", ""),
        "selftext": post.get("selftext", ""),
        "subreddit": post.get("subreddit", ""),
        "author": post.get("author", ""),
        "created_utc": post.get("created_utc"),
        "score": post.get("score"),
        "num_comments": post.get("num_comments"),
        "permalink": post.get("permalink", ""),
        "source_url": post.get("url", ""),
        "over_18": bool(post.get("over_18", False)),
        "spoiler": bool(post.get("spoiler", False)),
        "images": images,
        "raw_artifact": raw_artifact_path,
    }


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Normalize a raw Arctic Shift artifact into clean records.",
    )
    parser.add_argument(
        "--input",
        default=None,
        help="Path to raw JSON artifact (default: latest data/raw/ artifact)",
    )
    parser.add_argument(
        "--latest",
        action="store_true",
        default=True,
        help="Use latest raw artifact if --input omitted (default: true)",
    )
    parser.add_argument(
        "--out",
        default=None,
        help="Output path (default: data/working/normalized/normalized-{stem}-{timestamp}.json)",
    )
    return parser


def _latest_raw() -> Path:
    """Return the most recent ``*.json`` in data/raw/."""
    candidates = sorted(raw_dir().glob("*.json"))
    if not candidates:
        raise SystemExit(
            "[pipeline:normalize] No raw artifacts found in data/raw/ — run fetch first"
        )
    return candidates[-1]


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    ensure_pipeline_dirs()

    # Resolve input path ---------------------------------------------------
    raw_path: Path
    if args.input is not None:
        raw_path = Path(args.input)
    elif args.latest:
        raw_path = _latest_raw()
    else:
        raise SystemExit(
            "[pipeline:normalize] Either provide --input or keep --latest"
        )

    raw_artifact = read_json_artifact(raw_path)
    raw_posts = raw_artifact.get("posts", [])
    raw_stem = raw_path.stem

    print(f"[pipeline:normalize] Processing {len(raw_posts)} posts from {raw_path.name}")

    # Normalize each post --------------------------------------------------
    normalized_posts = [
        _normalize_post(p, str(raw_path)) for p in raw_posts
    ]

    # Count images ---------------------------------------------------------
    total_images = sum(len(p["images"]) for p in normalized_posts)
    posts_without_images = sum(
        1 for p in normalized_posts if not p["images"]
    )

    # Build output artifact ------------------------------------------------
    artifact: dict[str, Any] = {
        "status": "normalized",
        "source": "pipeline.normalize",
        "normalized_at": datetime.now(timezone.utc).isoformat(),
        "raw_artifact": str(raw_path),
        "posts": normalized_posts,
        "comments_by_post": raw_artifact.get("comments_by_post", {}),
        "summary": {
            "post_count": len(normalized_posts),
            "image_count": total_images,
            "post_without_images_count": posts_without_images,
        },
    }

    slug = timestamp_slug()
    if args.out is None:
        out = normalized_dir() / f"normalized-{raw_stem}-{slug}.json"
    else:
        out = Path(args.out)

    write_json_artifact(out, artifact)

    print(
        f"[pipeline:normalize] Done: {len(normalized_posts)} posts, "
        f"{total_images} images, "
        f"{posts_without_images} posts without images"
    )
    print(f"[pipeline:normalize] Artifact written to {out}")


if __name__ == "__main__":
    main()
