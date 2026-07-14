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

from pipeline.artifacts import read_json_artifact, timestamp_slug, validate_complete_extraction, write_json_artifact
from pipeline.paths import ensure_pipeline_dirs, normalized_dir, working_dir

# ── Helpers ────────────────────────────────────────────────────────────


def _normalize_title(title: str) -> str:
    return re.sub(r"\s+", " ", title.strip().lower())


def _candidate_key(title: str, year: int | None, media_type: str) -> str:
    return f"{_normalize_title(title)}|{year or ''}|{media_type}"


def _has_usable_image(
    asset_list: list[dict[str, Any]], normalized_image_count: int
) -> bool:
    """Return ``True`` if the post has at least one normalized image and
    at least one cached asset (or no asset info is available yet).

    A post with zero normalized images is treated as having no usable
    image, regardless of the asset artifact state — otherwise text-only
    posts and gallery posts with unprocessed media slip through as
    "publishable" and render with an empty image panel on the site.

    When *asset_list* is empty but images exist (assets-cache stage not
    run yet, or partial coverage) we optimistically return ``True`` so
    that no signal is lost.
    """
    if normalized_image_count == 0:
        return False
    if not asset_list:
        return True  # no asset info available — do not block
    return any(a.get("cache_status") == "cached" for a in asset_list)


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


