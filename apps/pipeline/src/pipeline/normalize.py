"""Convert raw Arctic Shift artifacts into exact source/preview URL records."""

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


def _is_image_url(url: str) -> bool:
    """Rough check if a URL looks like a direct image link."""
    return bool(_IMAGE_EXT_RE.search(url) or _IMAGE_HOST_RE.match(url))


_MIN_PREVIEW_WIDTH = 802


def _smallest_qualifying_preview(image: dict[str, Any]) -> dict[str, Any] | None:
    candidates = [r for r in image.get("resolutions") or [] if isinstance(r, dict)]
    qualifying = []
    for r in candidates:
        width = r.get("x", r.get("width"))
        if isinstance(width, int) and width >= _MIN_PREVIEW_WIDTH and r.get("u", r.get("url")):
            qualifying.append(r)
    return min(qualifying, key=lambda r: r["x"] if "x" in r else r["width"]) if qualifying else None


def _provider_url(value: Any) -> str | None:
    return html.unescape(value) if isinstance(value, str) and value else None


def _provider_dimensions(value: dict[str, Any]) -> tuple[int | None, int | None]:
    width = value.get("x", value.get("width"))
    height = value.get("y", value.get("height"))
    return (width if isinstance(width, int) else None, height if isinstance(height, int) else None)


def _preview_for_metadata(metadata: dict[str, Any]) -> dict[str, Any]:
    selected = _smallest_qualifying_preview({"resolutions": metadata.get("p") or metadata.get("resolutions") or []})
    if not selected:
        return {"preview_url": None}
    width, height = _provider_dimensions(selected)
    return {
        "preview_url": _provider_url(selected.get("u", selected.get("url"))),
        "preview_width": width,
        "preview_height": height,
    }


def _extract_preview_images(post: dict[str, Any]) -> list[dict[str, Any]]:
    """Extract source/preview pairs from preview metadata in provider order."""
    urls: list[dict[str, Any]] = []
    preview = post.get("preview")
    if not preview:
        return urls
    for img in preview.get("images") or []:
        selected = _smallest_qualifying_preview(img)
        if selected:
            source = img.get("source") or {}
            source_url = _provider_url(source.get("u", source.get("url")))
            preview = _preview_for_metadata(img)
            media_id = img.get("media_id", img.get("id")) or source.get("media_id", source.get("id"))
            urls.append({"source_url": source_url, "media_id": media_id, **preview})
        else:
            source_url = _provider_url((img.get("source") or {}).get("u", (img.get("source") or {}).get("url")))
            if source_url:
                urls.append({"source_url": source_url, "preview_url": None})
    return urls


def _extract_post_url(post: dict[str, Any]) -> list[str]:
    """Extract image URLs from ``post.url`` or ``url_overridden_by_dest``."""
    urls: list[str] = []
    for key in ("url", "url_overridden_by_dest"):
        val = post.get(key)
        if val and _is_image_url(val):
            decoded = _provider_url(val)
            if decoded:
                urls.append(decoded)
    return urls


