"""
pipeline.load — Merge normalized / extraction / enrichment artifacts
and write publishable records into a local D1-compatible SQLite database.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sqlite3
import hashlib
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Sequence

from pipeline.artifacts import read_json_artifact, timestamp_slug, validate_complete_extraction, write_json_artifact
from pipeline.paths import ensure_pipeline_dirs, normalized_dir, project_root, working_dir

# ── Constants ──────────────────────────────────────────────────────────

# Tables that hold user-facing data: included in the emitted data migration.
DATA_TABLES: frozenset[str] = frozenset(
    {
        "imported_vibe_posts",
        "recommendations",
        "recommendation_evidence",
        "imported_post_images",
        "vibe_tags",
    }
)

# Tables that hold pipeline-internal state: excluded from the emitted data
# migration (they're per-run bookkeeping, not user data).
PIPELINE_STATE_TABLES: frozenset[str] = frozenset(
    {"processing_runs", "pipeline_artifacts"}
)

# Ordered chunks for the data migration. Each chunk is a separate
# ``NNNN_seed_<TS>_NN_<name>.sql`` file applied in sequence by
# ``wrangler d1 migrations apply``. Order respects foreign-key dependencies:
# parents before children. Slugs are stable and short so the filename stays
# under the worker request-body ceiling even with a long timestamp.
_DATA_MIGRATION_CHUNKS: tuple[tuple[str, frozenset[str]], ...] = (
    ("01_posts", frozenset({"imported_vibe_posts"})),
    ("02_recommendations", frozenset({"recommendations"})),
    ("03_evidence", frozenset({"recommendation_evidence"})),
    ("04_images", frozenset({"imported_post_images"})),
    ("05_tags", frozenset({"vibe_tags"})),
)


# ── Helpers ────────────────────────────────────────────────────────────


def _quote_sql_identifier(name: str) -> str:
    return '"' + name.replace('"', '""') + '"'


def _normalize_title(title: str) -> str:
    return re.sub(r"\s+", " ", title.strip().lower())


def _candidate_key(title: str, year: int | None, media_type: str) -> str:
    return f"{_normalize_title(title)}|{year or ''}|{media_type}"


def _has_usable_image(images: list[dict[str, Any]]) -> bool:
    """Only nonblank source URLs can make a post publishable."""
    return bool(images) and all(isinstance(image.get("source_url"), str) and image["source_url"] for image in images)


def _latest_normalized() -> Path:
    candidates = sorted(normalized_dir().glob("*.json"))
    if not candidates:
        raise SystemExit("[pipeline:load] No normalized artifacts found")
    return candidates[-1]


def _latest_extraction() -> Path:
    candidates = sorted(working_dir().glob("extraction-*.json"))
    real = [
        p
        for p in candidates
        if "dry-run" not in p.stem and "cache-snapshot" not in p.stem
    ]
    if not real:
        raise SystemExit("[pipeline:load] No real extraction artifacts found")
    return real[-1]


def _latest_enrichment() -> Path:
    candidates = sorted(working_dir().glob("enrichment-*.json"))
    real = [
        p
        for p in candidates
        if "dry-run" not in p.stem and "cache-snapshot" not in p.stem
    ]
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
    assets: dict[str, Any] | None,
    extraction: dict[str, Any],
    enrichment: dict[str, Any],
) -> dict[str, Any]:
    """Build cross-referenced indices from all source artifacts."""
    idx: dict[str, Any] = {}

    # Normalized posts
    idx["posts_by_id"] = {p["reddit_post_id"]: p for p in norm.get("posts", [])}

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


def _check_extraction_health(
    extraction: dict[str, Any],
    *,
    allow_partial: bool,
    allow_empty: bool,
) -> None:
    """Reject unsafe extraction artifacts unless an explicit override applies."""
    status = extraction.get("status", "")
    summary = extraction.get("summary", {})
    success_count = summary.get("success_count", 0)
    error_count = summary.get("error_count", 0)

    if status == "failed" and not allow_empty:
        raise ValueError(
            "extraction artifact has failed status; rerun extraction with a "
            "working API key or pass --allow-empty-extraction to override"
        )
    if error_count > 0 and success_count == 0 and not allow_empty:
        raise ValueError(
            "extraction artifact has no successful results; pass "
            "--allow-empty-extraction to override"
        )
    if error_count > 0 and success_count > 0 and not (allow_partial or allow_empty):
        raise ValueError(
            "extraction artifact contains failed target posts; pass "
            "--allow-partial-extraction to load successful posts only"
        )


def _select_post_ids_for_load(
    post_ids: list[str],
    extraction_by_post: dict[str, dict[str, Any]],
    *,
    allow_partial: bool,
) -> list[str]:
    """Exclude normalized posts without a successful extraction in partial mode."""
    if not allow_partial:
        return post_ids
    return [pid for pid in post_ids if pid in extraction_by_post]


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
) -> int:
    """Delete existing images and re-insert normalized source/preview pairs.

    Returns the count of images inserted.
    """
    db.execute(
        "DELETE FROM imported_post_images WHERE imported_vibe_post_id = ?",
        (post_id,),
    )

    count = 0
    for img in post.get("images", []):
        source_url = img.get("source_url")
        if not isinstance(source_url, str) or not source_url:
            raise ValueError(f"normalized image for {reddit_post_id} has a blank source_url")
        db.execute(
            """INSERT INTO imported_post_images
               (imported_vibe_post_id, source_url, preview_url, width, height, sort_order)
               VALUES (?, ?, ?, ?, ?, ?)""",
            (
                post_id,
                source_url,
                img.get("preview_url"),
                img.get("preview_width"),
                img.get("preview_height"),
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


# A seed never copies the run-local row ids into D1: the destination
# allocates them.  Every emitted row is an upsert keyed by its table's
# natural unique constraint, and every child resolves its parents through
# that same key, so a destination whose id sequence has drifted still lands
# the row on the post or recommendation it belongs to.  A key that cannot be
# resolved aborts the run — the failure this replaces was ``INSERT OR
# IGNORE`` discarding a row whose id D1 already owned, without a word.

# Natural keys: the columns that identify a row the destination already owns,
# in index order.  ``recommendations`` is absent because it picks between two
# partial indexes per row (see ``_recommendation_key``).
_SEED_CONFLICT_COLUMNS: dict[str, tuple[str, ...]] = {
    "imported_vibe_posts": ("reddit_post_id",),
    "recommendation_evidence": (
        "recommendation_id",
        "imported_vibe_post_id",
        "evidence_comment_id",
    ),
    "imported_post_images": ("imported_vibe_post_id", "source_url"),
    "vibe_tags": ("imported_vibe_post_id", "tag"),
}

# Tables whose conflict refresh is an explicit allow-list rather than
# "everything but the key": their remaining columns are operational state
# owned by another stage (image liveness owns ``deleted_at``/``checked_at``,
# which probe runs write), and a re-applied seed must never clobber it.
_SEED_REFRESH_ONLY: dict[str, frozenset[str]] = {
    "imported_post_images": frozenset({"preview_url", "width", "height", "sort_order"}),
    "vibe_tags": frozenset({"source"}),
}

# D1's row id and the moment the row first landed are never refreshed: the id
# is the destination's allocation and ``created_at`` records its own history.
_SEED_NEVER_REFRESHED: frozenset[str] = frozenset({"id", "created_at"})

# Derived columns the destination maintains itself. ``imported_vibe_posts
# .is_displayable`` is recomputed by D1's own triggers from D1's image rows,
# which are the only place image liveness is known (a local run never probes),
# so a seed neither inserts nor refreshes it: the insert branch is normalized
# by the destination's trigger and the update branch must not overwrite the
# destination's truth with the run-local derivation.
_SEED_DESTINATION_DERIVED: dict[str, frozenset[str]] = {
    "imported_vibe_posts": frozenset({"is_displayable"}),
}


def _identifier_list(columns: Sequence[str]) -> str:
    return ", ".join(_quote_sql_identifier(column) for column in columns)


def _rendered_values(columns: Sequence[str], qualifier: str = "") -> str:
    """Render *columns* as the ``quote(...)`` expressions the source selects."""
    return ", ".join(
        f"quote({qualifier}{_quote_sql_identifier(column)})" for column in columns
    )


def _select_items(*fragments: str) -> str:
    """Join the non-empty fragments of a SELECT list."""
    return ", ".join(fragment for fragment in fragments if fragment)


def _refreshed_columns(table: str, columns: Sequence[str]) -> list[str]:
    """Columns a re-applied seed refreshes on a row the destination owns.

    The natural key that matched the row is left out — rewriting the key only
    churns the index — as is the destination's own bookkeeping.
    """
    allow_list = _SEED_REFRESH_ONLY.get(table)
    if allow_list is not None:
        return [column for column in columns if column in allow_list]
    blocked = _SEED_NEVER_REFRESHED | set(_SEED_CONFLICT_COLUMNS.get(table, ()))
    return [column for column in columns if column not in blocked]


def _conflict_clause(table: str, columns: Sequence[str]) -> str:
    """Render the ``ON CONFLICT`` target for *columns*.

    The recommendations targets are partial indexes, and SQLite only matches
    one when the upsert repeats the index's ``WHERE`` clause verbatim.
    """
    if table == "recommendations":
        return f"ON CONFLICT({', '.join(columns)}) WHERE {columns[-1]} IS NOT NULL"
    return f"ON CONFLICT({', '.join(columns)})"


def _recommendation_key(
    media_type: Any, tmdb_id: Any, igdb_id: Any, row_id: Any
) -> list[tuple[str, Any]]:
    """Return one recommendation's natural key as (column, value) pairs.

    Movies and TV shows key on ``tmdb_id``, games on ``igdb_id``; either way
    the target is a partial index guarded by ``IS NOT NULL``, so a row missing
    its id has no conflict target at all.  Emitting one would insert a
    duplicate the destination can never merge, so the run stops instead.
    """
    if media_type == "game":
        if igdb_id is not None:
            return [("media_type", media_type), ("igdb_id", igdb_id)]
        why = "a game with a NULL igdb_id"
    elif media_type in ("movie", "tv"):
        if tmdb_id is not None:
            return [("media_type", media_type), ("tmdb_id", tmdb_id)]
        why = f"a {media_type} with a NULL tmdb_id"
    else:
        why = f"media_type {media_type!r}, which is outside ('movie', 'tv', 'game')"
    raise SystemExit(
        f"[pipeline:load] recommendations row {row_id} is {why}: the seed cannot "
        f"resolve it by natural key, so emitting it would insert a duplicate the "
        f"destination can never merge. Fix the row and re-run."
    )


def _upsert_statement(
    table_name: str,
    insert_columns: Sequence[str],
    source_lines: Sequence[str],
    conflict_clause: str,
    refreshed: Sequence[str],
) -> str:
    """Assemble one id-free upsert.

    *source_lines* is either the ``VALUES (...)`` row of a parent or the
    ``SELECT ...`` that resolves a child's parents by natural key.
    """
    action = (
        "DO UPDATE SET "
        + ", ".join(
            f"{_quote_sql_identifier(column)}=excluded.{_quote_sql_identifier(column)}"
            for column in refreshed
        )
        if refreshed
        else "DO NOTHING"
    )
    head = "\n".join(
        [
            f"INSERT INTO {table_name} ({_identifier_list(insert_columns)})",
            *source_lines,
        ]
    )
    return f"{head}\n{conflict_clause} {action};"


def _seed_values_rows(
    db: sqlite3.Connection,
    table: str,
    value_columns: list[str],
    refreshed: list[str],
    predicate: str,
    params: tuple[Any, ...],
) -> list[str]:
    """Render rows of a parent table as ``INSERT ... VALUES ... ON CONFLICT``."""
    table_name = _quote_sql_identifier(table)
    row_id = _quote_sql_identifier("id")
    key_columns = (
        ("media_type", "tmdb_id", "igdb_id") if table == "recommendations" else ()
    )
    select_list = _select_items(
        _rendered_values(value_columns, "t."),
        *(f"t.{_quote_sql_identifier(column)}" for column in key_columns),
    )
    statements: list[str] = []
    for row in db.execute(
        f"SELECT t.{row_id}, {select_list} FROM {table_name} t "
        f"WHERE {predicate} ORDER BY t.{row_id}",
        params,
    ):
        rendered = list(row[1 : 1 + len(value_columns)])
        if key_columns:
            key = _recommendation_key(*row[1 + len(value_columns) :], row[0])
            conflict_clause = _conflict_clause(table, [column for column, _ in key])
        else:
            conflict_clause = _conflict_clause(table, _SEED_CONFLICT_COLUMNS[table])
        statements.append(
            _upsert_statement(
                table_name,
                value_columns,
                [f"VALUES ({', '.join(rendered)})"],
                conflict_clause,
                refreshed,
            )
        )
    return statements


def _seed_post_child_rows(
    db: sqlite3.Connection,
    table: str,
    value_columns: list[str],
    refreshed: list[str],
    floor: int,
) -> list[str]:
    """Render a child of ``imported_vibe_posts`` as an ``INSERT ... SELECT``.

    The destination allocates the post id and the row is attached by
    ``reddit_post_id``, so run-local and D1 ids may differ freely.
    """
    table_name = _quote_sql_identifier(table)
    row_id = _quote_sql_identifier("id")
    post_key = f"p.{_quote_sql_identifier('reddit_post_id')}"
    post_fk = f"t.{_quote_sql_identifier('imported_vibe_post_id')}"
    mapped = value_columns[1:]  # value_columns[0] is the post foreign key
    select_list = _select_items(_rendered_values(mapped, "t."), post_key, post_fk)
    query = (
        f"SELECT t.{row_id}, {select_list} "
        f"FROM {table_name} t "
        f"LEFT JOIN imported_vibe_posts p ON p.{row_id} = {post_fk} "
        f"WHERE t.{row_id} > ? ORDER BY t.{row_id}"
    )
    statements: list[str] = []
    for row in db.execute(query, (floor,)):
        rendered = list(row[1 : 1 + len(mapped)])
        post_reddit_id, post_id = row[1 + len(mapped) :]
        if post_reddit_id is None:
            raise SystemExit(
                f"[pipeline:load] {table} row {row[0]} references imported_vibe_posts "
                f"id {post_id}, which does not exist: the seed cannot resolve it by "
                f"natural key, so emitting it would drop the row silently."
            )
        statements.append(
            _upsert_statement(
                table_name,
                value_columns,
                [
                    f"SELECT p.id, {', '.join(rendered)}",
                    f"FROM imported_vibe_posts p WHERE {post_key} = "
                    f"{_sql_literal(post_reddit_id)}",
                ],
                _conflict_clause(table, _SEED_CONFLICT_COLUMNS[table]),
                refreshed,
            )
        )
    return statements


def _seed_evidence_rows(
    db: sqlite3.Connection,
    table: str,
    value_columns: list[str],
    refreshed: list[str],
    floor: int,
) -> list[str]:
    """Render ``recommendation_evidence`` as an ``INSERT ... SELECT``.

    Both parents are resolved by natural key — the recommendation through
    ``media_type`` plus ``tmdb_id``/``igdb_id``, the post through
    ``reddit_post_id`` — so the destination allocates both ids.
    """
    table_name = _quote_sql_identifier(table)
    row_id = _quote_sql_identifier("id")
    post_key = f"p.{_quote_sql_identifier('reddit_post_id')}"
    post_fk = f"t.{_quote_sql_identifier('imported_vibe_post_id')}"
    recommendation_fk = f"t.{_quote_sql_identifier('recommendation_id')}"
    recommendation_key = [
        f"r.{_quote_sql_identifier(column)}"
        for column in ("media_type", "tmdb_id", "igdb_id")
    ]
    mapped = value_columns[2:]  # [0], [1] are the recommendation and post keys
    select_list = _select_items(
        _rendered_values(mapped, "t."),
        post_key,
        post_fk,
        recommendation_fk,
        *recommendation_key,
    )
    query = (
        f"SELECT t.{row_id}, {select_list} "
        f"FROM {table_name} t "
        f"LEFT JOIN imported_vibe_posts p ON p.{row_id} = {post_fk} "
        f"LEFT JOIN recommendations r ON r.{row_id} = {recommendation_fk} "
        f"WHERE t.{row_id} > ? ORDER BY t.{row_id}"
    )
    statements: list[str] = []
    for row in db.execute(query, (floor,)):
        rendered = list(row[1 : 1 + len(mapped)])
        (
            post_reddit_id,
            post_id,
            recommendation_id,
            media_type,
            tmdb_id,
            igdb_id,
        ) = row[1 + len(mapped) :]
        if post_reddit_id is None:
            raise SystemExit(
                f"[pipeline:load] {table} row {row[0]} references imported_vibe_posts "
                f"id {post_id}, which does not exist: the seed cannot resolve it by "
                f"natural key, so emitting it would drop the row silently."
            )
        if media_type is None:
            raise SystemExit(
                f"[pipeline:load] {table} row {row[0]} references recommendations id "
                f"{recommendation_id}, which does not exist: the seed cannot resolve "
                f"it by natural key, so emitting it would drop the row silently."
            )
        key = _recommendation_key(media_type, tmdb_id, igdb_id, recommendation_id)
        predicate = " AND ".join(
            f"r.{column} = {_sql_literal(value)}" for column, value in key
        )
        statements.append(
            _upsert_statement(
                table_name,
                value_columns,
                [
                    f"SELECT r.id, p.id, {', '.join(rendered)}",
                    "FROM recommendations r, imported_vibe_posts p",
                    f"WHERE {predicate} AND {post_key} = {_sql_literal(post_reddit_id)}",
                ],
                _conflict_clause(table, _SEED_CONFLICT_COLUMNS[table]),
                refreshed,
            )
        )
    return statements


def _seed_inserts(
    db: sqlite3.Connection,
    table: str,
    columns: list[str],
    floor: int,
    touched_recommendation_ids: set[int] | None = None,
) -> list[str]:
    """Render one data table's delta rows (``id`` > *floor*) as id-free upserts."""
    derived = _SEED_DESTINATION_DERIVED.get(table, frozenset())
    value_columns = [
        column for column in columns if column != "id" and column not in derived
    ]
    refreshed = _refreshed_columns(table, value_columns)
    if table in ("imported_post_images", "vibe_tags"):
        return _seed_post_child_rows(db, table, value_columns, refreshed, floor)
    if table == "recommendation_evidence":
        return _seed_evidence_rows(db, table, value_columns, refreshed, floor)

    statements = _seed_values_rows(
        db,
        table,
        value_columns,
        refreshed,
        f"t.{_quote_sql_identifier('id')} > ?",
        (floor,),
    )

    # A recommendation can be updated in place by the loader (metadata and,
    # later, evidence_score), so its id is not a sufficient delta marker.
    # Re-emit every touched row that predates this load through the same
    # id-free upsert; the rows this load inserted are already above the floor.
    if table == "recommendations" and touched_recommendation_ids:
        for recommendation_id in sorted(touched_recommendation_ids):
            if recommendation_id <= floor:
                statements.extend(
                    _seed_values_rows(
                        db,
                        table,
                        value_columns,
                        refreshed,
                        f"t.{_quote_sql_identifier('id')} = ?",
                        (recommendation_id,),
                    )
                )
    return statements


