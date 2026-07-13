"""
pipeline.load — Merge normalized / assets / extraction / enrichment artifacts
and write publishable records into a local D1-compatible SQLite database.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sqlite3
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.paths import ensure_pipeline_dirs, normalized_dir, working_dir

# ── Helpers ────────────────────────────────────────────────────────────


def _normalize_title(title: str) -> str:
    return re.sub(r"\s+", " ", title.strip().lower())


def _candidate_key(title: str, year: int | None, media_type: str) -> str:
    return f"{_normalize_title(title)}|{year or ''}|{media_type}"


def _latest_normalized() -> Path:
    candidates = sorted(normalized_dir().glob("*.json"))
    if not candidates:
        raise SystemExit("[pipeline:load] No normalized artifacts found")
    return candidates[-1]


def _latest_assets() -> Path:
    candidates = sorted(working_dir().glob("assets-cache-*.json"))
    if not candidates:
        raise SystemExit("[pipeline:load] No assets-cache artifacts found")
    return candidates[-1]


def _latest_extraction() -> Path:
    candidates = sorted(working_dir().glob("extraction-*.json"))
    real = [p for p in candidates if "dry-run" not in p.stem]
    if not real:
        raise SystemExit("[pipeline:load] No real extraction artifacts found")
    return real[-1]


def _latest_enrichment() -> Path:
    candidates = sorted(working_dir().glob("enrichment-*.json"))
    real = [p for p in candidates if "dry-run" not in p.stem]
    if not real:
        raise SystemExit("[pipeline:load] No real enrichment artifacts found")
    return real[-1]


# ── Schema ─────────────────────────────────────────────────────────────


def _execute_schema(db: sqlite3.Connection, schema_path: Path) -> None:
    sql = schema_path.read_text(encoding="utf-8")
    db.executescript(sql)
    db.commit()


# ── Merge index builder ────────────────────────────────────────────────


def _build_merge_index(
    norm: dict[str, Any],
    assets: dict[str, Any],
    extraction: dict[str, Any],
    enrichment: dict[str, Any],
) -> dict[str, Any]:
    """Build cross-referenced indices from all source artifacts."""
    idx: dict[str, Any] = {}

    # Normalized posts
    idx["posts_by_id"] = {p["reddit_post_id"]: p for p in norm.get("posts", [])}

    # Assets by reddit_post_id
    assets_by_post: dict[str, list[dict[str, Any]]] = {}
    for a in assets.get("assets", []):
        pid = a.get("reddit_post_id", "")
        assets_by_post.setdefault(pid, []).append(a)
    idx["assets_by_post"] = assets_by_post

    # Extraction results by reddit_post_id
    idx["extraction_by_post"] = {
        r["reddit_post_id"]: r for r in extraction.get("results", [])
    }

    # Enrichment matches by candidate_key
    idx["enrich_match_by_key"] = {
        m["candidate_key"]: m for m in enrichment.get("matches", [])
    }

    # Enrichment candidates by candidate_key (for evidence/linking metadata)
    idx["enrich_candidate_by_key"] = {
        c["candidate_key"]: c for c in enrichment.get("candidates", [])
    }

    # All reddit_post_ids from normalized
    idx["all_post_ids"] = sorted(idx["posts_by_id"].keys())

    return idx


# ── DB operations ─────────────────────────────────────────────────────


def _upsert_post(
    db: sqlite3.Connection,
    post: dict[str, Any],
    extraction_result: dict[str, Any] | None,
    has_images: bool,
    match_count_for_post: int,
) -> int:
    """Insert or update an imported_vibe_posts row. Returns row id."""
    pid = post["reddit_post_id"]
    vibe = (extraction_result or {}).get("vibe") or {}
    vibe_summary = vibe.get("summary")
    permalink = post.get("permalink", "")

    # Determine status
    if (
        has_images
        and vibe_summary
        and match_count_for_post > 0
        and permalink
    ):
        status = "publishable"
        error_info = None
    else:
        status = "skipped"
        reasons: list[str] = []
        if not has_images:
            reasons.append("no usable images")
        if not vibe_summary:
            reasons.append("no vibe summary")
        if match_count_for_post == 0:
            reasons.append("no enriched recommendation matches")
        if not permalink:
            reasons.append("no permalink")
        error_info = "; ".join(reasons)

    db.execute(
        """INSERT INTO imported_vibe_posts
           (reddit_post_id, title, cleaned_title, selftext, author,
            created_utc, permalink, url, subreddit,
            vibe_summary, status, error_info)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
           ON CONFLICT(reddit_post_id) DO UPDATE SET
               title=excluded.title,
               cleaned_title=excluded.cleaned_title,
               selftext=excluded.selftext,
               author=excluded.author,
               created_utc=excluded.created_utc,
               permalink=excluded.permalink,
               url=excluded.url,
               subreddit=excluded.subreddit,
               vibe_summary=excluded.vibe_summary,
               status=excluded.status,
               error_info=excluded.error_info,
               updated_at=datetime('now')""",
        (
            pid,
            post.get("title", ""),
            (extraction_result or {}).get("cleaned_title"),
            post.get("selftext"),
            post.get("author"),
            post.get("created_utc"),
            permalink,
            post.get("source_url"),
            post.get("subreddit", "MoviesThatFeelLike"),
            vibe_summary,
            status,
            error_info,
        ),
    )
    row = db.execute(
        "SELECT id FROM imported_vibe_posts WHERE reddit_post_id = ?", (pid,)
    ).fetchone()
    return row[0]


def _upsert_images(
    db: sqlite3.Connection,
    post_id: int,
    reddit_post_id: str,
    post: dict[str, Any],
    assets_for_post: list[dict[str, Any]],
) -> int:
    """Delete existing images for the post and re-insert from normalized + assets.

    Returns the count of images inserted.
    """
    db.execute(
        "DELETE FROM imported_post_images WHERE imported_vibe_post_id = ?",
        (post_id,),
    )

    # Build a lookup: source_url -> asset info
    asset_by_url: dict[str, dict[str, Any]] = {}
    for a in assets_for_post:
        asset_by_url[a.get("source_url", "")] = a

    count = 0
    for img in post.get("images", []):
        source_url = img.get("source_url", "")
        asset = asset_by_url.get(source_url, {})
        cache_status_raw = asset.get("cache_status", "")
        # Map cache_status from assets-cache to schema enum
        cache_status_map = {
            "cached": "cached",
            "error": "failed",
        }
        cache_status = cache_status_map.get(cache_status_raw, "pending")
        cache_path = asset.get("cache_path", "")

        db.execute(
            """INSERT INTO imported_post_images
               (imported_vibe_post_id, url, cache_key, cache_status,
                remote_url, sort_order)
               VALUES (?, ?, ?, ?, ?, ?)""",
            (
                post_id,
                source_url,
                cache_path,
                cache_status,
                source_url,  # remote_url fallback = source_url
                img.get("sort_order", 0),
            ),
        )
        count += 1

    return count


def _upsert_recommendation(
    db: sqlite3.Connection, match: dict[str, Any]
) -> int:
    """Insert or update a recommendations row by tmdb_id+media_type.

    Returns the recommendation row id.
    """
    tmdb_id = match.get("tmdb_id")
    media_type = match.get("media_type", "movie")

    # Check if existing
    existing = db.execute(
        "SELECT id FROM recommendations WHERE tmdb_id = ? AND media_type = ?",
        (tmdb_id, media_type),
    ).fetchone()
    if existing:
        rec_id = existing[0]
        db.execute(
            """UPDATE recommendations SET
               title=?, original_title=?, release_year=?,
               poster_url=?, backdrop_url=?, overview=?,
               popularity=?, vote_average=?, tmdb_data=?,
               imdb_id=?, is_ambiguous=0,
               updated_at=datetime('now')
               WHERE id=?""",
            (
                match.get("title", ""),
                match.get("original_title"),
                match.get("release_year"),
                match.get("poster_url"),
                match.get("backdrop_url"),
                match.get("overview"),
                match.get("popularity"),
                match.get("vote_average"),
                json.dumps(match.get("raw_result", {})),
                match.get("imdb_id"),
                rec_id,
            ),
        )
        return rec_id

    db.execute(
        """INSERT INTO recommendations
           (tmdb_id, imdb_id, title, original_title, media_type,
            release_year, poster_url, backdrop_url, overview,
            tmdb_data, popularity, vote_average)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
        (
            tmdb_id,
            match.get("imdb_id"),
            match.get("title", ""),
            match.get("original_title"),
            media_type,
            match.get("release_year"),
            match.get("poster_url"),
            match.get("backdrop_url"),
            match.get("overview"),
            json.dumps(match.get("raw_result", {})),
            match.get("popularity"),
            match.get("vote_average"),
        ),
    )
    return db.execute("SELECT last_insert_rowid()").fetchone()[0]


