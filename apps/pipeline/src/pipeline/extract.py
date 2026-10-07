"""
pipeline.extract — LLM extraction of recommendations and vibe summaries
from normalized posts and their comment trees.

Dry-run mode (``--dry-run``) builds prompts without calling any LLM.
Real mode defaults to **Gemini** — model ``google/gemini-3.8-flash`` with
``GEMINI_API_KEY`` and the native Google GenAI SDK.

An explicit ``openai/…`` or bare model id selects **OpenAI-compatible**
extraction with ``OPENAI_API_KEY`` and optional ``--api-base`` or
``OPENAI_BASE_URL``. There is no automatic provider fallback.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import random
import sys
import threading
import time
import email.utils
import fcntl
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.extraction_input import build_extraction_prompt, flatten_comments
from pipeline.extraction_input import EXTRACTION_PROMPT_VERSION
from pipeline.extraction_cache import (EXTRACTOR_VERSION, PAYLOAD_VERSION,
                                       canonical_json, extraction_cache_key, lookup as lookup_cache,
                                       make_cache_record, read_cache_snapshot)
from pipeline.models import PostExtraction
from pipeline.paths import checkpoints_dir, ensure_pipeline_dirs, normalized_dir, working_dir

EXTRACTION_SCHEMA_VERSION = "post-extraction-v3"
DEFAULT_EXTRACTION_MODEL = "google/gemini-3.8-flash"


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Extract recommendations and vibe summaries from normalized posts.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "Environment:\n"
            "  GEMINI_API_KEY          API key for the default Gemini provider.\n"
            "  OPENAI_API_KEY          API key for explicit OpenAI-compatible models.\n"
            "  OPENAI_BASE_URL         Override base URL for OpenAI-compatible.\n"
            "\nRetry (per-post):\n"
            "  On transient provider failures the call is retried with\n"
            "  exponential backoff: wait = backoff-seconds * backoff-multiplier^(attempt-1).\n"
            "  After max-attempts the error is recorded and the run fails safely.\n"
            "\nExamples:\n"
            "  # Dry-run — no API key needed\n"
            "  pipeline:extract --dry-run --limit 1\n"
            "\n"
            "  # Gemini extraction (default model)\n"
            "  GEMINI_API_KEY=... pipeline:extract --limit 5 --max-attempts 5\n"
            "\n"
            "  # Explicit OpenAI-compatible extraction\n"
            "  OPENAI_API_KEY=... pipeline:extract --model openai/gpt-4.1-mini\n"
        ),
    )
    parser.add_argument(
        "--input",
        default=None,
        help="Path to normalized artifact (default: latest data/working/normalized/*.json)",
    )
    parser.add_argument(
        "--out",
        default=None,
        help=(
            "Output path. In dry-run mode default is "
            "data/working/extraction-dry-run-{timestamp}.json; "
            "in real mode default is data/working/extraction-{timestamp}.json"
        ),
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=None,
        help="Maximum number of posts to process",
    )
    parser.add_argument(
        "--max-comments",
        type=int,
        default=80,
        help="Maximum comments per post to include in the prompt (default: %(default)s)",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Build prompts and preview only — no LLM calls",
    )
    parser.add_argument(
        "--model",
        default=DEFAULT_EXTRACTION_MODEL,
        help=(
            "Model identifier.  Prefix with ``google/`` for Gemini, "
            "``openai/`` or bare name for OpenAI-compatible "
            "(default: %(default)s)"
        ),
    )
    parser.add_argument(
        "--mode",
        default=None,
        choices=["json", "md_json", "tools"],
        help=(
            "Instructor extraction mode (default: json). Gemini supports "
            "json and tools; md_json is only supported for OpenAI-compatible models."
        ),
    )
    parser.add_argument(
        "--api-base",
        default=None,
        help=(
            "Custom OpenAI-compatible base URL (otherwise OPENAI_BASE_URL "
            "or the SDK default). Not supported for Gemini."
        ),
    )
    parser.add_argument("--sleep-seconds", type=float, default=0.0,
                        help="Deprecated and ignored; use --rate-limit-rpm")
    parser.add_argument("--concurrency", type=int, default=1, help="Maximum posts in flight (default: %(default)s)")
    parser.add_argument("--rate-limit-rpm", type=float, default=5.0, help="Global request-start limit (default: %(default)s RPM)")
    parser.add_argument(
        "--max-attempts",
        type=int,
        default=3,
        help="Total attempts per post for transient provider failures (default: %(default)s)",
    )
    parser.add_argument(
        "--backoff-seconds",
        type=float,
        default=5.0,
        help="Initial retry sleep before exponential backoff (default: %(default)s)",
    )
    parser.add_argument(
        "--backoff-multiplier",
        type=float,
        default=2.0,
        help="Exponential backoff multiplier per retry (default: %(default)s)",
    )
    parser.add_argument(
        "--allow-errors",
        action="store_true",
        help="Explicitly allow failed posts in the output (unsafe; consumers may still reject it)",
    )
    parser.add_argument("--allow-empty", action="store_true", help=argparse.SUPPRESS)
    parser.add_argument("--cache-snapshot", default=None,
                        help="Raw Wrangler JSON snapshot ([{results:[...]}]) for extraction cache reads")
    return parser


def _latest_normalized() -> Path:
    """Return the most recent ``*.json`` in data/working/normalized/."""
    candidates = sorted(normalized_dir().glob("*.json"))
    if not candidates:
        raise SystemExit(
            "[pipeline:extract] No normalized artifacts found — run normalize first"
        )
    return candidates[-1]


def _detect_provider(model: str) -> str:
    """Return ``'google'`` or ``'openai'`` based on *model*."""
    # google/… is Gemini; everything else (openai/… or bare) is OpenAI-compatible
    if model.startswith("google/"):
        return "google"
    return "openai"


def _resolve_instructor_mode(provider: str, model: str, mode: str | None) -> str:
    """Return the effective Instructor mode for a provider/model selection."""
    if provider == "google" and mode == "md_json":
        raise SystemExit("[pipeline:extract] Gemini supports --mode json or tools, not md_json.")
    return mode or "json"


def _resolve_openai_config(
    model: str, api_base: str | None
) -> tuple[str, str, str | None]:
    """Resolve OpenAI-compatible credentials and model name.

    Returns ``(actual_model, api_key, resolved_base_url)``.
    *actual_model* strips ``openai/`` prefix when present.
    """
    actual_model = model.removeprefix("openai/")

    api_key = os.environ.get("OPENAI_API_KEY")
    resolved_base = api_base or os.environ.get("OPENAI_BASE_URL")
    if not api_key:
        raise SystemExit(
            "[pipeline:extract] OPENAI_API_KEY must be set for OpenAI-compatible models. "
            "Use --dry-run to preview prompts without a key."
        )

    return actual_model, api_key, resolved_base


def _build_extraction_client(
    provider: str,
    model: str,
    mode: str | None,
    api_base: str | None,
) -> tuple[Any, str, dict[str, Any]]:
    """Build an Instructor client for *provider*.

    Returns ``(client, actual_model, audit)`` where *audit* is a
    serialisable dict of provider metadata (no secrets).
    """
    audit: dict[str, Any] = {}
    effective_mode = _resolve_instructor_mode(provider, model, mode)

    if provider == "google":
        import instructor
        from google import genai
        from google.genai import types

        if api_base is not None:
            raise SystemExit("[pipeline:extract] --api-base is only supported for OpenAI-compatible models.")
        gemini_key = os.environ.get("GEMINI_API_KEY")
        if not gemini_key:
            raise SystemExit(
                "[pipeline:extract] GEMINI_API_KEY must be set "
                "for Google models. Use --dry-run to preview without a key."
            )

        actual_model = model.removeprefix("google/")
        google_client = genai.Client(
            api_key=gemini_key,
            http_options=types.HttpOptions(
                timeout=180_000, retry_options=types.HttpRetryOptions(attempts=1),
            ),
        )
        instr_mode = {"json": instructor.Mode.JSON, "tools": instructor.Mode.TOOLS}[effective_mode]
        client = instructor.from_genai(google_client, mode=instr_mode, model=actual_model)
        audit["provider"] = "google"
        audit["mode"] = effective_mode
        return client, actual_model, audit

    # ── OpenAI-compatible ─────────────────────────────────────────────
    import instructor
    from openai import OpenAI

    actual_model, api_key, resolved_base = _resolve_openai_config(
        model, api_base
    )

    import httpx
    openai_client = OpenAI(
        api_key=api_key, base_url=resolved_base,
        timeout=httpx.Timeout(180.0, connect=10.0), max_retries=0,
    )

    instr_mode = {
        "json": instructor.Mode.JSON,
        "md_json": instructor.Mode.MD_JSON,
        "tools": instructor.Mode.TOOLS,
    }[effective_mode]

    client = instructor.from_openai(openai_client, mode=instr_mode)

    audit["provider"] = "openai"
    audit["mode"] = effective_mode
    audit["api_base_set"] = resolved_base is not None
    audit["api_base"] = resolved_base
    return client, actual_model, audit


class _RequestLimiter:
    def __init__(self, rpm: float) -> None:
        self.interval = 60.0 / rpm if rpm > 0 else 0.0
        self.lock = threading.Lock()
        self.next_start = 0.0
        self.cooldown_until = 0.0

    def wait(self, stopped: threading.Event) -> bool:
        with self.lock:
            now = time.monotonic()
            start = max(now, self.next_start, self.cooldown_until)
            self.next_start = start + self.interval
        return not stopped.wait(max(0.0, start - now))

    def cooldown(self, seconds: float) -> None:
        with self.lock:
            self.cooldown_until = max(self.cooldown_until, time.monotonic() + max(0, seconds))


def _malformed_model_json(value: BaseException | str) -> bool:
    """Recognize provider output parse failures, not local schema/program bugs."""
    text = str(value).lower()
    return "invalid json" in text and "invalid escape" in text


def _exception_chain(exc: BaseException):
    """Walk Instructor's last_error and Python chains, including cycles."""
    seen: set[int] = set()
    stack = [exc]
    while stack:
        current = stack.pop()
        if id(current) in seen:
            continue
        seen.add(id(current))
        yield current
        for attr in ("last_error", "__cause__", "__context__"):
            nested = getattr(current, attr, None)
            if isinstance(nested, BaseException):
                stack.append(nested)