def _build_ordered_inserts(
    db: sqlite3.Connection,
    table_filter: frozenset[str],
    id_floors: dict[str, int],
    touched_recommendation_ids: set[int] | None = None,
) -> list[str]:
    """Return id-free upserts for rows added above the load's id floors.

    Values are rendered by SQLite's ``quote()`` rather than parsing
    ``iterdump()``.  This safely handles NULL, quotes, and blobs while keeping
    the generated migration self-contained.

    Row ids are not copied: D1 allocates them.  Parent rows upsert on their
    natural key and child rows resolve their parent by ``INSERT ... SELECT``,
    so a seed that lands on a database whose id sequence has drifted updates
    the row it belongs to instead of colliding with an id D1 already owns.
    Every key is checked in the emitter — an unresolvable one raises
    ``SystemExit`` rather than emitting SQL that would drop the row.

    Rows are emitted in a stable, parent-before-child order so the resulting
    SQL can be applied to a fresh database without violating foreign keys:

        imported_vibe_posts → recommendations → recommendation_evidence
        → imported_post_images → vibe_tags → (pipeline state) → (any others)

    ``id_floors`` must contain the post-migration MAX(id) for each data table;
    rows at or below those floors are historical data and are omitted, except
    for recommendations the loader updates in place (see
    *touched_recommendation_ids*), which are re-emitted through the same
    natural key because their id is not a sufficient delta marker.
    """
    table_order = [
        "imported_vibe_posts",
        "recommendations",
        "recommendation_evidence",
        "imported_post_images",
        "vibe_tags",
        "processing_runs",
        "pipeline_artifacts",
    ]

    ordered: list[str] = []
    for table in table_order:
        if table not in table_filter:
            continue
        table_name = _quote_sql_identifier(table)
        columns = [
            row[1]
            for row in db.execute(f"PRAGMA table_info({table_name})").fetchall()
        ]
        if not columns:
            continue
        floor = id_floors.get(table, 0)
        if table not in DATA_TABLES:
            raise SystemExit(
                f"[pipeline:load] Table {table!r} has no seeded natural key, so its "
                f"rows cannot be emitted without copying run-local ids — the exact "
                f"mechanism that silently drops rows when the local id sequence has "
                f"drifted from D1. Keep it out of the migration chunks or give it a "
                f"natural key first."
            )
        ordered.extend(
            _seed_inserts(db, table, columns, floor, touched_recommendation_ids)
        )
    return ordered