def _insert_evidence(
    db: sqlite3.Connection,
    imported_vibe_post_id: int,
    recommendation_id: int,
    evidence_list: list[dict[str, Any]],
) -> int:
    """Insert evidence records, skipping on unique constraint violation.

    Returns count inserted.
    """
    count = 0
    for ev in evidence_list:
        comment_id = ev.get("comment_id")
        if not comment_id:
            continue
        try:
            db.execute(
                """INSERT OR IGNORE INTO recommendation_evidence
                   (recommendation_id, imported_vibe_post_id,
                    evidence_comment_id, extracted_text,
                    confidence, is_primary)
                   VALUES (?, ?, ?, ?, ?, ?)""",
                (
                    recommendation_id,
                    imported_vibe_post_id,
                    comment_id,
                    ev.get("extracted_text", ""),
                    ev.get("confidence"),
                    0,
                ),
            )
            if db.total_changes > 0:
                count += 1
        except sqlite3.IntegrityError:
            pass
    return count


def _insert_vibe_tags(
    db: sqlite3.Connection,
    imported_vibe_post_id: int,
    tags: list[str],
) -> int:
    """Insert vibe tags, skipping on unique constraint violation."""
    count = 0
    for tag in tags:
        if not tag:
            continue
        try:
            db.execute(
                """INSERT OR IGNORE INTO vibe_tags
                   (imported_vibe_post_id, tag, source)
                   VALUES (?, ?, 'extraction')""",
                (imported_vibe_post_id, tag),
            )
            if db.total_changes > 0:
                count += 1
        except sqlite3.IntegrityError:
            pass
    return count


