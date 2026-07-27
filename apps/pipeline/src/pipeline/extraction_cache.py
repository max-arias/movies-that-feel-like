"""D1 snapshot cache primitives for post extraction."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path
from datetime import datetime, timezone
from typing import Any

from pipeline.models import PostExtraction

EXTRACTION_CACHE_VERSION = 1
EXTRACTOR_VERSION = "extractor-v3"
PAYLOAD_VERSION = 1


def canonical_json(value: Any) -> str:
    return json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=False)


def extraction_cache_key(*, prompt_input: dict[str, Any], system_prompt: str,
                         user_prompt: str, schema: dict[str, Any], provider: str,
                         model: str, api_base: str | None, instructor_mode: str,
                         extractor_version: str = EXTRACTOR_VERSION,
                         payload_version: int = PAYLOAD_VERSION) -> str:
    value = {"prompt_input": prompt_input, "system_prompt": system_prompt,
             "user_prompt": user_prompt, "response_schema": schema,
             "provider": provider, "model": model, "api_base": api_base,
             "instructor_mode": instructor_mode, "extractor_version": extractor_version,
             "payload_version": payload_version}
    return hashlib.sha256(canonical_json(value).encode()).hexdigest()


def read_cache_snapshot(path: str) -> list[dict[str, Any]]:
    value = json.loads(Path(path).read_text(encoding="utf-8"))
    if not isinstance(value, list):
        raise ValueError("cache snapshot must be Wrangler's top-level results array")
    rows: list[dict[str, Any]] = []
    for page in value:
        if isinstance(page, dict) and isinstance(page.get("results"), list):
            rows.extend(x for x in page["results"] if isinstance(x, dict))
    return rows


def _fresh(row: dict[str, Any], now: datetime) -> bool:
    try:
        until = datetime.fromisoformat(str(row["fresh_until"]).replace("Z", "+00:00"))
        return until > now
    except (KeyError, TypeError, ValueError):
        return False


def lookup(rows: list[dict[str, Any]], key: str, *, now: datetime | None = None) -> dict[str, Any] | None:
    now = now or datetime.now(timezone.utc)
    candidates = [r for r in rows if r.get("cache_key") == key and _fresh(r, now)]
    # Migration 0035 defines newest by created_at (there is no fetched_at).
    candidates.sort(key=lambda r: (str(r.get("created_at", "")), int(r.get("id", 0) or 0)), reverse=True)
    for row in candidates:
        payload = row.get("extraction_payload") or row.get("payload")
        if row.get("outcome") == "no_result" and payload is None:
            return PostExtraction(reddit_post_id=str(row.get("reddit_post_id", ""))).model_dump()
        if row.get("outcome") not in ("extracted", "no_result") or not isinstance(payload, (dict, str)):
            continue
        try:
            parsed = json.loads(payload) if isinstance(payload, str) else payload
            validated = PostExtraction.model_validate(parsed).model_dump()
        except (TypeError, ValueError, json.JSONDecodeError):
            continue
        return validated
    return None


def make_cache_record(*, key: str, post_id: str, payload: dict[str, Any] | None, outcome: str,
                      content_hash: str = "content", prompt_hash: str = "prompt",
                      prompt_version: str = "extraction-prompt-v3", provider: str = "",
                      model: str = "", api_base: str | None = None,
                      instructor_mode: str = "auto", extractor_version: str = EXTRACTOR_VERSION,
                      source_normalized_checksum: str = "normalized", created_at: str | None = None) -> dict[str, Any]:
    now = datetime.now(timezone.utc) if created_at is None else datetime.fromisoformat(created_at.replace("Z", "+00:00"))
    days = 90 if outcome == "extracted" else 7
    stamp = now.isoformat().replace("+00:00", "Z")
    return {"cache_key": key, "reddit_post_id": post_id, "content_hash": content_hash,
            "prompt_hash": prompt_hash, "prompt_version": prompt_version,
            "provider": provider, "model": model, "api_base": api_base,
            "instructor_mode": instructor_mode, "extractor_version": extractor_version,
            "payload_schema_version": str(PAYLOAD_VERSION), "outcome": outcome,
            "extraction_payload": payload if outcome == "extracted" else None,
            "source_normalized_checksum": source_normalized_checksum,
            "created_at": stamp,
            "fresh_until": datetime.fromtimestamp(now.timestamp() + days * 86400, timezone.utc).isoformat().replace("+00:00", "Z")}


# Small public aliases keep the cache contract convenient for focused tests and
# callers without duplicating the identity implementation.
make_cache_key = extraction_cache_key