def _capture_data_table_id_floors(db: sqlite3.Connection) -> dict[str, int]:
    """Capture the historical row boundary before this load mutates SQLite."""
    return {
        table: int(
            db.execute(
                f'SELECT COALESCE(MAX("id"), 0) FROM {_quote_sql_identifier(table)}'
            ).fetchone()[0]
        )
        for table in DATA_TABLES
    }


_MIGRATION_NAME_RE = re.compile(r"^(\d{4})_")


def _next_migration_number(migrations_dir: Path) -> int:
    """Return the next free 4-digit migration number for *migrations_dir*.

    Scans for files matching ``NNNN_*.sql`` and returns ``max + 1`` (or
    ``1`` if the directory is empty).  The numbering is shared with schema
    migrations: a directory that already contains ``0001_initial.sql`` …
    ``0004_drop_tmdb_data.sql`` yields ``5`` here, so the first emitted
    data migration is ``0005_seed_<TS>.sql``.
    """
    numbers: list[int] = []
    if migrations_dir.is_dir():
        for path in migrations_dir.glob("*.sql"):
            match = _MIGRATION_NAME_RE.match(path.name)
            if match:
                numbers.append(int(match.group(1)))
    return (max(numbers) if numbers else 0) + 1


def _migration_filename(sequence: int, when: datetime, slug: str) -> str:
    """Format a data-migration filename.

    Example: ``0005_seed_20260714T150042Z_01_posts.sql``.  Uses the run's
    start time so the filename records *when the data was collected*, not
    when the file was written. The trailing ``_<slug>`` distinguishes the
    ordered chunks emitted in a single run.
    """
    return f"{sequence:04d}_seed_{when.strftime('%Y%m%dT%H%M%SZ')}_{slug}.sql"