# ── CLI ────────────────────────────────────────────────────────────────


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Load merged pipeline artifacts into a local SQLite database.",
    )
    parser.add_argument(
        "--db",
        default=None,
        help="Path to SQLite database (default: data/app.db)",
    )
    parser.add_argument(
        "--normalized",
        default=None,
        help="Path to normalized artifact (default: latest)",
    )
    parser.add_argument(
        "--assets",
        default=None,
        help="Path to assets-cache artifact (default: latest)",
    )
    parser.add_argument(
        "--extraction",
        default=None,
        help="Path to extraction artifact (default: latest real)",
    )
    parser.add_argument(
        "--enrichment",
        default=None,
        help="Path to enrichment artifact (default: latest real)",
    )
    parser.add_argument(
        "--reset",
        action="store_true",
        help="Delete database file before applying schema",
    )
    parser.add_argument(
        "--schema",
        default=None,
        help="Path to DDL schema SQL file (default: packages/db/migrations/0001_initial.sql)",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Merge and validate only — do not write to database",
    )
    parser.add_argument(
        "--out",
        default=None,
        help="Output manifest path (default: data/working/load-{timestamp}.json)",
    )
    parser.add_argument(
        "--sql-out",
        default=None,
        help="Path to write generated SQL file for D1 (e.g. wrangler d1 execute --file)",
    )
    return parser


