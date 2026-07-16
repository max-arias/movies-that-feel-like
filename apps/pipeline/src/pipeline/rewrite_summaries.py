"""Rewrite existing summaries and emit SQL only after the complete run succeeds."""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
import os
import re
import sqlite3
import sys
import tempfile
import threading
import time
from pathlib import Path
from typing import Any
from pipeline.extraction_input import SYSTEM_INSTRUCTION


def sql_quote(value: str) -> str:
    return "'" + value.replace("'", "''") + "'"


_MIGRATION_PREFIX = re.compile(r"^(\d+)_.*\.sql$")


def next_migration_number(migrations_dir: Path) -> int:
    numbers = [
        int(match.group(1))
        for path in migrations_dir.glob("*.sql")
        if (match := _MIGRATION_PREFIX.match(path.name))
    ]
    return max(numbers, default=0) + 1


def write_migration(
    migrations_dir: Path,
    sql: str,
    *,
    timestamp: datetime | None = None,
) -> Path:
    if not migrations_dir.is_dir():
        raise ValueError(f"migrations directory does not exist: {migrations_dir}")
    number = next_migration_number(migrations_dir)
    stamp = (timestamp or datetime.now(timezone.utc)).astimezone(timezone.utc)
    filename = f"{number:04d}_rewrite_vibe_summaries_{stamp:%Y%m%dT%H%M%SZ}.sql"
    target = migrations_dir / filename
    # Link a fully-written temporary file into place: this is atomic and
    # refuses an existing target rather than replacing it.
    temporary = tempfile.NamedTemporaryFile(
        mode="w", encoding="utf-8", dir=migrations_dir, prefix=".rewrite-", delete=False
    )
    temporary_path = Path(temporary.name)
    try:
        with temporary:
            temporary.write(sql)
            temporary.flush()
            os.fsync(temporary.fileno())
        os.link(temporary_path, target)
        return target
    finally:
        temporary_path.unlink(missing_ok=True)


def build_summary_prompt(title: str, selftext: str) -> dict[str, str]:
    parts = ["## Post", f"- **Title**: {title or '(no title)'}"]
    if selftext and selftext.strip():
        parts.append(f"- **Selftext**:\n{selftext.strip()[:1000]}")
    return {"system_prompt": SYSTEM_INSTRUCTION.strip(), "user_prompt": "\n".join(parts)}


class MalformedSummaryError(ValueError):
    """The provider returned output that cannot be used as a summary."""


def normalize_summary(value: Any) -> str:
    """Accept only a nonblank, plain-text fragment from message.content."""
    if not isinstance(value, str):
        raise MalformedSummaryError("provider message.content was not text")
    summary = " ".join(value.split())
    if not summary or summary.startswith("```") or summary.startswith(("{", "[")):
        raise MalformedSummaryError("provider returned malformed summary text")
    if summary.lower().startswith(("summary:", "mood:")):
        raise MalformedSummaryError("provider returned a labelled response")
    return summary


def retry_delay(exc: BaseException, attempt: int, backoff_seconds: float) -> float | None:
    """Return a delay for transient provider errors, or None when non-retryable."""
    response = getattr(exc, "response", None)
    status = getattr(response, "status_code", getattr(exc, "status_code", None))
    retryable = bool(getattr(exc, "retryable", False))
    if status in (408, 429) or (isinstance(status, int) and 500 <= status <= 599):
        retryable = True
    name = type(exc).__name__.lower()
    if any(word in name for word in ("timeout", "connection", "transport")):
        retryable = True
    # These failures occur while parsing/validating the model response.  Keep
    # ordinary ValueError/programmer failures terminal.
    if any(word in name for word in ("malformedsummary", "validationerror", "jsondecodeerror")):
        retryable = True
    if not retryable:
        return None

    retry_after = getattr(exc, "retry_after", None)
    headers = getattr(response, "headers", {}) or {}
    if retry_after is None:
        retry_after = headers.get("retry-after") or headers.get("Retry-After")
    if retry_after is not None:
        try:
            return max(0.0, float(retry_after))
        except (TypeError, ValueError):
            pass
    return max(0.0, backoff_seconds * (2 ** max(0, attempt - 1)))


