"""
pipeline.merge_normalized — Combine multiple normalized artifacts into one.

Usage:
    python -m pipeline.merge_normalized \
        data/working/normalized/2020.json \
        data/working/normalized/2024.json \
        data/working/normalized/2025.json \
        data/working/normalized/2026.json \
        --out data/working/normalized/merged-all-years.json

Posts are deduped by ``reddit_post_id`` (first wins). The ``comments_by_post``
dicts are merged (last wins on duplicate key, though keys should be unique per
post). The summary fields are recomputed from the combined data.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import read_json_artifact, write_json_artifact


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Merge multiple normalized artifacts into one.",
    )
    parser.add_argument(
        "inputs",
        nargs="+",
        help="Paths to normalized JSON artifacts to merge",
    )
    parser.add_argument(
        "--out",
        required=True,
        help="Output path for the merged artifact",
    )
    return parser


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    # Read all artifacts ----------------------------------------------------
    artifacts: list[dict[str, Any]] = []
    for path_str in args.inputs:
        path = Path(path_str)
        if not path.exists():
            print(f"[pipeline:merge_normalized] WARNING: {path} does not exist — skipping")
            continue
        artifact = read_json_artifact(path)
        artifacts.append(artifact)

    if not artifacts:
        raise SystemExit("[pipeline:merge_normalized] No input artifacts to merge")

    print(
        f"[pipeline:merge_normalized] Merging {len(artifacts)} artifacts "
        f"({sum(len(a.get('posts', [])) for a in artifacts)} total raw posts)"
    )

    # Merge posts (dedup by reddit_post_id, first wins) --------------------
    seen_ids: set[str] = set()
    merged_posts: list[dict[str, Any]] = []
    duplicates_skipped = 0

    for artifact in artifacts:
        for post in artifact.get("posts", []):
            pid = post.get("reddit_post_id", "")
            if pid in seen_ids:
                duplicates_skipped += 1
                continue
            seen_ids.add(pid)
            merged_posts.append(post)

    # Merge comments_by_post (last wins on duplicate key) ------------------
    merged_comments: dict[str, Any] = {}
    for artifact in artifacts:
        merged_comments.update(artifact.get("comments_by_post", {}))

    # Recompute summary ----------------------------------------------------
    total_images = sum(len(p.get("images") or []) for p in merged_posts)
    posts_without_images = sum(
        1 for p in merged_posts if not p.get("images")
    )

    source_artifacts = [
        str(a.get("raw_artifact", "unknown")) for a in artifacts
    ]

    artifact_out: dict[str, Any] = {
        "status": "normalized",
        "source": "pipeline.merge_normalized",
        "normalized_at": datetime.now(timezone.utc).isoformat(),
        "source_artifacts": source_artifacts,
        "posts": merged_posts,
        "comments_by_post": merged_comments,
        "summary": {
            "post_count": len(merged_posts),
            "image_count": total_images,
            "post_without_images_count": posts_without_images,
            "source_count": len(artifacts),
        },
    }

    out_path = Path(args.out)
    write_json_artifact(out_path, artifact_out)

    # Print summary --------------------------------------------------------
    comment_count = len(merged_comments)
    print(f"[pipeline:merge_normalized] Done:")
    print(f"  Posts:              {len(merged_posts)}")
    print(f"  Images:             {total_images}")
    print(f"  Posts w/o images:   {posts_without_images}")
    print(f"  Comment trees:      {comment_count}")
    print(f"  Source artifacts:   {len(artifacts)}")
    if duplicates_skipped:
        print(f"  Duplicates skipped: {duplicates_skipped}")
    print(f"[pipeline:merge_normalized] Artifact written to {out_path}")


if __name__ == "__main__":
    main()