# ── Main ───────────────────────────────────────────────────────────────


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    ensure_pipeline_dirs()

    # Resolve source artifacts --------------------------------------------
    from pipeline.paths import project_root

    root = project_root()

    norm_path = Path(args.normalized) if args.normalized else _latest_normalized()
    assets_path = Path(args.assets) if args.assets else _latest_assets()
    ext_path = Path(args.extraction) if args.extraction else _latest_extraction()
    enrich_path = (
        Path(args.enrichment) if args.enrichment else _latest_enrichment()
    )

    db_path = Path(args.db) if args.db else root / "data" / "app.db"
    schema_path = (
        Path(args.schema)
        if args.schema
        else root / "packages" / "db" / "migrations" / "0001_initial.sql"
    )

    print(f"[pipeline:load] Normalized:  {norm_path.name}")
    print(f"[pipeline:load] Assets:      {assets_path.name}")
    print(f"[pipeline:load] Extraction:  {ext_path.name}")
    print(f"[pipeline:load] Enrichment:  {enrich_path.name}")
    print(f"[pipeline:load] DB:          {db_path}")
    print(f"[pipeline:load] Dry-run:     {args.dry_run}")

    # Read all artifacts --------------------------------------------------
    norm = read_json_artifact(norm_path)
    assets = read_json_artifact(assets_path)
    extraction = read_json_artifact(ext_path)
    enrichment = read_json_artifact(enrich_path)

    # Build merge index ---------------------------------------------------
    idx = _build_merge_index(norm, assets, extraction, enrichment)
    post_ids = idx["all_post_ids"]
    posts_by_id = idx["posts_by_id"]
    assets_by_post = idx["assets_by_post"]
    extraction_by_post = idx["extraction_by_post"]
    enrich_match_by_key = idx["enrich_match_by_key"]
    enrich_candidate_by_key = idx["enrich_candidate_by_key"]

    print(f"[pipeline:load] Found {len(post_ids)} post(s) to process")

    # ── Dry-run: build preview ──────────────────────────────────────────
    if args.dry_run:
        preview_posts: list[dict[str, Any]] = []
        total_images = 0
        total_recs = 0
        total_evidence = 0
        total_vibe = 0

        for pid in post_ids:
            post = posts_by_id[pid]
            ext_result = extraction_by_post.get(pid)

            # Count matches for this post (by candidate_key from extraction)
            match_count = 0
            evidence_count = 0
            if ext_result:
                for rec in ext_result.get("recommendations", []):
                    key = _candidate_key(
                        rec.get("title", ""),
                        rec.get("year"),
                        rec.get("media_type", "unknown"),
                    )
                    if key in enrich_match_by_key:
                        match_count += 1
                        evidence_count += len(rec.get("evidence", []))

            has_images = len(post.get("images", [])) > 0
            vibe = (ext_result or {}).get("vibe") or {}
            tags = vibe.get("tags", [])
            vibe_has = bool(vibe.get("summary"))

            will_publish = has_images and vibe_has and match_count > 0 and bool(post.get("permalink"))

            preview_posts.append(
                {
                    "reddit_post_id": pid,
                    "title": post.get("title", ""),
                    "images": len(post.get("images", [])),
                    "has_vibe": vibe_has,
                    "vibe_tags": tags,
                    "match_count": match_count,
                    "evidence_count": evidence_count,
                    "has_permalink": bool(post.get("permalink")),
                    "will_publish": will_publish,
                }
            )
            total_images += len(post.get("images", []))
            total_recs += match_count
            total_evidence += evidence_count
            total_vibe += len(tags)

        dry_run_summary = {
            "post_count": len(post_ids),
            "publishable": sum(1 for p in preview_posts if p["will_publish"]),
            "skipped": sum(1 for p in preview_posts if not p["will_publish"]),
            "images": total_images,
            "matches": total_recs,
            "evidence_items": total_evidence,
            "vibe_tags": total_vibe,
        }

        slug = timestamp_slug()
        if args.out is None:
            out = working_dir() / f"load-dry-run-{slug}.json"
        else:
            out = Path(args.out)

        write_json_artifact(
            out,
            {
                "status": "load_dry_run",
                "source": "pipeline.load",
                "created_at": datetime.now(timezone.utc).isoformat(),
                "db_path": str(db_path),
                "normalized_artifact": str(norm_path),
                "assets_artifact": str(assets_path),
                "extraction_artifact": str(ext_path),
                "enrichment_artifact": str(enrich_path),
                "args": {"dry_run": True, "reset": args.reset},
                "posts_preview": preview_posts,
                "summary": dry_run_summary,
            },
        )

        print(
            f"[pipeline:load] Dry-run: {dry_run_summary['publishable']} publishable, "
            f"{dry_run_summary['skipped']} skipped"
        )
        print(f"[pipeline:load] Artifact written to {out}")
        return

    # ── Real load ───────────────────────────────────────────────────────
    if args.reset and db_path.exists():
        db_path.unlink()
        print(f"[pipeline:load] Removed existing database")

    db_exists = db_path.exists()

    db = sqlite3.connect(str(db_path))
    db.execute("PRAGMA journal_mode=WAL")
    db.execute("PRAGMA foreign_keys=ON")

    try:
        if not db_exists or args.reset:
            _execute_schema(db, schema_path)
            print(f"[pipeline:load] Schema applied from {schema_path.name}")

        # Process each post
        posts_seen = 0
        posts_publishable = 0
        posts_skipped = 0
        images_inserted = 0
        recommendations_upserted = 0
        evidence_inserted = 0
        tags_inserted = 0
        errors: list[dict[str, Any]] = []

        for pid in post_ids:
            post = posts_by_id[pid]
            ext_result = extraction_by_post.get(pid)
            asset_list = assets_by_post.get(pid, [])
            posts_seen += 1

            # Count matchable recommendations for this post
            rec_match_ids: list[int] = []
            match_count_for_post = 0
            if ext_result:
                for rec in ext_result.get("recommendations", []):
                    key = _candidate_key(
                        rec.get("title", ""),
                        rec.get("year"),
                        rec.get("media_type", "unknown"),
                    )
                    match = enrich_match_by_key.get(key)
                    if match:
                        match_count_for_post += 1
                        try:
                            rec_id = _upsert_recommendation(db, match)
                            rec_match_ids.append(rec_id)
                        except Exception as exc:
                            errors.append(
                                {
                                    "reddit_post_id": pid,
                                    "stage": "upsert_recommendation",
                                    "title": rec.get("title"),
                                    "error": str(exc),
                                }
                            )

            has_images = len(post.get("images", [])) > 0

            try:
                post_row_id = _upsert_post(
                    db,
                    post,
                    ext_result,
                    has_images,
                    match_count_for_post,
                )
            except Exception as exc:
                errors.append(
                    {
                        "reddit_post_id": pid,
                        "stage": "upsert_post",
                        "error": str(exc),
                    }
                )
                continue

            # Check final status
            row = db.execute(
                "SELECT status FROM imported_vibe_posts WHERE id = ?",
                (post_row_id,),
            ).fetchone()
            if row and row[0] == "publishable":
                posts_publishable += 1
            else:
                posts_skipped += 1

            # Images
            try:
                img_count = _upsert_images(
                    db, post_row_id, pid, post, asset_list
                )
                images_inserted += img_count
            except Exception as exc:
                errors.append(
                    {
                        "reddit_post_id": pid,
                        "stage": "upsert_images",
                        "error": str(exc),
                    }
                )

            # Vibe tags
            if ext_result:
                vibe = ext_result.get("vibe") or {}
                tags = vibe.get("tags", [])
                try:
                    tags_inserted += _insert_vibe_tags(
                        db, post_row_id, tags
                    )
                except Exception as exc:
                    errors.append(
                        {
                            "reddit_post_id": pid,
                            "stage": "insert_vibe_tags",
                            "error": str(exc),
                        }
                    )

            # Evidence linking
            if ext_result:
                for rec in ext_result.get("recommendations", []):
                    key = _candidate_key(
                        rec.get("title", ""),
                        rec.get("year"),
                        rec.get("media_type", "unknown"),
                    )
                    match = enrich_match_by_key.get(key)
                    if not match:
                        continue
                    # Find the recommendation_id that was just upserted
                    rec_row = db.execute(
                        "SELECT id FROM recommendations WHERE tmdb_id = ? AND media_type = ?",
                        (match["tmdb_id"], match["media_type"]),
                    ).fetchone()
                    if not rec_row:
                        continue
                    rec_db_id = rec_row[0]
                    try:
                        evidence_inserted += _insert_evidence(
                            db,
                            post_row_id,
                            rec_db_id,
                            rec.get("evidence", []),
                        )
                    except Exception as exc:
                        errors.append(
                            {
                                "reddit_post_id": pid,
                                "stage": "insert_evidence",
                                "title": rec.get("title"),
                                "error": str(exc),
                            }
                        )

        db.commit()

        # Summary
        recommendations_upserted = len(
            set(
                r[0]
                for r in db.execute(
                    "SELECT id FROM recommendations"
                ).fetchall()
            )
        )

        slug = timestamp_slug()
        if args.out is None:
            out = working_dir() / f"load-{slug}.json"
        else:
            out = Path(args.out)

        manifest: dict[str, Any] = {
            "status": "loaded",
            "source": "pipeline.load",
            "loaded_at": datetime.now(timezone.utc).isoformat(),
            "db_path": str(db_path),
            "normalized_artifact": str(norm_path),
            "assets_artifact": str(assets_path),
            "extraction_artifact": str(ext_path),
            "enrichment_artifact": str(enrich_path),
            "summary": {
                "posts_seen": posts_seen,
                "posts_publishable": posts_publishable,
                "posts_skipped": posts_skipped,
                "images_inserted": images_inserted,
                "recommendations_upserted": recommendations_upserted,
                "evidence_inserted": evidence_inserted,
                "tags_inserted": tags_inserted,
                "errors": len(errors),
            },
            "errors": errors,
        }

        write_json_artifact(out, manifest)

        # ── SQL dump for D1 ──────────────────────────────────────────
        if args.sql_out:
            sql_out_path = Path(args.sql_out)
            if not sql_out_path.is_absolute():
                sql_out_path = root / sql_out_path
            sql_out_path.parent.mkdir(parents=True, exist_ok=True)
            lines: list[str] = []
            lines.append(f"-- Generated {datetime.now(timezone.utc).isoformat()}")
            lines.append("")
            # Collect INSERT lines grouped by table name from iterdump,
            # then emit in FK-safe order (parents before children).
            insert_by_table: dict[str, list[str]] = {}
            for line in db.iterdump():
                stripped = line.strip()
                if not stripped or stripped.upper().startswith("CREATE"):
                    continue
                if stripped in ("BEGIN TRANSACTION;", "COMMIT;"):
                    continue
                # Extract table name from: INSERT INTO "table_name" ...
                if stripped.upper().startswith("INSERT INTO"):
                    tbl = stripped.split('"')[1] if '"' in stripped else ""
                    insert_by_table.setdefault(tbl, []).append(line)
            # Dependency-safe order: parent tables first
            table_order = [
                "imported_vibe_posts",
                "recommendations",
                "recommendation_evidence",
                "imported_post_images",
                "vibe_tags",
                "processing_runs",
                "pipeline_artifacts",
            ]
            for tbl in table_order:
                if tbl in insert_by_table:
                    lines.extend(insert_by_table.pop(tbl))
            # Any remaining tables not in the explicit order
            for tbl_lines in insert_by_table.values():
                lines.extend(tbl_lines)
            sql_out_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
            print(f"[pipeline:load] SQL dump written to {sql_out_path}")

        print(
            f"[pipeline:load] Done: {posts_publishable} publishable, "
            f"{posts_skipped} skipped, {images_inserted} images, "
            f"{recommendations_upserted} recommendations, "
            f"{evidence_inserted} evidence, {tags_inserted} tags"
        )
        if errors:
            print(f"[pipeline:load] {len(errors)} error(s) recorded")
        print(f"[pipeline:load] Artifact written to {out}")

    finally:
        db.close()


if __name__ == "__main__":
    main()