def _call_summary(
    client: Any,
    model: str,
    prompt: dict[str, str],
    max_attempts: int,
    backoff_seconds: float,
) -> str:
    kwargs: dict[str, Any] = {"messages": [
        {"role": "system", "content": prompt["system_prompt"]},
        {"role": "user", "content": prompt["user_prompt"]}],
        "model": model,
        "temperature": 0.1,
    }
    last: Exception | None = None
    for attempt in range(1, max(1, max_attempts) + 1):
        try:
            response = client.chat.completions.create(**kwargs)
            choices = getattr(response, "choices", None)
            message = choices[0].message if choices else None
            return normalize_summary(getattr(message, "content", None))
        except Exception as exc:
            last = exc
            delay = retry_delay(exc, attempt, backoff_seconds)
            if delay is None or attempt >= max(1, max_attempts):
                raise
            time.sleep(delay)
    raise RuntimeError(f"summary provider failed: {last}") from last


def rewrite_rows(
    rows: list[tuple[Any, Any, Any]],
    client_factory: Any,
    model: str,
    *,
    workers: int,
    max_attempts: int,
    backoff_seconds: float,
    progress: Any = None,
) -> dict[str, str]:
    """Rewrite rows concurrently; raise before returning on any row failure."""
    if workers < 1:
        raise ValueError("workers must be at least 1")
    local = threading.local()

    def work(row: tuple[Any, Any, Any]) -> tuple[str, str]:
        if not hasattr(local, "client"):
            local.client = client_factory()
        post_id, title, selftext = row
        summary = _call_summary(
            local.client,
            model,
            build_summary_prompt(title, selftext),
            max_attempts,
            backoff_seconds,
        )
        return str(post_id), summary

    results: dict[str, str] = {}
    total = len(rows)
    completed = 0
    with ThreadPoolExecutor(max_workers=workers) as executor:
        futures = [executor.submit(work, row) for row in rows]
        try:
            for future in as_completed(futures):
                post_id, summary = future.result()
                results[post_id] = summary
                completed += 1
                if progress:
                    progress(completed, total, post_id)
        except BaseException:
            for future in futures:
                future.cancel()
            raise
    return results


def render_updates(summaries: dict[str, str]) -> str:
    return "".join(
        f"UPDATE imported_vibe_posts SET vibe_summary = {sql_quote(summaries[post_id])} "
        f"WHERE reddit_post_id = {sql_quote(post_id)};\n"
        for post_id in sorted(summaries)
    )


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Create a migration for concise vibe-summary rewrites")
    parser.add_argument("--db", default="data/app.db")
    parser.add_argument("--migrations-dir", default="packages/db/migrations")
    parser.add_argument("--model", default="deepseek-v4-flash")
    parser.add_argument("--api-base", default=None)
    parser.add_argument("--max-attempts", type=int, default=3)
    parser.add_argument("--backoff-seconds", type=float, default=5.0)
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--timeout-seconds", type=float, default=45.0)
    return parser


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)
    try:
        with sqlite3.connect(args.db) as connection:
            rows = connection.execute(
                "SELECT reddit_post_id, title, selftext "
                "FROM imported_vibe_posts "
                "WHERE vibe_summary IS NOT NULL AND trim(vibe_summary) <> '' "
                "ORDER BY reddit_post_id"
            ).fetchall()
        if args.workers < 1 or args.timeout_seconds <= 0:
            raise ValueError("workers must be at least 1 and timeout-seconds must be positive")
        from pipeline.extract import _detect_provider, _resolve_openai_config
        if _detect_provider(args.model) != "openai":
            raise ValueError("rewrite_summaries requires an OpenAI-compatible model")
        from openai import OpenAI
        import httpx
        model, api_key, base_url = _resolve_openai_config(args.model, args.api_base)
        def client_factory() -> Any:
            return OpenAI(
                api_key=api_key,
                base_url=base_url,
                timeout=httpx.Timeout(args.timeout_seconds, connect=min(10.0, args.timeout_seconds)),
                max_retries=0,
            )

        def report(done: int, total: int, post_id: str) -> None:
            print(f"[pipeline:rewrite-summaries] [{done}/{total}] completed {post_id}", flush=True)

        summaries = rewrite_rows(
            rows,
            client_factory,
            model,
            workers=args.workers,
            max_attempts=args.max_attempts,
            backoff_seconds=args.backoff_seconds,
            progress=report,
        )
        output = render_updates(summaries)
        migration = write_migration(Path(args.migrations_dir), output)
        print(f"[pipeline:rewrite-summaries] migration written to {migration}")
    except Exception as exc:
        print(f"[pipeline:rewrite-summaries] failed: {exc}", file=sys.stderr)
        raise SystemExit(1) from exc


if __name__ == "__main__":
    main()