def _extract_gallery_images(post: dict[str, Any]) -> list[dict[str, Any]]:
    """Join gallery order to metadata by media_id, never by dict order."""
    metadata = post.get("media_metadata") or {}
    items = (post.get("gallery_data") or {}).get("items") or []
    records: list[dict[str, Any]] = []
    for gallery_item in items:
        media_id = gallery_item.get("media_id")
        item = metadata.get(media_id) or metadata.get(str(media_id))
        if not isinstance(item, dict):
            continue
        if item.get("status") != "valid" or item.get("e") != "Image":
            continue
        s = item.get("s") or {}
        u = _provider_url(s.get("u", s.get("url")))
        if u:
            source_url = u
        else:
            # A source-less provider record is not an image record.
            continue
        records.append({"source_url": source_url, **_preview_for_metadata(item)})
    return records


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

    def add_records(
        images: list[dict[str, Any]], kind: str, source_post_id: str | None = None
    ) -> None:
        for image in images:
            url = image.get("source_url")
            if not isinstance(url, str) or not url:
                continue
            if url in seen:
                continue
            seen.add(url)
            records.append({"source_url": url, "sort_order": len(records), "kind": kind,
                            **({"source_post_id": source_post_id} if source_post_id else {}),
                            **{k: v for k, v in image.items() if k != "source_url"}})

    def attach_direct_previews(previews: list[dict[str, Any]]) -> None:
        # Direct Reddit posts normally have one media item. When media IDs are
        # present, use them; otherwise cardinality must make the association
        # unambiguous. Never compare or rewrite signed URLs to join records.
        if len(records) == 1 and len(previews) == 1:
            records[0].update({k: v for k, v in previews[0].items() if k not in {"source_url", "media_id"}})
        elif len(records) == len(previews) and len({p.get("media_id") for p in previews}) == len(previews) and all(p.get("media_id") for p in previews):
            for record, preview in zip(records, previews):
                record.update({k: v for k, v in preview.items() if k not in {"source_url", "media_id"}})
        else:
            for record in records:
                record.setdefault("preview_url", None)

    gallery_urls = _extract_gallery_images(post)
    post_urls = _extract_post_url(post)
    preview_images = _extract_preview_images(post)

    # Gallery posts: use gallery source URLs only. Do not add preview variants.
    if gallery_urls:
        add_records(gallery_urls, "reddit_gallery_source")
        return records

    # Direct image posts: prefer the source/original post URL over preview URLs.
    if post_urls:
        add_records([{"source_url": url} for url in post_urls], "reddit_source")
        attach_direct_previews(preview_images)
        return records

    # Preview-only fallback: use the source field from Reddit preview,
    # still excluding the smaller resolutions array.
    if preview_images:
        for preview in preview_images:
            source_url = preview["source_url"]
            add_records([preview], "reddit_preview_source")
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
            add_records(parent_gallery, "reddit_crosspost_gallery", parent_id)
            return records

        parent_post_urls = _extract_post_url(parent)
        if parent_post_urls:
            add_records([{"source_url": url} for url in parent_post_urls], "reddit_crosspost_source", parent_id)
            attach_direct_previews(_extract_preview_images(parent))
            return records

        parent_preview = _extract_preview_images(parent)
        if parent_preview:
            for preview in parent_preview:
                add_records([preview], "reddit_crosspost_preview", parent_id)
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
        "source_url": _provider_url(post.get("url_overridden_by_dest") or post.get("url", "")) or "",
        "over_18": bool(post.get("over_18", False)),
        "spoiler": bool(post.get("spoiler", False)),
        "images": images,
        "raw_artifact": raw_artifact_path,
    }


def _read_excluded_reddit_ids(path: Path) -> set[str]:
    """Read Reddit post IDs to exclude from a newline-delimited file."""
    try:
        lines = path.read_text(encoding="utf-8").splitlines()
    except FileNotFoundError as exc:
        raise SystemExit(
            f"[pipeline:normalize] Exclusion file does not exist: {path}"
        ) from exc
    except OSError as exc:
        raise SystemExit(
            f"[pipeline:normalize] Could not read exclusion file {path}: {exc}"
        ) from exc

    return {line.strip() for line in lines if line.strip()}


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
    parser.add_argument(
        "--exclude-reddit-ids-file",
        default=None,
        help="Path to a newline-delimited set of Reddit post IDs to exclude",
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

    excluded_ids: set[str] = set()
    if args.exclude_reddit_ids_file is not None:
        excluded_ids = _read_excluded_reddit_ids(Path(args.exclude_reddit_ids_file))

    # Exclude against the raw Reddit ID before normalization so the source
    # post and its corresponding comment tree cannot enter the artifact.
    posts = [post for post in raw_posts if post.get("id") not in excluded_ids]
    excluded_count = len(raw_posts) - len(posts)

    print(
        f"[pipeline:normalize] Processing {len(posts)} posts from {raw_path.name}"
        + (f" ({excluded_count} excluded)" if excluded_count else "")
    )

    # Normalize each post --------------------------------------------------
    normalized_posts = [
        _normalize_post(p, str(raw_path)) for p in posts
    ]

    comments_by_post = raw_artifact.get("comments_by_post", {})
    if excluded_ids:
        included_comment_keys = {f"t3_{post.get('id')}" for post in posts}
        comments_by_post = {
            key: value
            for key, value in comments_by_post.items()
            if key in included_comment_keys
        }

    # Count images ---------------------------------------------------------
    total_images = sum(len(p["images"]) for p in normalized_posts)
    posts_without_images = sum(
        1 for p in normalized_posts if not p["images"]
    )

    # Build output artifact ------------------------------------------------
    embedded_outcomes = raw_artifact.get("refetch_outcomes")
    if not isinstance(embedded_outcomes, dict):
        embedded_outcomes = {
            "outcomes": [
                {"reddit_post_id": post.get("id"), "attempted": True, "status": "success"}
                for post in raw_posts if post.get("id")
            ]
        }
    artifact: dict[str, Any] = {
        "status": "normalized",
        "source": "pipeline.normalize",
        "normalized_at": datetime.now(timezone.utc).isoformat(),
        "raw_artifact": str(raw_path),
        "refetch_outcomes": embedded_outcomes,
        "posts": normalized_posts,
        "comments_by_post": comments_by_post,
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
