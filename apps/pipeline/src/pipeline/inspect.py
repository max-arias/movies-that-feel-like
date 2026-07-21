"""
pipeline.inspect — CLI inspection of processed batches.
Scans data/raw/, data/working/normalized/, and data/working/ for artifacts.
"""

from __future__ import annotations

import json
from pathlib import Path

from pipeline.paths import data_dir, normalized_dir, raw_dir, working_dir


def _summarize(path: Path) -> str:
    """Return a one-line summary string for a JSON artifact."""
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except (json.JSONDecodeError, OSError):
        return "  (unreadable)"

    status = data.get("status", "?")
    source = data.get("source", "?")
    summary = data.get("summary", {})

    if status == "fetched" and source == "arctic_shift":
        post_count = summary.get("post_count", "?")
        tree_count = summary.get("comment_tree_count", "?")
        err_count = summary.get("comment_error_count", "?")
        return (
            f"  status={status} source={source} "
            f"posts={post_count} trees={tree_count} errors={err_count}"
        )

    if status == "normalized" and source == "pipeline.normalize":
        post_count = summary.get("post_count", "?")
        img_count = summary.get("image_count", "?")
        noimg = summary.get("post_without_images_count", "?")
        return (
            f"  status={status} source={source} "
            f"posts={post_count} images={img_count} noimg={noimg}"
        )

    if status == "extraction_dry_run" and source == "pipeline.extract":
        post_count = summary.get("post_count", "?")
        comment_count = summary.get("total_comment_count", "?")
        return (
            f"  status={status} source={source} "
            f"posts={post_count} total_comments={comment_count}"
        )

    if status in ("extracted", "failed") and source == "pipeline.extract":
        success = summary.get("success_count", "?")
        errs = summary.get("error_count", "?")
        recs = summary.get("recommendation_count", "?")
        total = (success if isinstance(success, int) else 0) + (errs if isinstance(errs, int) else 0)
        rate = f"{success / total * 100:.1f}%" if isinstance(success, int) and isinstance(errs, int) and total > 0 else "?"
        highlight = " ⚠️ FAILED" if status == "failed" else ""
        if isinstance(success, int) and isinstance(errs, int) and success == 0 and errs > 0:
            highlight += " ⚠️ ZERO-SUCCESS"
        return (
            f"  status={status}{highlight} source={source} "
            f"success={success} errors={errs} rate={rate} recommendations={recs}"
        )

    if status in ("enriched", "enrichment_dry_run") and source == "pipeline.enrich":
        cand = summary.get("candidate_count", "?")
        parts = f"status={status} source={source} candidates={cand}"
        for key in ("match_count", "unmatched_count", "error_count"):
            if key in summary:
                parts += f" {key}={summary[key]}"
        return parts

    if status in ("loaded", "load_dry_run") and source == "pipeline.load":
        parts = f"status={status} source={source}"
        # "loaded" artifacts use one key set, "load_dry_run" another
        if status == "loaded":
            for key in (
                "posts_seen",
                "posts_publishable",
                "posts_skipped",
                "images_inserted",
                "recommendations_upserted",
                "evidence_inserted",
                "tags_inserted",
                "errors",
            ):
                val = summary.get(key)
                if val is not None:
                    parts += f" {key}={val}"
            seen = summary.get("posts_seen")
            pub = summary.get("posts_publishable")
            if isinstance(seen, int) and isinstance(pub, int) and seen > 0:
                parts += f" publish_rate={pub/seen*100:.1f}%"
        else:  # load_dry_run
            for key in (
                "post_count",
                "publishable",
                "skipped",
                "images",
                "matches",
                "evidence_items",
                "vibe_tags",
            ):
                val = summary.get(key)
                if val is not None:
                    parts += f" {key}={val}"
            pub = summary.get("publishable")
            total = summary.get("post_count")
            if isinstance(pub, int) and isinstance(total, int) and total > 0:
                parts += f" publish_rate={pub/total*100:.1f}%"
        return parts

    # Fallback for placeholders or unknown shapes
    extra = ""
    if "note" in data:
        extra = f" note=\"{data['note']}\""
    return f"  status={status} source={source}{extra}"


def _print_group(label: str, artifacts: list[Path]) -> None:
    """Print a group of artifacts under *label*."""
    print(f"  [{label}]")
    for i, path in enumerate(artifacts, start=1):
        print(f"    {i:>3}. {path.name}")
        summary_line = _summarize(path)
        if summary_line:
            print(f"       {summary_line}")


def main() -> None:
    # raw artifacts
    raw = raw_dir()
    raw_artifacts: list[Path] = []
    if raw.is_dir():
        raw_artifacts = sorted(raw.glob("*.json"))
    print(f"[pipeline:inspect] Found {len(raw_artifacts)} artifact(s) in data/raw/")
    if raw_artifacts:
        _print_group("raw", raw_artifacts)

    # normalized artifacts
    ndir = normalized_dir()
    norm_artifacts: list[Path] = []
    if ndir.is_dir():
        norm_artifacts = sorted(ndir.glob("*.json"))
    print(f"[pipeline:inspect] Found {len(norm_artifacts)} artifact(s) in data/working/normalized/")
    if norm_artifacts:
        _print_group("normalized", norm_artifacts)

    wdir = working_dir()

    # extraction artifacts in working/
    extraction_artifacts: list[Path] = []
    if wdir.is_dir():
        extraction_artifacts = sorted(wdir.glob("extraction-*.json"))
    print(f"[pipeline:inspect] Found {len(extraction_artifacts)} artifact(s) in data/working/ (extraction)")
    if extraction_artifacts:
        _print_group("extraction", extraction_artifacts)

    # enrichment artifacts in working/
    enrichment_artifacts: list[Path] = []
    if wdir.is_dir():
        enrichment_artifacts = sorted(wdir.glob("enrichment-*.json"))
    print(f"[pipeline:inspect] Found {len(enrichment_artifacts)} artifact(s) in data/working/ (enrichment)")
    if enrichment_artifacts:
        _print_group("enrichment", enrichment_artifacts)

    # load artifacts in working/
    load_artifacts: list[Path] = []
    if wdir.is_dir():
        load_artifacts = sorted(wdir.glob("load-*.json"))
    print(f"[pipeline:inspect] Found {len(load_artifacts)} artifact(s) in data/working/ (load)")
    if load_artifacts:
        _print_group("load", load_artifacts)

    # ── DB summary ──────────────────────────────────────────────────────
    db_path = data_dir() / "app.db"
    if db_path.is_file():
        try:
            import sqlite3

            conn = sqlite3.connect(str(db_path))
            conn.execute("PRAGMA journal_mode=WAL")
            tables = [
                "imported_vibe_posts",
                "imported_post_images",
                "recommendations",
                "recommendation_evidence",
                "vibe_tags",
                "processing_runs",
                "pipeline_artifacts",
            ]
            print("[pipeline:inspect] DB counts from app.db:")
            for tbl in tables:
                row = conn.execute(
                    f"SELECT COUNT(*) FROM {tbl}"
                ).fetchone()
                if row:
                    print(f"    {tbl}: {row[0]}")
            conn.close()
        except Exception as exc:
            print(f"    (db read error: {exc})")


if __name__ == "__main__":
    main()
