"""Generate row-safe image URL backfill SQL without touching the database."""

from __future__ import annotations

import argparse
import json
import sqlite3
from pathlib import Path
from typing import Any


def _sql(value: Any) -> str:
    if value is None:
        return "NULL"
    return "'" + str(value).replace("'", "''") + "'"


def _fallback(row: sqlite3.Row, reason: str) -> dict[str, Any]:
    return {
        "id": row["id"], "reddit_post_id": row["reddit_post_id"],
        "source_url": row["source_url"], "preview_url": None,
        "width": None, "height": None, "outcome": "fallback", "reason": reason,
    }


def _matching(existing: list[sqlite3.Row], refreshed: list[dict[str, Any]]) -> list[tuple[sqlite3.Row, dict[str, Any]]] | None:
    """Return a unique URL-based bijection, never using sort_order."""
    if len(existing) != len(refreshed) or not refreshed:
        return None
    edges: dict[int, list[int]] = {}
    for old_index, row in enumerate(existing):
        old_url = row["source_url"]
        edges[old_index] = [
            new_index for new_index, image in enumerate(refreshed)
            if old_url and old_url in {image.get("source_url"), image.get("preview_url")}
        ]
        if not edges[old_index]:
            return None
    solutions: list[dict[int, int]] = []
    def search(index: int, used: set[int], assignment: dict[int, int]) -> None:
        if len(solutions) > 1:
            return
        if index == len(existing):
            solutions.append(dict(assignment))
            return
        for new_index in edges[index]:
            if new_index not in used:
                assignment[index] = new_index
                search(index + 1, used | {new_index}, assignment)
                del assignment[index]
    search(0, set(), {})
    if len(solutions) != 1:
        return None
    assignment = solutions[0]
    return [(existing[index], refreshed[assignment[index]]) for index in range(len(existing))]


def build_backfill(db_path: Path, normalized_path: Path, outcomes_path: Path | None = None) -> tuple[list[dict[str, Any]], dict[str, int]]:
    normalized = json.loads(normalized_path.read_text(encoding="utf-8"))
    outcomes_payload = json.loads(outcomes_path.read_text(encoding="utf-8")) if outcomes_path else normalized.get("refetch_outcomes")
    # Absence is itself auditable: no row is counted as requested, and every
    # existing row receives the safe fallback rather than being guessed.
    if not isinstance(outcomes_payload, dict):
        outcomes_payload = {}
    refetch = {str(item["reddit_post_id"]): item for item in outcomes_payload.get("outcomes", []) if item.get("reddit_post_id")}
    posts = {p.get("reddit_post_id"): p for p in normalized.get("posts", [])}
    db = sqlite3.connect(db_path)
    db.row_factory = sqlite3.Row
    try:
        rows = db.execute(
            """SELECT i.id, p.reddit_post_id, i.sort_order, i.source_url
               FROM imported_post_images i JOIN imported_vibe_posts p
               ON p.id = i.imported_vibe_post_id ORDER BY i.id"""
        ).fetchall()
    finally:
        db.close()

    by_post: dict[str, list[sqlite3.Row]] = {}
    for row in rows:
        by_post.setdefault(row["reddit_post_id"], []).append(row)
    result: list[dict[str, Any]] = []
    attempted_rows = unattempted_rows = 0
    for post_id, existing in by_post.items():
        outcome = refetch.get(str(post_id))
        attempted = bool(outcome and outcome.get("attempted"))
        status = outcome.get("status") if outcome else None
        post = posts.get(post_id)
        refreshed = (post or {}).get("images", []) if status in {"success", "resolved"} else []
        if not attempted:
            pairs = None
            reason = "unattempted"
            unattempted_rows += len(existing)
        elif status not in {"success", "resolved"} or not post:
            pairs = None
            reason = status or "post_unavailable"
            attempted_rows += len(existing)
        else:
            pairs = _matching(existing, refreshed)
            reason = "provider_metadata" if pairs else "non_bijective_url_match"
            attempted_rows += len(existing)
        if pairs:
            for row, image in pairs:
                if not image.get("source_url"):
                    pairs = None
                    reason = "blank_source_url"
                    break
        if pairs:
            result.extend({"id": row["id"], "reddit_post_id": post_id, "source_url": image["source_url"],
                           "preview_url": image.get("preview_url"), "width": image.get("preview_width"),
                           "height": image.get("preview_height"), "outcome": "selected", "reason": reason}
                          for row, image in pairs)
        else:
            result.extend(_fallback(row, reason) for row in existing)
    counts = {"attempted": attempted_rows, "unattempted": unattempted_rows,
              "succeeded": sum(r["outcome"] == "selected" for r in result),
              "fallback": sum(r["outcome"] == "fallback" for r in result)}
    return result, counts


def write_outputs(out_path: Path, manifest_path: Path, outcomes: list[dict[str, Any]], counts: dict[str, int]) -> None:
    header = ["-- Image URL backfill generated by pipeline.backfill_images.",
              "-- Deterministic, row-safe UPDATE statements only.",
              f"-- attempted={counts['attempted']} unattempted={counts['unattempted']} succeeded={counts['succeeded']} fallback={counts['fallback']}", ""]
    statements = ["UPDATE imported_post_images SET source_url=" + _sql(o["source_url"])
                  + ", preview_url=" + _sql(o["preview_url"])
                  + ", width=" + _sql(o["width"]) + ", height=" + _sql(o["height"])
                  + " WHERE id=" + str(o["id"]) + ";" for o in outcomes]
    out_path.write_text("\n".join(header + statements) + "\n", encoding="utf-8")
    manifest_path.write_text(json.dumps({"status": "image_backfill_generated", "counts": counts, "rows": outcomes}, indent=2) + "\n", encoding="utf-8")


def main(argv: list[str] | None = None) -> None:
    parser = argparse.ArgumentParser(description="Generate deterministic image URL backfill UPDATE SQL")
    parser.add_argument("--db", required=True, type=Path)
    parser.add_argument("--normalized", required=True, type=Path, help="Freshly re-fetched and normalized artifact")
    parser.add_argument("--outcomes", type=Path, help="Explicit refetch outcome artifact")
    parser.add_argument("--out", required=True, type=Path)
    parser.add_argument("--manifest", type=Path)
    args = parser.parse_args(argv)
    manifest = args.manifest or args.out.with_suffix(".json")
    outcomes, counts = build_backfill(args.db, args.normalized, args.outcomes)
    args.out.parent.mkdir(parents=True, exist_ok=True)
    write_outputs(args.out, manifest, outcomes, counts)
    print(f"[pipeline:backfill-images] attempted={counts['attempted']} unattempted={counts['unattempted']} succeeded={counts['succeeded']} fallback={counts['fallback']}")


if __name__ == "__main__":
    main()