def _provider_status(exc: BaseException) -> int | None:
    for status in (getattr(exc, "status_code", None),
                   getattr(getattr(exc, "response", None), "status_code", None),
                   getattr(exc, "code", None)):
        if isinstance(status, int) and not isinstance(status, bool):
            return status
    return None


def _fatal_provider_error(exc: BaseException) -> dict[str, Any] | None:
    for current in _exception_chain(exc):
        status = _provider_status(current)
        if status not in (401, 402, 403):
            continue
        action = {
            401: "Check the provider API credentials before retrying.",
            402: ("Check provider account funding/usage and provider service status or support "
                  "before retrying; insufficient funds may be upstream at the provider."),
            403: "Restore provider account permissions or model access before retrying.",
        }[status]
        return {"fatal": True, "provider_status": status, "action": action,
                "error": f"Provider HTTP {status}: {current}. {action}"}
    return None


def _account_error_record(error: dict[str, Any]) -> bool:
    """Do not permanently resume account errors, including old checkpoints."""
    if error.get("fatal") or error.get("provider_status") in (401, 402, 403):
        return True
    text = str(error.get("error", "")).lower()
    markers = ("http ", "error code: ", "status code: ", "status_code=")
    return ("insufficient account funds" in text or
            any(f"{marker}{status}" in text
                for marker in markers for status in (401, 402, 403)))