def _apply_migrations(
    db: sqlite3.Connection, schema_path: Path
) -> None:
    """Apply DDL to a fresh/reset SQLite database.

    When *schema_path* is a file (e.g. via ``--schema``), execute only that
    file.  When *schema_path* is a directory (the default), apply every
    ``.sql`` file under it in sorted order so that additive migrations
    (0002, 0003, …) are picked up automatically.
    """
    if schema_path.is_dir():
        files = sorted(schema_path.glob("*.sql"))
        if not files:
            raise SystemExit(
                f"[pipeline:load] No .sql migration files found in {schema_path}"
            )
        for f in files:
            sql = f.read_text(encoding="utf-8")
            db.executescript(sql)
            print(f"[pipeline:load]   Applied {f.name}")
    else:
        sql = schema_path.read_text(encoding="utf-8")
        db.executescript(sql)
        print(f"[pipeline:load]   Applied {schema_path.name}")
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
    has_usable_image: bool,
    match_count_for_post: int,
) -> int:
    """Insert or update an imported_vibe_posts row. Returns row id."""
    pid = post["reddit_post_id"]
    vibe = (extraction_result or {}).get("vibe") or {}
    vibe_summary = vibe.get("summary")
    permalink = post.get("permalink", "")

    # Determine status
    if (
        has_usable_image
        and vibe_summary
        and match_count_for_post > 0
        and permalink
    ):
        status = "publishable"
        error_info = None
    else:
        status = "skipped"
        reasons: list[str] = []
        if not has_usable_image:
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
    """Insert or update a recommendations row by media_type-specific ID.

    - ``game`` → looks up by ``igdb_id + media_type``, writes game columns.
    - ``movie`` / ``tv`` → looks up by ``tmdb_id + media_type`` (existing).
    - ``unknown`` → logs a warning and returns -1.

    Returns the recommendation row id (or -1 if skipped).
    """
    media_type = match.get("media_type", "unknown")

    # ── Unknown: skip ────────────────────────────────────────────────
    if media_type == "unknown":
        print(
            f"    [pipeline:load] WARNING: skipping unknown media_type match: "
            f"{match.get('candidate_key', '?')}"
        )
        return -1

    # ── Game branch ──────────────────────────────────────────────────
    if media_type == "game":
        igdb_id = match.get("igdb_id")
        existing = db.execute(
            "SELECT id FROM recommendations WHERE igdb_id = ? AND media_type = ?",
            (igdb_id, media_type),
        ).fetchone()

        platforms_json: str | None = None
        platforms_raw = match.get("platforms")
        if platforms_raw is not None:
            platforms_json = json.dumps(platforms_raw)

        if existing:
            rec_id = existing[0]
            db.execute(
                """UPDATE recommendations SET
                   igdb_id=?, title=?, original_title=?, release_year=?,
                   poster_url=?, backdrop_url=?, overview=?,
                   external_url=?, platforms=?,
                   popularity=?, vote_average=?,
                    imdb_id=NULL, is_ambiguous=0,
                   updated_at=datetime('now')
                   WHERE id=?""",
                (
                    igdb_id,
                    match.get("title", ""),
                    match.get("original_title"),
                    match.get("release_year"),
                    match.get("poster_url"),
                    match.get("backdrop_url"),
                    match.get("overview"),
                    match.get("external_url"),
                    platforms_json,
                    match.get("popularity"),
                    match.get("vote_average"),
                    rec_id,
                ),
            )
            return rec_id

        db.execute(
            """INSERT INTO recommendations
               (igdb_id, title, original_title, media_type,
                release_year, poster_url, backdrop_url, overview,
                external_url, platforms,
                popularity, vote_average, imdb_id)
               VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL)""",
            (
                igdb_id,
                match.get("title", ""),
                match.get("original_title"),
                "game",
                match.get("release_year"),
                match.get("poster_url"),
                match.get("backdrop_url"),
                match.get("overview"),
                match.get("external_url"),
                platforms_json,
                match.get("popularity"),
                match.get("vote_average"),
            ),
        )
        return db.execute("SELECT last_insert_rowid()").fetchone()[0]

    # ── Movie / TV branch (existing) ─────────────────────────────────
    tmdb_id = match.get("tmdb_id")
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
               popularity=?, vote_average=?,
               imdb_id=?, igdb_id=NULL, external_url=NULL,
               platforms=NULL, is_ambiguous=0,
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
                match.get("imdb_id"),
                rec_id,
            ),
        )
        return rec_id

    db.execute(
        """INSERT INTO recommendations
           (tmdb_id, imdb_id, title, original_title, media_type,
            release_year, poster_url, backdrop_url, overview,
            popularity, vote_average,
            igdb_id, external_url, platforms)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, NULL, NULL)""",
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
    *,
    rec_confidence: float | None = None,
) -> int:
    """Upsert evidence records, returning count of rows inserted or updated.

    *rec_confidence* is the ExtractedRecommendation-level confidence value
    applied uniformly to all evidence rows for that recommendation.
    Individual evidence items carry *score* (comment upvote count), not
    confidence.
    """
    count = 0
    for ev in evidence_list:
        comment_id = ev.get("comment_id")
        if not comment_id:
            continue
        cursor = db.execute(
            """INSERT INTO recommendation_evidence
               (recommendation_id, imported_vibe_post_id,
                evidence_comment_id, extracted_text,
                confidence, is_primary, evidence_comment_score)
               VALUES (?, ?, ?, ?, ?, ?, ?)
               ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id)
               DO UPDATE SET
                   extracted_text=excluded.extracted_text,
                   confidence=excluded.confidence,
                   is_primary=excluded.is_primary,
                   evidence_comment_score=excluded.evidence_comment_score""",
            (
                recommendation_id,
                imported_vibe_post_id,
                comment_id,
                ev.get("extracted_text", ""),
                rec_confidence,  # from ExtractedRecommendation, not individual evidence
                0,
                ev.get("score"),  # from RecommendationEvidence.score (comment upvotes)
            ),
        )
        count += cursor.rowcount
    return count


def _insert_vibe_tags(
    db: sqlite3.Connection,
    imported_vibe_post_id: int,
    tags: list[str],
) -> int:
    """Insert vibe tags, returning count of rows inserted (skips on conflict)."""
    count = 0
    for tag in tags:
        if not tag:
            continue
        cursor = db.execute(
            """INSERT OR IGNORE INTO vibe_tags
               (imported_vibe_post_id, tag, source)
               VALUES (?, ?, 'extraction')""",
            (imported_vibe_post_id, tag),
        )
        count += cursor.rowcount
    return count