def _write_data_migration(
    db: sqlite3.Connection,
    migrations_dir: Path,
    run_started_at: datetime,
    id_floors: dict[str, int],
    touched_recommendation_ids: set[int] | None = None,
) -> list[Path]:
    """Emit a sequence of versioned data migrations to *migrations_dir*.

    The data is split into one file per logical table group, applied in
    order by ``wrangler d1 migrations apply`` (lexical sort matches the
    emitted order because each chunk is suffixed with a fixed sequence
    like ``_01_posts``, ``_02_recommendations``).  Chunking keeps every
    file small enough to fit comfortably under worker-side request-body
    caps even as the corpus grows past the original 242-post run.

    Each file:
      - contains only its assigned data tables (no pipeline state)
      - writes every row as an id-free upsert (``INSERT ... ON CONFLICT ...
        DO UPDATE``) keyed by the table's natural unique constraint, so the
        file is safe to re-apply and D1 keeps its own row ids
      - resolves child rows through their parents' natural keys, so a seed
        still attaches to the right post / recommendation when the run-local
        id sequence differs from D1's
      - is parent-before-child ordered within the file; chunk order is
        also parent-before-child across files so foreign keys resolve on
        a fresh schema.

    Returns the list of paths written, in apply order.  Raises
    ``SystemExit`` if any target filename already exists (minute-precision
    collisions during a 1k run are vanishingly rare; this guards against
    the dev re-running the same load by accident and silently overwriting
    the prior run's data).
    """
    migrations_dir.mkdir(parents=True, exist_ok=True)
    base_sequence = _next_migration_number(migrations_dir)

    written: list[Path] = []
    for offset, (slug, tables) in enumerate(_DATA_MIGRATION_CHUNKS):
        sequence = base_sequence + offset
        filename = _migration_filename(sequence, run_started_at, slug)
        path = migrations_dir / filename

        if path.exists():
            raise SystemExit(
                f"[pipeline:load] Refusing to overwrite existing migration {path}. "
                f"Delete it (or pick a new --migrations-dir) and re-run."
            )

        inserts = _build_ordered_inserts(
            db, tables, id_floors, touched_recommendation_ids
        )

        table_list = ", ".join(sorted(tables))
        header = (
            f"-- {filename}: data seed from pipeline:load run.\n"
            f"-- Generated:  {datetime.now(timezone.utc).isoformat()}\n"
            f"-- Run started: {run_started_at.isoformat()}\n"
            f"-- Source: data/working/load manifest from this run.\n"
            f"--\n"
            f"-- Idempotent: every row is an upsert keyed by the table's\n"
            f"-- natural unique constraint, and every child resolves its\n"
            f"-- parents through that same key.  Row ids are never copied —\n"
            f"-- the destination allocates them — so re-applying refreshes the\n"
            f"-- row it belongs to instead of colliding with an id D1 already\n"
            f"-- owns.  Wrangler's migration tracking normally prevents\n"
            f"-- re-apply; the upsert is defense in depth for partial /\n"
            f"-- interrupted re-runs, and a conflict target the destination\n"
            f"-- cannot satisfy aborts the apply instead of dropping rows.\n"
            f"--\n"
            f"-- Chunk: {slug} ({offset + 1}/{len(_DATA_MIGRATION_CHUNKS)})\n"
            f"-- Tables: {table_list}.\n"
            f"-- Pipeline-state tables (processing_runs, pipeline_artifacts)\n"
            f"-- are intentionally excluded — they're per-run bookkeeping.\n"
        )
        body = "\n".join(inserts) + "\n"
        path.write_text(header + "\n" + body, encoding="utf-8")
        written.append(path)
        print(f"[pipeline:load] Data migration written to {path}")

    return written