def _retry_after(response: Any) -> float | None:
    headers = getattr(response, "headers", {}) or {}
    milliseconds = headers.get("retry-after-ms")
    value = milliseconds or headers.get("Retry-After") or headers.get("retry-after")
    if not value:
        return None
    try:
        return float(value) / (1000 if milliseconds else 1)
    except (TypeError, ValueError):
        try:
            return max(0.0, email.utils.parsedate_to_datetime(value).timestamp() - time.time())
        except (TypeError, ValueError, OverflowError):
            return None


def _retryable(exc: Exception) -> tuple[bool, float | None]:
    """Classify through Instructor wrappers and exception chains."""
    if _fatal_provider_error(exc):
        return False, None
    for current in _exception_chain(exc):
        status = _provider_status(current)
        if status is not None:
            retry = status in (408, 429) or 500 <= status <= 599
            return retry, _retry_after(getattr(current, "response", None)) if retry else None
        name = type(current).__name__.lower()
        if _malformed_model_json(current):
            return True, None
        if any(x in name for x in ("timeout", "connection", "connect", "read", "transport")):
            return True, None
    return False, None


def _wait_for_retry(
    limiter: _RequestLimiter, stopped: threading.Event, exc: Exception,
    retry_after: float | None, attempt: int, backoff_seconds: float,
    backoff_multiplier: float, label: str,
) -> None:
    if any(_provider_status(e) == 429 for e in _exception_chain(exc)) or retry_after is not None:
        limiter.cooldown(retry_after or 1.0)
    delay = retry_after
    if delay is None:
        delay = min(180.0, backoff_seconds * (backoff_multiplier ** (attempt - 1)))
        delay *= random.uniform(.8, 1.2)
    print(f"  {label} retrying in {delay:.1f}s: {exc}", flush=True)
    stopped.wait(delay)


