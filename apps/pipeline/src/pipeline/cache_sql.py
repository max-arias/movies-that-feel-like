"""Render pipeline cache observations as direct, repeatable SQLite/D1 DML.

Cache tables intentionally have no unique constraint: they are an audit log of
observations.  Idempotency is therefore expressed in each statement with a
NULL-safe ``NOT EXISTS`` predicate rather than ``INSERT OR IGNORE``.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime
from pathlib import Path
from typing import Any

from pipeline.enrich_cache import CACHE_COLUMNS

EXTRACTION_COLUMNS = (
    "cache_key", "reddit_post_id", "content_hash", "prompt_hash",
    "prompt_version", "provider", "model", "api_base", "instructor_mode",
    "extractor_version", "payload_schema_version", "outcome",
    "extraction_payload", "source_normalized_checksum", "created_at", "fresh_until",
)
SPECS = {
    "enrichment": ("enrichment_resolution_cache", CACHE_COLUMNS, ("matched", "not_found")),
    "extraction": ("extraction_result_cache", EXTRACTION_COLUMNS, ("extracted", "no_result")),
}


def _required(record: dict[str, Any], name: str, *, kind: str) -> Any:
    value = record.get(name)
    if value is None or (isinstance(value, str) and not value):
        raise ValueError(f"{kind} cache record requires non-empty {name}")
    return value


def _bounded(value: Any, name: str, kind: str, maximum: int) -> None:
    if not isinstance(value, str) or not 1 <= len(value) <= maximum:
        raise ValueError(f"{kind} cache record has invalid {name}")


def _json_text(value: Any, name: str, kind: str) -> None:
    if value is None:
        return
    if isinstance(value, (dict, list)):
        return
    if not isinstance(value, str):
        raise ValueError(f"{kind} cache record has invalid {name}")
    try:
        json.loads(value)
    except json.JSONDecodeError as exc:
        raise ValueError(f"{kind} cache record has invalid JSON in {name}") from exc


def _timestamp(value: Any, name: str, kind: str) -> None:
    if not isinstance(value, str) or not value:
        raise ValueError(f"{kind} cache record has invalid {name}")
    try:
        datetime.fromisoformat(value.replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError(f"{kind} cache record has invalid {name}") from exc


def validate_record(kind: str, record: dict[str, Any]) -> None:
    """Validate every value against the corresponding cache migration checks."""
    if kind not in SPECS or not isinstance(record, dict):
        raise ValueError(f"invalid {kind} cache record")
    outcome = record.get("outcome")
    if outcome not in SPECS[kind][2]:
        raise ValueError(f"unsupported {kind} cache outcome: {outcome!r}")
    if kind == "enrichment":
        for name, maximum in (("provider", 64), ("candidate_key", 512), ("query_title", 512), ("language", 35), ("resolver_version", 64)):
            _bounded(_required(record, name, kind=kind), name, kind, maximum)
        version = _required(record, "candidate_key_version", kind=kind)
        if not isinstance(version, int) or isinstance(version, bool) or version <= 0:
            raise ValueError(f"{kind} cache record has invalid candidate_key_version")
        year = record.get("query_year")
        if year is not None and (not isinstance(year, int) or isinstance(year, bool) or not 1800 <= year <= 3000):
            raise ValueError(f"{kind} cache record has invalid query_year")
        media = _required(record, "query_media_type", kind=kind)
        if media not in ("movie", "tv", "game"):
            raise ValueError(f"{kind} cache record has invalid query_media_type")
        adult = record.get("include_adult")
        if adult not in (0, 1, False, True):
            raise ValueError(f"{kind} cache record has invalid include_adult")
        _timestamp(record.get("fetched_at"), "fetched_at", kind)
        _timestamp(record.get("fresh_until"), "fresh_until", kind)
        schema_version = _required(record, "payload_schema_version", kind=kind)
        if not isinstance(schema_version, int) or isinstance(schema_version, bool) or schema_version <= 0:
            raise ValueError(f"{kind} cache record has invalid payload_schema_version")
        resolved_type = record.get("resolved_type")
        if resolved_type is not None and resolved_type not in ("movie", "tv", "game"):
            raise ValueError(f"{kind} cache record has invalid resolved_type")
        resolved_year = record.get("resolved_year")
        if resolved_year is not None and (not isinstance(resolved_year, int) or isinstance(resolved_year, bool) or not 1800 <= resolved_year <= 3000):
            raise ValueError(f"{kind} cache record has invalid resolved_year")
        if record.get("source_run_id") is not None and (not isinstance(record["source_run_id"], int) or isinstance(record["source_run_id"], bool)):
            raise ValueError(f"{kind} cache record has invalid source_run_id")
        _json_text(record.get("normalized_payload"), "normalized_payload", kind)
        if outcome == "matched":
            if record.get("provider_record_id") is None or resolved_type is None:
                raise ValueError("matched enrichment cache record requires provider identity and resolved_type")
        elif record.get("provider_record_id") is not None or resolved_type is not None:
            raise ValueError("not_found enrichment cache record cannot contain provider identity")
    else:
        for name, maximum in (("cache_key", 512), ("reddit_post_id", 128), ("content_hash", 256), ("prompt_hash", 256), ("prompt_version", 128), ("provider", 64), ("model", 256), ("extractor_version", 128), ("payload_schema_version", 128), ("source_normalized_checksum", 256)):
            _bounded(_required(record, name, kind=kind), name, kind, maximum)
        mode = _required(record, "instructor_mode", kind=kind)
        if mode not in ("auto", "json", "md_json", "tools"):
            raise ValueError(f"{kind} cache record has invalid instructor_mode")
        _timestamp(record.get("created_at"), "created_at", kind)
        _timestamp(record.get("fresh_until"), "fresh_until", kind)
        api_base = record.get("api_base")
        if api_base is not None and (not isinstance(api_base, str) or not 1 <= len(api_base) <= 2048):
            raise ValueError(f"{kind} cache record has invalid api_base")
        payload = record.get("extraction_payload")
        _json_text(payload, "extraction_payload", kind)
        if outcome == "extracted" and payload is None:
            raise ValueError("extracted cache record requires extraction_payload")
        if outcome == "no_result" and payload is not None:
            raise ValueError("no_result cache record cannot contain extraction_payload")


def sql_literal(value: Any) -> str:
    if value is None:
        return "NULL"
    if isinstance(value, bool):
        return "1" if value else "0"
    if isinstance(value, (int, float)):
        return str(value)
    return "'" + str(value).replace("'", "''") + "'"


def _value(record: dict[str, Any], column: str) -> Any:
    value = record.get(column)
    if column in {"normalized_payload", "extraction_payload"} and isinstance(value, (dict, list)):
        return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return value


def render_statement(kind: str, record: dict[str, Any]) -> str:
    table, columns, outcomes = SPECS[kind]
    validate_record(kind, record)
    names = ", ".join(f'"{column}"' for column in columns)
    values = [_value(record, column) for column in columns]
    rendered = ", ".join(sql_literal(value) for value in values)
    checks = " AND ".join(
        f'("{column}" IS {sql_literal(value)})' for column, value in zip(columns, values)
    )
    return (
        f'INSERT INTO "{table}" ({names}) SELECT {rendered} '
        f'WHERE NOT EXISTS (SELECT 1 FROM "{table}" WHERE {checks});'
    )


def render_chunks(
    kind: str,
    records: list[dict[str, Any]],
    *,
    max_statements: int = 100,
    max_bytes: int = 64 * 1024,
) -> list[str]:
    """Return UTF-8 SQL chunks bounded by both statement count and bytes."""
    if kind not in SPECS or max_statements < 1 or max_bytes < 1:
        raise ValueError("invalid cache kind or chunk limits")
    # Validate the complete artifact before rendering any output.  In
    # particular, unsupported outcomes must never disappear silently.
    for row in records:
        validate_record(kind, row)
    statements = [render_statement(kind, row) for row in records]
    chunks: list[str] = []
    current: list[str] = []
    size = 0
    for statement in statements:
        statement_size = len((statement + "\n").encode("utf-8"))
        if statement_size > max_bytes:
            raise ValueError(
                f"{kind} cache statement is {statement_size} bytes, over max_bytes={max_bytes}"
            )
        if current and (len(current) >= max_statements or size + statement_size > max_bytes):
            chunks.append("\n".join(current) + "\n")
            current, size = [], 0
        current.append(statement)
        size += statement_size
        # A single statement is never split; this keeps SQL valid.
    if current:
        chunks.append("\n".join(current) + "\n")
    return chunks


def artifact_sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_cache_sql(
    *,
    extraction_records: list[dict[str, Any]],
    enrichment_records: list[dict[str, Any]],
    extraction_artifact: Path,
    enrichment_artifact: Path,
    output_dir: Path,
    max_statements: int = 100,
    max_bytes: int = 64 * 1024,
) -> dict[str, Any]:
    output_dir.mkdir(parents=True, exist_ok=True)
    sources = (("extraction", extraction_records, extraction_artifact), ("enrichment", enrichment_records, enrichment_artifact))
    result: dict[str, Any] = {"chunks": [], "sources": {}}
    for kind, records, artifact in sources:
        chunks = render_chunks(kind, records, max_statements=max_statements, max_bytes=max_bytes)
        paths: list[dict[str, Any]] = []
        for index, content in enumerate(chunks, 1):
            path = output_dir / f"{kind}-cache-{index:04d}.sql"
            path.write_text(content, encoding="utf-8")
            digest = hashlib.sha256(content.encode("utf-8")).hexdigest()
            entry = {"path": str(path), "sha256": digest, "statement_count": content.count(";")}
            paths.append(entry)
            result["chunks"].append(entry)
        result["sources"][kind] = {
            "artifact": str(artifact), "artifact_sha256": artifact_sha256(artifact),
            "record_count": len(records),
            "chunk_paths": paths,
        }
    return result


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Render cache observations to D1/SQLite SQL")
    parser.add_argument("--extraction", type=Path, required=True)
    parser.add_argument("--enrichment", type=Path, required=True)
    parser.add_argument("--out-dir", type=Path, required=True)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--max-statements", type=int, default=100)
    parser.add_argument("--max-bytes", type=int, default=64 * 1024)
    return parser


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)
    extraction = json.loads(args.extraction.read_text(encoding="utf-8"))
    enrichment = json.loads(args.enrichment.read_text(encoding="utf-8"))
    manifest = write_cache_sql(
        extraction_records=extraction.get("cache_records", []),
        enrichment_records=enrichment.get("cache_records", []),
        extraction_artifact=args.extraction, enrichment_artifact=args.enrichment,
        output_dir=args.out_dir, max_statements=args.max_statements, max_bytes=args.max_bytes,
    )
    args.manifest.parent.mkdir(parents=True, exist_ok=True)
    args.manifest.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