def _sql_literal(value: Any) -> str:
    """Return a SQLite literal with correct escaping, including JSON payloads."""
    if value is None:
        return "NULL"
    if isinstance(value, bool):
        return "1" if value else "0"
    if isinstance(value, (int, float)):
        return str(value)
    return "'" + str(value).replace("'", "''") + "'"


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
        "--migrations-dir",
        default="packages/db/migrations",
        help=(
            "Directory for the emitted data migration "
            "(default: packages/db/migrations/, which apps/astro/wrangler.jsonc "
            "points at via `migrations_dir`)"
        ),
    )
    parser.add_argument(
        "--allow-empty-extraction",
        action="store_true",
        help="Proceed even if the extraction artifact has no successes (default: abort)",
    )
    parser.add_argument(
        "--allow-partial-extraction",
        action="store_true",
        help="Load only posts with successful extraction results when some posts fail",
    )
    return parser


# ── Main ───────────────────────────────────────────────────────────────


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    # Captured early so the emitted migration filename records when the
    # data was *collected*, not when the file was written (a 1k load can
    # take minutes; the file's mtime is the end of the run).
    run_started_at = datetime.now(timezone.utc)

    ensure_pipeline_dirs()

    # Resolve source artifacts --------------------------------------------
    root = project_root()

    norm_path = Path(args.normalized) if args.normalized else _latest_normalized()
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
    print(f"[pipeline:load] Extraction:  {ext_path.name}")
    print(f"[pipeline:load] Enrichment:  {enrich_path.name}")
    print(f"[pipeline:load] DB:          {db_path}")
    print(f"[pipeline:load] Schema:      {schema_src}")
    print(f"[pipeline:load] Dry-run:     {args.dry_run}")

    # Read all artifacts --------------------------------------------------
    norm = read_json_artifact(norm_path)
    extraction = read_json_artifact(ext_path)
    try:
        validate_complete_extraction(
            extraction,
            allow_failed=args.allow_empty_extraction or args.allow_partial_extraction,
        )
        _check_extraction_health(
            extraction,
            allow_partial=args.allow_partial_extraction,
            allow_empty=args.allow_empty_extraction,
        )
    except ValueError as exc:
        raise SystemExit(f"[pipeline:load] {exc}") from exc
    enrichment = read_json_artifact(enrich_path)

    # Build merge index ---------------------------------------------------
    idx = _build_merge_index(norm, None, extraction, enrichment)
    post_ids = idx["all_post_ids"]
    posts_by_id = idx["posts_by_id"]
    extraction_by_post = idx["extraction_by_post"]
    enrich_match_by_key = idx["enrich_match_by_key"]
    enrich_candidate_by_key = idx["enrich_candidate_by_key"]

    post_ids = _select_post_ids_for_load(
        post_ids, extraction_by_post, allow_partial=args.allow_partial_extraction
    )

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
            has_usable_image = _has_usable_image(post.get("images", []))

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
            image_cols = {r[1] for r in db.execute("PRAGMA table_info(imported_post_images)").fetchall()}
            for column in ("source_url", "preview_url", "deleted_at", "checked_at"):
                if column not in image_cols:
                    missing.append(f"imported_post_images.{column}")
            post_cols = {r[1] for r in db.execute("PRAGMA table_info(imported_vibe_posts)").fetchall()}
            if "is_displayable" not in post_cols:
                missing.append("imported_vibe_posts.is_displayable")
            # The summary tables and their triggers arrive with the same
            # migration; without them the loader would write a database whose
            # counts are maintained by nothing.
            present_tables = {
                r[0]
                for r in db.execute(
                    "SELECT name FROM sqlite_master WHERE type = 'table'"
                ).fetchall()
            }
            for table in ("tag_counts", "site_stats"):
                if table not in present_tables:
                    missing.append(table)
            if missing:
                print(
                    f"[pipeline:load] Existing DB is missing required schema: "
                    f"{', '.join(missing)}. "
                    f"Run with --reset to re-create the DB from migrations, "
                    f"or apply the pending schema migrations before loading"
                )
                raise SystemExit(1)

        # Establish the historical boundary only after setup/migrations and
        # immediately before processing the current artifacts.  The emitted
        # migration must contain only rows introduced by this load.
        data_table_id_floors = _capture_data_table_id_floors(db)

        # Process each post
        posts_seen = 0
        posts_publishable = 0
        posts_skipped = 0
        images_inserted = 0
        recommendations_upserted = 0
        evidence_inserted = 0
        tags_inserted = 0
        touched_recommendation_ids: set[int] = set()
        errors: list[dict[str, Any]] = []

        for pid in post_ids:
            post = posts_by_id[pid]
            ext_result = extraction_by_post.get(pid)
            has_usable_image = _has_usable_image(post.get("images", []))
            posts_seen += 1

            # Count matchable recommendations for this post
            # `rec_id_by_key` maps candidate_key → upserted recommendation id,
            # so the evidence-linking loop below can find the id without
            # another SELECT against `recommendations`.
            rec_id_by_key: dict[str, int] = {}
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
                            if rec_id != -1:
                                rec_id_by_key[match["candidate_key"]] = rec_id
                                touched_recommendation_ids.add(rec_id)
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
                    db, post_row_id, pid, post
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

            # Evidence linking — rec_id_by_key (built above) maps each
            # candidate_key to the just-upserted recommendation id, so no
            # extra SELECT against `recommendations` is needed.
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
                    rec_db_id = rec_id_by_key.get(match["candidate_key"])
                    if not rec_db_id:
                        continue
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

        # ── Emit data migration ────────────────────────────────────
        # Every successful load writes a versioned, idempotent data
        # migration to packages/db/migrations/ so ``wrangler d1
        # migrations apply`` picks it up alongside the schema migrations.
        # The migration IS the SQL output — there's no separate dump
        migrations_dir = Path(args.migrations_dir)
        if not migrations_dir.is_absolute():
            migrations_dir = root / migrations_dir
        data_migrations = _write_data_migration(
            db,
            migrations_dir,
            run_started_at,
            data_table_id_floors,
            touched_recommendation_ids,
        )
        manifest["data_migrations"] = [
            {"path": str(path), "sha256": hashlib.sha256(path.read_bytes()).hexdigest()}
            for path in data_migrations
        ]
        write_json_artifact(out, manifest)

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