def _extraction_result(extraction: PostExtraction, post_id: str, attempt: int) -> dict[str, Any]:
    result = extraction.model_dump()
    # Never replace an incorrect provider identity; that would poison the cache.
    if result.get("reddit_post_id") != post_id:
        raise ValueError(
            f"response post id {result.get('reddit_post_id')!r} "
            f"does not match prompt post id {post_id!r}"
        )
    result["attempt_count"] = attempt
    return result


def _run_extraction(
    prompts: list[dict[str, Any]],
    sleep_seconds: float,
    max_attempts: int,
    backoff_seconds: float,
    backoff_multiplier: float,
    *,
    client: Any,
    actual_model: str,
    provider: str,
    concurrency: int = 1,
    rate_limit_rpm: float = 5.0,
    on_complete: Any = None,
) -> tuple[dict[int, dict[str, Any]], list[dict[str, Any]]]:
    """Call Instructor for each prompt with per-post retry/backoff.

    *client* is the pre-built Instructor client, *actual_model* the
    provider-specific model id, and *provider* ``'google'`` or ``'openai'``.

    Returns ``(results_by_request_number, errors)``. Results retain their
    request number so failures cannot compress the result stream. Errors with
    ``fatal`` set identify an account-wide abort; unattempted posts stay pending.
    Already-started calls may finish and their successes are checkpointed.
    """
    limiter = _RequestLimiter(rate_limit_rpm)
    stopped = threading.Event()
    start_lock = threading.Lock()

    # Build the create() kwargs common to both providers.
    def process(item: tuple[int, dict[str, Any]]) -> tuple[int, dict[str, Any] | None, dict[str, Any] | None]:
        i, entry = item
        post_id = entry["reddit_post_id"]
        system = entry["system_prompt"]
        user = entry["user_prompt"]
        total = len(prompts)

        create_kwargs: dict[str, Any] = {
            "response_model": PostExtraction,
            "messages": [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            "max_retries": 0,
        }
        create_kwargs["model"] = actual_model
        # The native GenAI Instructor handler maps temperature to SDK config.
        create_kwargs["temperature"] = 0.1

        last_error: Exception | None = None
        calls = 0
        retry = False
        fatal = None

        for attempt in range(1, max_attempts + 1):
            try:
                if not limiter.wait(stopped):
                    break
                with start_lock:
                    if stopped.is_set():
                        break
                    calls += 1
                print(f"  [{i}/{total}] {post_id} extracting (attempt {attempt}/{max_attempts})", flush=True)
                extraction: PostExtraction = client.create(**create_kwargs)
                result = _extraction_result(extraction, post_id, attempt)
                rec_count = len(extraction.recommendations)
                print(f"  [{i}/{total}] {post_id} OK ({rec_count} recommendations)", flush=True)
                last_error = None
                return i, result, None

            except Exception as exc:
                last_error = exc
                fatal = _fatal_provider_error(exc)
                if fatal:
                    retry = False
                    with start_lock:
                        stopped.set()
                    break
                retry, retry_after = _retryable(exc)
                if attempt < max_attempts and retry:
                    _wait_for_retry(limiter, stopped, exc, retry_after, attempt,
                                    backoff_seconds, backoff_multiplier, f"[{i}/{total}]")
                else:
                    break

        if last_error is not None:
            error = {
                    "reddit_post_id": post_id,
                    "error": str(last_error),
                    "attempt_count": calls,
                    "model": actual_model,
                    "retryable": retry,
                }
            if fatal:
                error.update(fatal)
            print(f"  [{i}/{total}] {post_id} FAILED: {error['error']}", flush=True)
            return i, None, error
        # A worker stopped before its first provider call is still pending.
        return i, None, None

    by_index: dict[int, tuple[dict[str, Any] | None, dict[str, Any] | None]] = {}
    with ThreadPoolExecutor(max_workers=max(1, concurrency)) as executor:
        iterator = iter(enumerate(prompts, 1))
        futures = {executor.submit(process, item): item for item in [next(iterator, None) for _ in range(max(1, concurrency))] if item is not None}
        try:
            while futures:
                for future in as_completed(list(futures)):
                    item = futures.pop(future)
                    i, result, error = future.result()
                    if result is not None or error is not None:
                        by_index[i] = (result, error)
                        if on_complete:
                            on_complete(i, prompts[i - 1], result, error)
                    nxt = next(iterator, None)
                    if nxt is not None and not stopped.is_set():
                        futures[executor.submit(process, nxt)] = nxt
                    break
        except BaseException:
            for future in futures:
                future.cancel()
            raise
    return ({i: x for i in sorted(by_index) if (x := by_index[i][0]) is not None},
            [x for i in sorted(by_index) if (x := by_index[i][1]) is not None])


def _build_prompts(
    posts: list[dict[str, Any]],
    comments_by_post: dict[str, Any],
    max_comments: int,
) -> list[dict[str, Any]]:
    """Build prompt entries for each post."""
    prompts: list[dict[str, Any]] = []
    for post in posts:
        post_id = post.get("reddit_post_id", "?")
        comments = flatten_comments(
            comments_by_post, post_id, max_comments=max_comments
        )
        prompt = build_extraction_prompt(
            post, comments, max_comments=max_comments
        )
        prompts.append(
            {
                "reddit_post_id": post_id,
                "title_length": len(post.get("title", "")),
                "comment_count": len(comments),
                "prompt_input": {"post": post, "comments": comments, "max_comments": max_comments},
                **prompt,
            }
        )
    return prompts


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)
    selected_provider = _detect_provider(args.model)
    _resolve_instructor_mode(selected_provider, args.model, args.mode)
    if selected_provider == "google" and args.api_base is not None:
        raise SystemExit("[pipeline:extract] --api-base is only supported for OpenAI-compatible models.")

    ensure_pipeline_dirs()

    # Resolve input --------------------------------------------------------
    input_path: Path
    if args.input is not None:
        input_path = Path(args.input)
    else:
        input_path = _latest_normalized()

    norm = read_json_artifact(input_path)
    posts = norm.get("posts", [])
    comments_by_post = norm.get("comments_by_post", {})

    if args.limit is not None:
        posts = posts[: args.limit]

    print(
        f"[pipeline:extract] Processing up to {len(posts)} posts from "
        f"{input_path.name} (dry-run={args.dry_run})"
    )

    # Build prompts (common to both modes) ---------------------------------
    prompts = _build_prompts(posts, comments_by_post, args.max_comments)

    if args.dry_run:
        slug = timestamp_slug()
        if args.out is None:
            out = working_dir() / f"extraction-dry-run-{slug}.json"
        else:
            out = Path(args.out)

        artifact: dict[str, Any] = {
            "status": "extraction_dry_run",
            "source": "pipeline.extract",
            "created_at": datetime.now(timezone.utc).isoformat(),
            "normalized_artifact": str(input_path),
            "model": args.model,
            "args": {
                "dry_run": True,
                "limit": args.limit,
                "max_comments": args.max_comments,
                "max_attempts": args.max_attempts,
                "backoff_seconds": args.backoff_seconds,
                "backoff_multiplier": args.backoff_multiplier,
                "allow_errors": args.allow_errors,
                "allow_empty": args.allow_empty,
                "mode": args.mode,
                "api_base": args.api_base,
                "provider": {
                    "provider": _detect_provider(args.model),
                    "mode": _resolve_instructor_mode(_detect_provider(args.model), args.model, args.mode),
                    "api_base_set": args.api_base is not None,
                },
            },
            "posts_preview": [
                {
                    "reddit_post_id": p["reddit_post_id"],
                    "title_length": p.get("title_length", 0),
                    "comment_count": p["comment_count"],
                    "prompt_system_chars": len(p.get("system_prompt", "")),
                    "prompt_user_chars": len(p.get("user_prompt", "")),
                    "prompt_system": p.get("system_prompt", ""),
                    "prompt_user": p.get("user_prompt", ""),
                }
                for p in prompts
            ],
            "summary": {
                "post_count": len(prompts),
                "total_comment_count": sum(
                    p["comment_count"] for p in prompts
                ),
            },
        }

        write_json_artifact(out, artifact)

        print(
            f"[pipeline:extract] Dry-run complete: {len(prompts)} posts, "
            f"{artifact['summary']['total_comment_count']} comments"
        )
        print(f"[pipeline:extract] Artifact written to {out}")
        return

    # ── Real extraction path ─────────────────────────────────────────────
    provider = _detect_provider(args.model)
    print(f"[pipeline:extract] Provider: {provider}")
    print(f"[pipeline:extract] Model:    {args.model}")
    instructor_mode = _resolve_instructor_mode(provider, args.model, args.mode)
    print(f"[pipeline:extract] Mode:     {instructor_mode}")
    if args.api_base:
        print(f"[pipeline:extract] API base: {args.api_base}")

    # Resolve output-affecting identity without constructing a client. This is
    # important for an all-hit snapshot run: it must not require an API key.
    actual_model = args.model.removeprefix(f"{provider}/")
    resolved_api_base = (args.api_base or os.environ.get("OPENAI_BASE_URL")) if provider == "openai" else None

    # Operational tuning must not invalidate completed work; output-affecting
    # provider/model/mode and prompt/schema inputs must.
    schema_content = json.dumps(PostExtraction.model_json_schema(), sort_keys=True)
    identity = {"model": actual_model, "requested_model": args.model,
                "mode": instructor_mode, "provider": provider,
                "api_base": resolved_api_base,
                "prompt_version": EXTRACTION_PROMPT_VERSION,
                "schema_version": EXTRACTION_SCHEMA_VERSION, "schema": schema_content}
    run_id = hashlib.sha256((input_path.read_bytes().decode("utf-8") + json.dumps(identity, sort_keys=True)).encode()).hexdigest()[:20]
    checkpoint = checkpoints_dir() / f"{run_id}.jsonl"
    lock_handle = (checkpoints_dir() / f"{run_id}.lock").open("a+", encoding="utf-8")
    try:
        fcntl.flock(lock_handle.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
    except BlockingIOError:
        lock_handle.close()
        raise SystemExit(f"[pipeline:extract] checkpoint run is already locked: {run_id}")
    checkpoint_records: dict[int, dict[str, Any]] = {}
    def prompt_hash(prompt: dict[str, Any]) -> str:
        value = {"system": prompt.get("system_prompt", ""), "user": prompt.get("user_prompt", ""),
                 "schema_version": EXTRACTION_SCHEMA_VERSION, "schema": schema_content}
        return hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
    if checkpoint.exists():
        for line in checkpoint.read_text(encoding="utf-8").splitlines():
            try:
                record = json.loads(line)
                if record.get("prompt_hash") == prompt_hash(prompts[record["ordinal"]]):
                    # Successful records and permanent terminal errors are
                    # resumable; retryable errors must be attempted again.
                    error = record.get("error")
                    if isinstance(error, dict) and (
                        error.get("retryable") or _account_error_record(error)
                        or _malformed_model_json(error.get("error", ""))
                    ):
                        continue
                    if record.get("result") is not None or isinstance(error, dict):
                        checkpoint_records[record["ordinal"]] = record
            except (ValueError, KeyError, IndexError, json.JSONDecodeError):
                continue
    # Snapshot rows are validated before they become results. Invalid and
    # expired rows are misses, never errors.
    snapshot_rows = read_cache_snapshot(args.cache_snapshot) if args.cache_snapshot else []
    hit_results: dict[int, dict[str, Any]] = {}
    pending = []
    for ordinal, prompt in enumerate(prompts):
        prompt["ordinal"] = ordinal
        prompt["_cache_key"] = extraction_cache_key(
            prompt_input=prompt["prompt_input"], system_prompt=prompt["system_prompt"],
            user_prompt=prompt["user_prompt"], schema=PostExtraction.model_json_schema(),
            provider=provider, model=actual_model, api_base=resolved_api_base,
            instructor_mode=instructor_mode, prompt_version=EXTRACTION_PROMPT_VERSION,
            schema_version=EXTRACTION_SCHEMA_VERSION,
            settings={"temperature": 0.1, "max_comments": args.max_comments})
        hit = lookup_cache(snapshot_rows, prompt["_cache_key"],
                           expected_post_id=prompt["reddit_post_id"])
        if hit is not None:
            hit_results[ordinal] = hit
            continue
        if ordinal not in checkpoint_records:
            pending.append(prompt)
    checkpoint.parent.mkdir(parents=True, exist_ok=True)
    checkpoint_handle = checkpoint.open("a", encoding="utf-8")
    def save_checkpoint(i: int, prompt: dict[str, Any], result: Any, error: Any) -> None:
        ordinal = prompt["ordinal"]
        record = {"ordinal": ordinal, "reddit_post_id": prompt["reddit_post_id"],
                  "prompt_hash": prompt_hash(prompt), "schema_version": EXTRACTION_SCHEMA_VERSION,
                  "result": result, "error": error, "duration_seconds": 0, "provider_call_count": (error or {}).get("attempt_count", 1) if error else result.get("attempt_count", 1)}
        checkpoint_handle.write(json.dumps(record, ensure_ascii=False) + "\n")
        checkpoint_handle.flush(); os.fsync(checkpoint_handle.fileno())

    print(f"[pipeline:extract] Cache: {len(hit_results)} hit(s), {len(pending)} miss(es)")

    client = None
    provider_audit: dict[str, Any] = {"provider": provider, "mode": instructor_mode,
                                      "api_base": resolved_api_base,
                                      "api_base_set": resolved_api_base is not None}
    if pending:
        client, actual_model, provider_audit = _build_extraction_client(
            provider=provider, model=args.model, mode=args.mode, api_base=args.api_base)
    print(f"[pipeline:extract] Extracting …")

    try:
        results, errors = _run_extraction(
            pending, sleep_seconds=args.sleep_seconds, max_attempts=args.max_attempts,
            backoff_seconds=args.backoff_seconds, backoff_multiplier=args.backoff_multiplier,
            client=client, actual_model=actual_model, provider=provider,
            concurrency=args.concurrency, rate_limit_rpm=args.rate_limit_rpm,
            on_complete=save_checkpoint,
        )
    finally:
        checkpoint_handle.close()
        fcntl.flock(lock_handle.fileno(), fcntl.LOCK_UN)
        lock_handle.close()
    all_results: dict[int, dict[str, Any]] = dict(hit_results)
    for ordinal, record in checkpoint_records.items():
        checkpoint_result = record.get("result")
        if (checkpoint_result is not None and
                checkpoint_result.get("reddit_post_id") == prompts[ordinal]["reddit_post_id"]):
            all_results[ordinal] = checkpoint_result
    # Results are keyed by prompt ordinal, so a failed middle request can never
    # shift a later response onto the wrong post.
    for ordinal, result in results.items():
        all_results[pending[ordinal - 1]["ordinal"]] = result
    all_errors = [r["error"] for ordinal, r in checkpoint_records.items()
                  if ordinal not in all_results and r.get("error") is not None] + errors
    results = [all_results[i] for i in range(len(prompts)) if i in all_results]
    errors = all_errors

    cache_records: list[dict[str, Any]] = []
    for ordinal, result in all_results.items():
        if ordinal in hit_results:
            continue
        valid = PostExtraction.model_validate(result).model_dump()
        outcome = "extracted"
        prompt_record = prompts[ordinal]
        content_hash = hashlib.sha256(canonical_json(prompt_record["prompt_input"]).encode()).hexdigest()
        rendered_hash = hashlib.sha256(canonical_json({"system": prompt_record["system_prompt"], "user": prompt_record["user_prompt"]}).encode()).hexdigest()
        cache_records.append(make_cache_record(
            key=prompt_record["_cache_key"], post_id=prompt_record["reddit_post_id"],
            payload=valid, outcome=outcome, content_hash=content_hash,
            prompt_hash=rendered_hash, prompt_version=EXTRACTION_PROMPT_VERSION,
            provider=provider, model=actual_model, api_base=resolved_api_base,
            instructor_mode=instructor_mode,
            source_normalized_checksum=hashlib.sha256(input_path.read_bytes()).hexdigest()))

    # Count total recommendations across successes
    recommendation_count = sum(
        len(r.get("recommendations", [])) for r in results
    )

    slug = timestamp_slug()
    if args.out is None:
        out = working_dir() / f"extraction-{slug}.json"
    else:
        out = Path(args.out)

    # ── Failed-extraction safeguard ──────────────────────────────────
    success_count = len(results)
    error_count = len(errors)
    fatal_error = next((error for error in errors if error.get("fatal")), None)
    is_failed = error_count > 0

    if fatal_error or (is_failed and not (args.allow_errors or args.allow_empty)):
        artifact_status = "failed"
    else:
        artifact_status = "extracted"

    extraction_artifact: dict[str, Any] = {
        "status": artifact_status,
        "source": "pipeline.extract",
        "extracted_at": datetime.now(timezone.utc).isoformat(),
        "normalized_artifact": str(input_path),
        "model": args.model,
        "args": {
            "dry_run": False,
            "limit": args.limit,
            "max_comments": args.max_comments,
            "sleep_seconds": args.sleep_seconds,
            "concurrency": args.concurrency,
            "rate_limit_rpm": args.rate_limit_rpm,
            "max_attempts": args.max_attempts,
            "backoff_seconds": args.backoff_seconds,
            "backoff_multiplier": args.backoff_multiplier,
            "allow_empty": args.allow_empty,
            "mode": args.mode,
            "api_base": args.api_base,
            "provider": provider_audit,
            "prompt_version": EXTRACTION_PROMPT_VERSION,
            "schema_version": EXTRACTION_SCHEMA_VERSION,
        },
        "results": results,
        "errors": errors,
        # Top-level contract for the persistence lane: observations are
        # complete records, while summary contains only aggregate counters.
        "cache_records": cache_records,
        "summary": {
            "post_count": len(prompts),
            "success_count": success_count,
            "error_count": error_count,
            "target_count": len(prompts),
            "completed_count": success_count + error_count,
            "pending_count": max(0, len(prompts) - success_count - error_count),
            "recommendation_count": recommendation_count,
            "cache_hits": len(hit_results),
            "cache_misses": len(prompts) - len(hit_results),
            "cache_writes": len(cache_records),
        },
    }

    write_json_artifact(out, extraction_artifact)

    if artifact_status == "failed":
        if fatal_error:
            print(f"[pipeline:extract] FAILED: {fatal_error['error']}")
        else:
            print(
                f"[pipeline:extract] FAILED: {success_count} successes, {error_count} errors. "
                f"Use --allow-errors to override."
            )
        print(f"[pipeline:extract] Artifact written to {out}")
        sys.exit(1)

    print(
        f"[pipeline:extract] Done: {success_count} success, "
        f"{error_count} errors, {recommendation_count} recommendations"
    )
    print(f"[pipeline:extract] Artifact written to {out}")


if __name__ == "__main__":
    main()