def _write_sql_exports(db: sqlite3.Connection, sql_out_path: Path) -> None:
    """Write the inspection dump and bounded D1 input files.

    Wrangler/workerd is noticeably less reliable with a large single input
    file.  Keep the dump for humans, but make the chunk files the operational
    form.  The ordering here is also the ordering used by the old dump.
    """
    sql_out_path.parent.mkdir(parents=True, exist_ok=True)
    insert_by_table: dict[str, list[str]] = {}
    for line in db.iterdump():
        stripped = line.strip()
        if not stripped or stripped.upper().startswith("CREATE"):
            continue
        if stripped in ("BEGIN TRANSACTION;", "COMMIT;"):
            continue
        if not stripped.upper().startswith("INSERT INTO"):
            continue
        match = re.match(r'INSERT INTO\s+(?:"([^"]+)"|([^\s(]+))', stripped, re.IGNORECASE)
        table = (match.group(1) or match.group(2)) if match else ""
        if not table or table == "sqlite_sequence":
            continue
        insert_by_table.setdefault(table, []).append(line)

    table_order = [
        "imported_vibe_posts",
        "recommendations",
        "recommendation_evidence",
        "imported_post_images",
        "vibe_tags",
        "processing_runs",
        "pipeline_artifacts",
    ]
    ordered_inserts: list[str] = []
    for table in table_order:
        ordered_inserts.extend(insert_by_table.pop(table, []))
    for table in sorted(insert_by_table):
        ordered_inserts.extend(insert_by_table[table])

    # The monolithic file remains useful for inspection/backward use.
    sql_out_path.write_text(
        "\n".join(
            [f"-- Generated {datetime.now(timezone.utc).isoformat()}", "", *ordered_inserts]
        )
        + "\n",
        encoding="utf-8",
    )

    chunk_dir = sql_out_path.parent / sql_out_path.stem
    if chunk_dir.exists():
        for stale in chunk_dir.glob("*.sql"):
            stale.unlink()
    else:
        chunk_dir.mkdir(parents=True)

    chunk_size = 250
    for offset in range(0, len(ordered_inserts), chunk_size):
        chunk_number = offset // chunk_size + 1
        chunk = ordered_inserts[offset : offset + chunk_size]
        (chunk_dir / f"{chunk_number:04d}.sql").write_text(
            "\n".join(chunk) + "\n", encoding="utf-8"
        )

    print(f"[pipeline:load] SQL dump written to {sql_out_path}")
    print(
        f"[pipeline:load] D1 chunks written to {chunk_dir} "
        f"({(len(ordered_inserts) + chunk_size - 1) // chunk_size} file(s))"
    )


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
        help="Path to DDL schema file or directory (default: applies all migrations under packages/db/migrations/)",
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
    parser.add_argument(
        "--allow-empty-extraction",
        action="store_true",
        help="Proceed even if the extraction artifact has no successes (default: abort)",
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
    # When --schema is given explicitly, use it as a single file;
    # otherwise apply all migrations from the migrations directory.
    schema_src: Path
    if args.schema:
        schema_src = Path(args.schema)
    else:
        schema_src = root / "packages" / "db" / "migrations"

    print(f"[pipeline:load] Normalized:  {norm_path.name}")
    print(f"[pipeline:load] Assets:      {assets_path.name}")
    print(f"[pipeline:load] Extraction:  {ext_path.name}")
    print(f"[pipeline:load] Enrichment:  {enrich_path.name}")
    print(f"[pipeline:load] DB:          {db_path}")
    print(f"[pipeline:load] Schema:      {schema_src}")
    print(f"[pipeline:load] Dry-run:     {args.dry_run}")

    # Read all artifacts --------------------------------------------------
    norm = read_json_artifact(norm_path)
    assets = read_json_artifact(assets_path)
    extraction = read_json_artifact(ext_path)
    try:
        validate_complete_extraction(extraction, allow_failed=args.allow_empty_extraction)
    except ValueError as exc:
        raise SystemExit(f"[pipeline:load] {exc}") from exc
    enrichment = read_json_artifact(enrich_path)

    # ── Extraction health check ─────────────────────────────────────────
    ext_status = extraction.get("status", "")
    ext_summary = extraction.get("summary", {})
    ext_success = ext_summary.get("success_count", 0)
    ext_errors = ext_summary.get("error_count", 0)

    if ext_status == "failed" or (ext_success == 0 and ext_errors > 0):
        if not args.allow_empty_extraction:
            print(
                f"[pipeline:load] REFUSING to load from extraction artifact "
                f"'{ext_path.name}' — status={ext_status!r}, "
                f"success_count={ext_success}, error_count={ext_errors}. "
                f"Rerun extraction with a working API key or pass "
                f"--allow-empty-extraction to override."
            )
            raise SystemExit(1)
        else:
            print(
                f"[pipeline:load] WARNING: loading from extraction artifact "
                f"'{ext_path.name}' with success_count={ext_success}, "
                f"error_count={ext_errors} (--allow-empty-extraction active)"
            )

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
            asset_list = assets_by_post.get(pid, [])
            has_usable_image = _has_usable_image(
                asset_list, len(post.get("images", []))
            )

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

            vibe = (ext_result or {}).get("vibe") or {}
            tags = vibe.get("tags", [])
            vibe_has = bool(vibe.get("summary"))

            will_publish = (
                has_usable_image
                and vibe_has
                and match_count > 0
                and bool(post.get("permalink"))
            )

            preview_posts.append(
                {
                    "reddit_post_id": pid,
                    "title": post.get("title", ""),
                    "image_count": len(post.get("images", [])),
                    "cached_asset_count": sum(1 for a in asset_list if a.get("cache_status") == "cached"),
                    "has_usable_image": has_usable_image,
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
                "args": {"dry_run": True, "reset": args.reset, "schema": str(schema_src)},
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
            _apply_migrations(db, schema_src)
        else:
            # Verify existing DB has required new columns
            rec_cols = {
                r[1]
                for r in db.execute(
                    "PRAGMA table_info(recommendations)"
                ).fetchall()
            }
            ev_cols = {
                r[1]
                for r in db.execute(
                    "PRAGMA table_info(recommendation_evidence)"
                ).fetchall()
            }
            missing = []
            if "evidence_score" not in rec_cols:
                missing.append("recommendations.evidence_score")
            if "evidence_comment_score" not in ev_cols:
                missing.append(
                    "recommendation_evidence.evidence_comment_score"
                )
            if "igdb_id" not in rec_cols:
                missing.append("recommendations.igdb_id")
            if missing:
                print(
                    f"[pipeline:load] Existing DB is missing required columns: "
                    f"{', '.join(missing)}. "
                    f"Run with --reset to re-create the DB from migrations, "
                    f"or manually apply packages/db/migrations/0002_evidence_scores.sql"
                )
                raise SystemExit(1)

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
            has_usable_image = _has_usable_image(
                asset_list, len(post.get("images", []))
            )
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

            try:
                post_row_id = _upsert_post(
                    db,
                    post,
                    ext_result,
                    has_usable_image,
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
                    # Find the recommendation_id that was just upserted.
                    # Game matches use igdb_id; movie/TV use tmdb_id.
                    rec_row: tuple[int, ...] | None
                    if match.get("media_type") == "game":
                        rec_row = db.execute(
                            "SELECT id FROM recommendations WHERE igdb_id = ? AND media_type = ?",
                            (match["igdb_id"], match["media_type"]),
                        ).fetchone()
                    else:
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
                            rec_confidence=rec.get("confidence"),
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

        # ── Compute evidence_score for each recommendation ──────────
        # Simple deterministic formula: count of evidence rows +
        # average comment score (scaled down) + average extraction confidence (scaled up).
        db.execute("""
            UPDATE recommendations
            SET evidence_score = (
                SELECT
                    COUNT(re.id) * 1.0
                    + COALESCE(AVG(COALESCE(re.evidence_comment_score, 0)), 0) * 0.01
                    + COALESCE(AVG(COALESCE(re.confidence, 0)), 0) * 10.0
                FROM recommendation_evidence re
                WHERE re.recommendation_id = recommendations.id
            )
            WHERE id IN (
                SELECT DISTINCT recommendation_id
                FROM recommendation_evidence
            )
        """)

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
            _write_sql_exports(db, sql_out_path)

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
