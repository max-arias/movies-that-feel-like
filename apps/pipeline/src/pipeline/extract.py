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
import email.utils
import fcntl
import hashlib
import json
import os
import sys
import time
from collections import deque
from dataclasses import dataclass, field
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Callable, Literal

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.extraction_batches import (BatchPost, batch_post_from_prompt, pack_batches,
                                         render_batch_prompt, resolve_batch_response)
from pipeline.extraction_input import (BATCH_SYSTEM_INSTRUCTION, EXTRACTION_PROMPT_VERSION,
                                       build_extraction_prompt, flatten_comments)
from pipeline.extraction_cache import (canonical_json, extraction_cache_key, lookup as lookup_cache,
                                       make_cache_record, read_cache_snapshot)
from pipeline.models import BatchExtractionResponse, PostExtraction
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
            "\nBatching and quota:\n"
            "  Posts are packed into multi-post requests (--batch-size, --batch-max-chars).\n"
            "  --max-requests caps provider requests per run, retries included. Daily quota,\n"
            "  provider overload, and the request budget stop the run and defer remaining\n"
            "  posts; deferred posts are not failures and stay eligible for a later run.\n"
            "\nExamples:\n"
            "  # Dry-run — no API key needed\n"
            "  pipeline:extract --dry-run --limit 1\n"
            "\n"
            "  # Gemini extraction (default model)\n"
            "  GEMINI_API_KEY=... pipeline:extract --limit 5 --max-requests 1\n"
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
    parser.add_argument("--batch-size", type=int, default=5,
                        help="Maximum posts per provider request (default: %(default)s)")
    parser.add_argument("--batch-max-chars", type=int, default=80000,
                        help="Maximum summed per-post prompt characters per request (default: %(default)s)")
    parser.add_argument("--max-requests", type=int, default=5,
                        help="Provider requests per run, retries included; 0 makes no requests (default: %(default)s)")
    parser.add_argument("--rate-limit-rpm", type=float, default=5.0, help="Request-start limit (default: %(default)s RPM)")
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
    """Serial request-start pacing: at most *rpm* request starts per minute."""

    def __init__(self, rpm: float) -> None:
        self.interval = 60.0 / rpm if rpm > 0 else 0.0
        self.next_start = 0.0

    def wait(self) -> None:
        if self.interval <= 0:
            return
        now = time.monotonic()
        if self.next_start > now:
            time.sleep(self.next_start - now)
            now = time.monotonic()
        self.next_start = now + self.interval


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
        nested_errors = [getattr(current, attr, None) for attr in ("last_error", "__cause__", "__context__")]
        failed_attempts = getattr(current, "failed_attempts", None)
        if isinstance(failed_attempts, list) and failed_attempts:
            nested_errors.append(getattr(failed_attempts[-1], "exception", None))
        stack.extend(nested for nested in nested_errors if isinstance(nested, BaseException))


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


FailureKind = Literal["fatal", "daily_quota", "rate_limited", "unavailable", "structural", "rejected"]
MAX_RATE_RETRY_SECONDS = 120.0
DEFAULT_RATE_RETRY_SECONDS = 60.0


def _error_details(exc: BaseException) -> list[dict[str, Any]] | None:
    """Return google.rpc detail objects from a google-genai APIError body, if any."""
    details = getattr(exc, "details", None)
    error = details.get("error") if isinstance(details, dict) else None
    items = error.get("details") if isinstance(error, dict) else None
    if not isinstance(items, list):
        return None
    return [item for item in items if isinstance(item, dict)]


def _daily_quota(exc: BaseException) -> bool:
    details = _error_details(exc)
    if details is None:
        return "PerDay" in str(exc)
    for item in details:
        if not str(item.get("@type", "")).endswith("google.rpc.QuotaFailure"):
            continue
        violations = item.get("violations") or []
        if any("PerDay" in str(v.get("quotaId", "")) for v in violations if isinstance(v, dict)):
            return True
    return False


def _rate_limit_delay(exc: BaseException) -> float | None:
    """Seconds from google.rpc.RetryInfo (e.g. ``"20353s"``), else Retry-After."""
    for item in _error_details(exc) or []:
        if not str(item.get("@type", "")).endswith("google.rpc.RetryInfo"):
            continue
        delay = str(item.get("retryDelay", ""))
        try:
            return float(delay.removesuffix("s"))
        except ValueError:
            continue
    return _retry_after(getattr(exc, "response", None))


def _classify_status(current: BaseException, status: int) -> tuple[FailureKind, float | None]:
    if status in (401, 402, 403):
        return "fatal", None
    if status == 429:
        if _daily_quota(current):
            return "daily_quota", None
        return "rate_limited", _rate_limit_delay(current)
    if status == 408 or 500 <= status <= 599:
        return "unavailable", None
    return "rejected", None


def classify_failure(exc: BaseException) -> tuple[FailureKind, float | None]:
    """Classify a provider/Instructor failure through every wrapper link."""
    chain = list(_exception_chain(exc))
    for current in chain:
        status = _provider_status(current)
        if status is not None:
            return _classify_status(current, status)
    from pydantic import ValidationError

    if any(x in type(current).__name__.lower() for current in chain
           for x in ("timeout", "connect", "transport")):
        return "unavailable", None
    if any(isinstance(current, (ValidationError, json.JSONDecodeError)) for current in chain):
        return "structural", None
    return "rejected", None


@dataclass
class QueuedBatch:
    posts: list[BatchPost]
    rate_retry_used: bool = False


@dataclass
class RunOutcome:
    results: dict[int, dict[str, Any]] = field(default_factory=dict)
    errors: list[dict[str, Any]] = field(default_factory=list)
    deferred: list[dict[str, Any]] = field(default_factory=list)
    pending: list[BatchPost] = field(default_factory=list)
    request_count: int = 0
    stop_reason: str | None = None
    dropped_evidence: int = 0


# on_resolved(post, result, error, provider_call_count) runs once per resolved post.
OnResolved = Callable[[BatchPost, "dict[str, Any] | None", "dict[str, Any] | None", int], None]


class _BatchRun:
    """Serial batch execution; every provider attempt counts against the budget."""

    def __init__(self, queue: deque[QueuedBatch], *, client: Any, actual_model: str,
                 max_requests: int, limiter: _RequestLimiter, on_resolved: OnResolved | None) -> None:
        self.queue = queue
        self.client = client
        self.actual_model = actual_model
        self.max_requests = max_requests
        self.limiter = limiter
        self.on_resolved = on_resolved
        self.outcome = RunOutcome()
        self.omissions: dict[int, int] = {}
        self.calls: dict[int, int] = {}

    def run(self) -> RunOutcome:
        while self.queue and self.outcome.stop_reason is None:
            if self.outcome.request_count >= self.max_requests:
                self._stop([], "request_budget")
                break
            self._attempt(self.queue.popleft())
        return self.outcome

    def _attempt(self, batch: QueuedBatch) -> None:
        self.limiter.wait()
        self.outcome.request_count += 1
        for post in batch.posts:
            self.calls[post.ordinal] = self.calls.get(post.ordinal, 0) + 1
        ids = ", ".join(post.reddit_post_id for post in batch.posts)
        print(f"  [request {self.outcome.request_count}/{self.max_requests}] "
              f"extracting {len(batch.posts)} post(s): {ids}", flush=True)
        try:
            response = self.client.create(
                response_model=BatchExtractionResponse,
                messages=[{"role": "system", "content": BATCH_SYSTEM_INSTRUCTION},
                          {"role": "user", "content": render_batch_prompt(batch.posts)}],
                model=self.actual_model,
                temperature=0.1,
                max_retries=0,
            )
        except Exception as exc:
            self._handle_failure(batch, exc)
            return
        self._handle_success(batch, response)

    def _resolve(self, post: BatchPost, result: dict[str, Any] | None,
                 error: dict[str, Any] | None) -> None:
        if result is not None:
            self.outcome.results[post.ordinal] = result
        if error is not None:
            self.outcome.errors.append(error)
        if self.on_resolved:
            self.on_resolved(post, result, error, self.calls.get(post.ordinal, 0))

    def _defer(self, posts: list[BatchPost], reason: str) -> None:
        self.outcome.deferred.extend({"reddit_post_id": post.reddit_post_id, "reason": reason}
                                     for post in posts)

    def _queued_posts(self) -> list[BatchPost]:
        posts = [post for queued in self.queue for post in queued.posts]
        self.queue.clear()
        return posts

    def _stop(self, posts: list[BatchPost], reason: str) -> None:
        """Defer *posts* plus everything still queued; deferral is not failure."""
        self._defer(posts + self._queued_posts(), reason)
        self.outcome.stop_reason = reason

    def _handle_success(self, batch: QueuedBatch, response: BatchExtractionResponse) -> None:
        resolution = resolve_batch_response(batch.posts, response)
        for post in batch.posts:
            if post.ordinal in resolution.results:
                self._resolve(post, resolution.results[post.ordinal], None)
        self.outcome.dropped_evidence += resolution.dropped_evidence
        retry = [post for post in resolution.omitted if self.omissions.get(post.ordinal, 0) == 0]
        given_up = [post for post in resolution.omitted if post not in retry]
        print(f"  [request {self.outcome.request_count}] OK: {len(resolution.results)} result(s), "
              f"{len(resolution.omitted)} omitted, {resolution.dropped_evidence} evidence dropped",
              flush=True)
        for post in retry:
            self.omissions[post.ordinal] = 1
        if retry:
            self.queue.appendleft(QueuedBatch(retry))
        self._defer(given_up, "omitted_by_model")

    def _handle_failure(self, batch: QueuedBatch, exc: Exception) -> None:
        kind, delay = classify_failure(exc)
        print(f"  [request {self.outcome.request_count}] {kind}: {exc}", flush=True)
        if kind == "fatal":
            self._fail_fatal(batch, exc)
        elif kind == "daily_quota":
            self._stop(batch.posts, "daily_quota")
        elif kind == "rate_limited":
            self._rate_limited(batch, delay)
        elif kind == "unavailable":
            # A retry here would spend daily quota during a demand spike.
            self._stop(batch.posts, "provider_unavailable")
        elif len(batch.posts) > 1:
            middle = len(batch.posts) // 2
            self.queue.appendleft(QueuedBatch(batch.posts[middle:]))
            self.queue.appendleft(QueuedBatch(batch.posts[:middle]))
        else:
            post = batch.posts[0]
            self._resolve(post, None, self._error(post, exc, retryable=kind == "structural"))

    def _error(self, post: BatchPost, exc: Exception, *, retryable: bool) -> dict[str, Any]:
        return {"reddit_post_id": post.reddit_post_id, "error": str(exc),
                "attempt_count": self.calls.get(post.ordinal, 0), "model": self.actual_model,
                "retryable": retryable}

    def _fail_fatal(self, batch: QueuedBatch, exc: Exception) -> None:
        fatal = _fatal_provider_error(exc) or {"fatal": True}
        for post in batch.posts:
            error = self._error(post, exc, retryable=False)
            error.update(fatal)
            self._resolve(post, None, error)
        self.outcome.pending.extend(self._queued_posts())
        self.outcome.stop_reason = "fatal"

    def _rate_limited(self, batch: QueuedBatch, delay: float | None) -> None:
        wait = delay or DEFAULT_RATE_RETRY_SECONDS
        if batch.rate_retry_used or wait > MAX_RATE_RETRY_SECONDS:
            self._stop(batch.posts, "rate_limited")
            return
        print(f"  rate limited; retrying batch once in {wait:.1f}s", flush=True)
        time.sleep(wait)
        batch.rate_retry_used = True
        self.queue.appendleft(batch)


def _run_batches(batches: deque[QueuedBatch], *, client: Any, actual_model: str,
                 max_requests: int, limiter: _RequestLimiter,
                 on_resolved: OnResolved | None = None) -> RunOutcome:
    """Run queued batches serially until done, out of budget, or stopped by the provider."""
    return _BatchRun(batches, client=client, actual_model=actual_model, max_requests=max_requests,
                     limiter=limiter, on_resolved=on_resolved).run()


def _build_prompts(
    posts: list[dict[str, Any]],
    comments_by_post: dict[str, Any],
    max_comments: int,
) -> list[dict[str, Any]]:
    """Build prompt entries for each post."""
    prompts: list[dict[str, Any]] = []
    for ordinal, post in enumerate(posts):
        post_id = post.get("reddit_post_id", "?")
        comments = flatten_comments(
            comments_by_post, post_id, max_comments=max_comments
        )
        prompt = build_extraction_prompt(
            post, comments, max_comments=max_comments
        )
        prompts.append(
            {
                "ordinal": ordinal,
                "reddit_post_id": post_id,
                "title_length": len(post.get("title", "")),
                "comment_count": len(comments),
                "prompt_input": {"post": post, "comments": comments, "max_comments": max_comments},
                **prompt,
            }
        )
    return prompts


_BATCH_SCHEMA = BatchExtractionResponse.model_json_schema()
_BATCH_SCHEMA_JSON = json.dumps(_BATCH_SCHEMA, sort_keys=True)


@dataclass(frozen=True)
class _Identity:
    """Output-affecting provider identity, resolvable without an API key."""

    provider: str
    instructor_mode: str
    actual_model: str
    api_base: str | None


def _validated_args(argv: list[str] | None) -> argparse.Namespace:
    args = build_parser().parse_args(argv)
    provider = _detect_provider(args.model)
    _resolve_instructor_mode(provider, args.model, args.mode)
    if provider == "google" and args.api_base is not None:
        raise SystemExit("[pipeline:extract] --api-base is only supported for OpenAI-compatible models.")
    if args.batch_size < 1 or args.batch_max_chars < 1 or args.max_requests < 0:
        raise SystemExit("[pipeline:extract] --batch-size, --batch-max-chars must be >= 1 "
                         "and --max-requests >= 0")
    return args


def _load_prompts(args: argparse.Namespace) -> tuple[Path, list[dict[str, Any]]]:
    input_path = Path(args.input) if args.input is not None else _latest_normalized()
    norm = read_json_artifact(input_path)
    posts = norm.get("posts", [])
    if args.limit is not None:
        posts = posts[: args.limit]
    print(
        f"[pipeline:extract] Processing up to {len(posts)} posts from "
        f"{input_path.name} (dry-run={args.dry_run})"
    )
    return input_path, _build_prompts(posts, norm.get("comments_by_post", {}), args.max_comments)


def _pack(prompts: list[dict[str, Any]], args: argparse.Namespace) -> list[list[BatchPost]]:
    return pack_batches([batch_post_from_prompt(p) for p in prompts],
                        max_posts=args.batch_size, max_chars=args.batch_max_chars)


def _run_args(args: argparse.Namespace) -> dict[str, Any]:
    return {"limit": args.limit, "max_comments": args.max_comments,
            "batch_size": args.batch_size, "batch_max_chars": args.batch_max_chars,
            "max_requests": args.max_requests, "rate_limit_rpm": args.rate_limit_rpm,
            "allow_errors": args.allow_errors, "allow_empty": args.allow_empty,
            "mode": args.mode, "api_base": args.api_base}


def _write_dry_run(args: argparse.Namespace, input_path: Path, prompts: list[dict[str, Any]]) -> None:
    out = Path(args.out) if args.out is not None else working_dir() / f"extraction-dry-run-{timestamp_slug()}.json"
    provider = _detect_provider(args.model)
    batches = _pack(prompts, args)
    artifact: dict[str, Any] = {
        "status": "extraction_dry_run",
        "source": "pipeline.extract",
        "created_at": datetime.now(timezone.utc).isoformat(),
        "normalized_artifact": str(input_path),
        "model": args.model,
        "args": {
            "dry_run": True,
            **_run_args(args),
            "provider": {
                "provider": provider,
                "mode": _resolve_instructor_mode(provider, args.model, args.mode),
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
        "batches": [[post.reddit_post_id for post in batch] for batch in batches],
        "summary": {
            "post_count": len(prompts),
            "total_comment_count": sum(p["comment_count"] for p in prompts),
            "batch_count": len(batches),
        },
    }
    write_json_artifact(out, artifact)
    print(
        f"[pipeline:extract] Dry-run complete: {len(prompts)} posts in {len(batches)} batch(es), "
        f"{artifact['summary']['total_comment_count']} comments"
    )
    print(f"[pipeline:extract] Artifact written to {out}")


def _resolve_identity(args: argparse.Namespace) -> _Identity:
    provider = _detect_provider(args.model)
    instructor_mode = _resolve_instructor_mode(provider, args.model, args.mode)
    print(f"[pipeline:extract] Provider: {provider}")
    print(f"[pipeline:extract] Model:    {args.model}")
    print(f"[pipeline:extract] Mode:     {instructor_mode}")
    if args.api_base:
        print(f"[pipeline:extract] API base: {args.api_base}")
    api_base = (args.api_base or os.environ.get("OPENAI_BASE_URL")) if provider == "openai" else None
    return _Identity(provider=provider, instructor_mode=instructor_mode,
                     actual_model=args.model.removeprefix(f"{provider}/"), api_base=api_base)


def _prompt_hash(prompt: dict[str, Any]) -> str:
    value = {"system": BATCH_SYSTEM_INSTRUCTION, "user": prompt["user_prompt"],
             "schema_version": EXTRACTION_SCHEMA_VERSION, "schema": _BATCH_SCHEMA_JSON}
    return hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()


def _acquire_checkpoint(args: argparse.Namespace, identity: _Identity, input_path: Path) -> tuple[Path, Any]:
    """Return the checkpoint path and an exclusively locked handle for this run identity."""
    # Operational tuning (batch size, budget, pacing) must not invalidate
    # completed work; output-affecting provider/model/prompt/schema inputs must.
    run_identity = {"model": identity.actual_model, "requested_model": args.model,
                    "mode": identity.instructor_mode, "provider": identity.provider,
                    "api_base": identity.api_base, "prompt_version": EXTRACTION_PROMPT_VERSION,
                    "schema_version": EXTRACTION_SCHEMA_VERSION, "schema": _BATCH_SCHEMA_JSON}
    run_id = hashlib.sha256((input_path.read_bytes().decode("utf-8")
                             + json.dumps(run_identity, sort_keys=True)).encode()).hexdigest()[:20]
    lock_handle = (checkpoints_dir() / f"{run_id}.lock").open("a+", encoding="utf-8")
    try:
        fcntl.flock(lock_handle.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
    except BlockingIOError:
        lock_handle.close()
        raise SystemExit(f"[pipeline:extract] checkpoint run is already locked: {run_id}")
    return checkpoints_dir() / f"{run_id}.jsonl", lock_handle


def _load_checkpoint_records(checkpoint: Path, prompts: list[dict[str, Any]],
                             prompt_hash: Callable[[dict[str, Any]], str]) -> dict[int, dict[str, Any]]:
    """Resume successes and permanent errors; retryable and account errors run again."""
    records: dict[int, dict[str, Any]] = {}
    if not checkpoint.exists():
        return records
    for line in checkpoint.read_text(encoding="utf-8").splitlines():
        try:
            record = json.loads(line)
            if record.get("prompt_hash") != prompt_hash(prompts[record["ordinal"]]):
                continue
        except (ValueError, KeyError, IndexError, TypeError):
            continue
        error = record.get("error")
        if isinstance(error, dict) and (error.get("retryable") or _account_error_record(error)):
            continue
        if record.get("result") is not None or isinstance(error, dict):
            records[record["ordinal"]] = record
    return records


def _assign_cache_keys(prompts: list[dict[str, Any]], identity: _Identity, max_comments: int) -> None:
    # Keys stay per post, so batch composition never changes them.
    for prompt in prompts:
        prompt["_cache_key"] = extraction_cache_key(
            prompt_input=prompt["prompt_input"], system_prompt=BATCH_SYSTEM_INSTRUCTION,
            user_prompt=prompt["user_prompt"], schema=_BATCH_SCHEMA,
            provider=identity.provider, model=identity.actual_model, api_base=identity.api_base,
            instructor_mode=identity.instructor_mode, prompt_version=EXTRACTION_PROMPT_VERSION,
            schema_version=EXTRACTION_SCHEMA_VERSION,
            settings={"temperature": 0.1, "max_comments": max_comments})


def _partition(prompts: list[dict[str, Any]], snapshot_rows: list[dict[str, Any]],
               checkpoint_records: dict[int, dict[str, Any]]
               ) -> tuple[dict[int, dict[str, Any]], list[dict[str, Any]]]:
    """Split prompts into validated cache hits and posts still needing extraction."""
    hit_results: dict[int, dict[str, Any]] = {}
    pending: list[dict[str, Any]] = []
    for prompt in prompts:
        ordinal = prompt["ordinal"]
        # Invalid and expired snapshot rows are misses, never errors.
        hit = lookup_cache(snapshot_rows, prompt["_cache_key"], expected_post_id=prompt["reddit_post_id"])
        if hit is not None:
            hit_results[ordinal] = hit
        elif ordinal not in checkpoint_records:
            pending.append(prompt)
    return hit_results, pending


def _checkpoint_writer(handle: Any, prompts: list[dict[str, Any]]) -> OnResolved:
    """Persist resolved posts only; deferred and pending posts are never written."""
    def save(post: BatchPost, result: dict[str, Any] | None, error: dict[str, Any] | None,
             calls: int) -> None:
        record = {"ordinal": post.ordinal, "reddit_post_id": post.reddit_post_id,
                  "prompt_hash": _prompt_hash(prompts[post.ordinal]),
                  "schema_version": EXTRACTION_SCHEMA_VERSION, "result": result, "error": error,
                  "duration_seconds": 0, "provider_call_count": calls}
        handle.write(json.dumps(record, ensure_ascii=False) + "\n")
        handle.flush()
        os.fsync(handle.fileno())
    return save


def _merge_results(prompts: list[dict[str, Any]], hit_results: dict[int, dict[str, Any]],
                   checkpoint_records: dict[int, dict[str, Any]], outcome: RunOutcome
                   ) -> tuple[dict[int, dict[str, Any]], list[dict[str, Any]]]:
    """Combine cache hits, resumed checkpoints, and this run, keyed by prompt ordinal."""
    all_results: dict[int, dict[str, Any]] = dict(hit_results)
    for ordinal, record in checkpoint_records.items():
        result = record.get("result")
        if result is not None and result.get("reddit_post_id") == prompts[ordinal]["reddit_post_id"]:
            all_results[ordinal] = result
    all_results.update(outcome.results)
    errors = [r["error"] for ordinal, r in checkpoint_records.items()
              if ordinal not in all_results and r.get("error") is not None] + outcome.errors
    return all_results, errors


def _build_cache_records(prompts: list[dict[str, Any]], all_results: dict[int, dict[str, Any]],
                         hit_results: dict[int, dict[str, Any]], identity: _Identity,
                         input_path: Path) -> list[dict[str, Any]]:
    source_checksum = hashlib.sha256(input_path.read_bytes()).hexdigest()
    cache_records: list[dict[str, Any]] = []
    for ordinal, result in sorted(all_results.items()):
        if ordinal in hit_results:
            continue
        valid = PostExtraction.model_validate(result).model_dump()
        prompt_record = prompts[ordinal]
        content_hash = hashlib.sha256(canonical_json(prompt_record["prompt_input"]).encode()).hexdigest()
        rendered_hash = hashlib.sha256(canonical_json(
            {"system": BATCH_SYSTEM_INSTRUCTION, "user": prompt_record["user_prompt"]}).encode()).hexdigest()
        cache_records.append(make_cache_record(
            key=prompt_record["_cache_key"], post_id=prompt_record["reddit_post_id"],
            payload=valid, outcome="extracted", content_hash=content_hash,
            prompt_hash=rendered_hash, prompt_version=EXTRACTION_PROMPT_VERSION,
            provider=identity.provider, model=identity.actual_model, api_base=identity.api_base,
            instructor_mode=identity.instructor_mode, source_normalized_checksum=source_checksum))
    return cache_records


def _build_artifact(args: argparse.Namespace, input_path: Path, prompts: list[dict[str, Any]],
                    provider_audit: dict[str, Any], all_results: dict[int, dict[str, Any]],
                    errors: list[dict[str, Any]], outcome: RunOutcome, hit_count: int,
                    cache_records: list[dict[str, Any]]) -> dict[str, Any]:
    results = [all_results[i] for i in range(len(prompts)) if i in all_results]
    success_count, error_count, deferred_count = len(results), len(errors), len(outcome.deferred)
    fatal = any(error.get("fatal") for error in errors)
    failed = fatal or (error_count > 0 and not (args.allow_errors or args.allow_empty))
    return {
        "status": "failed" if failed else "extracted",
        "source": "pipeline.extract",
        "extracted_at": datetime.now(timezone.utc).isoformat(),
        "normalized_artifact": str(input_path),
        "model": args.model,
        "args": {
            "dry_run": False,
            **_run_args(args),
            "provider": provider_audit,
            "prompt_version": EXTRACTION_PROMPT_VERSION,
            "schema_version": EXTRACTION_SCHEMA_VERSION,
        },
        "results": results,
        "errors": errors,
        # Deferred posts were not attempted to completion (quota, overload,
        # budget); they are not failures and stay eligible for a later run.
        "deferred": outcome.deferred,
        "stop_reason": outcome.stop_reason,
        # Top-level contract for the persistence lane: observations are
        # complete records, while summary contains only aggregate counters.
        "cache_records": cache_records,
        "summary": {
            "post_count": len(prompts),
            "success_count": success_count,
            "error_count": error_count,
            "deferred_count": deferred_count,
            "target_count": len(prompts),
            "completed_count": success_count + error_count,
            "pending_count": max(0, len(prompts) - success_count - error_count - deferred_count),
            "request_count": outcome.request_count,
            "dropped_evidence_count": outcome.dropped_evidence,
            "recommendation_count": sum(len(r.get("recommendations", [])) for r in results),
            "cache_hits": hit_count,
            "cache_misses": len(prompts) - hit_count,
            "cache_writes": len(cache_records),
        },
    }


def _finish(artifact: dict[str, Any], out: Path) -> None:
    summary = artifact["summary"]
    if artifact["status"] == "failed":
        fatal_error = next((error for error in artifact["errors"] if error.get("fatal")), None)
        if fatal_error:
            print(f"[pipeline:extract] FAILED: {fatal_error['error']}")
        else:
            print(
                f"[pipeline:extract] FAILED: {summary['success_count']} successes, "
                f"{summary['error_count']} errors. Use --allow-errors to override."
            )
        print(f"[pipeline:extract] Artifact written to {out}")
        sys.exit(1)
    deferred = summary["deferred_count"]
    print(
        f"[pipeline:extract] Done: {summary['success_count']} success, {summary['error_count']} errors, "
        f"{deferred} deferred, {summary['request_count']} provider request(s), "
        f"{summary['recommendation_count']} recommendations"
    )
    if artifact["stop_reason"]:
        print(f"[pipeline:extract] Stopped early: {artifact['stop_reason']}; "
              f"{deferred} post(s) stay eligible for a later run")
    print(f"[pipeline:extract] Artifact written to {out}")


def main(argv: list[str] | None = None) -> None:
    args = _validated_args(argv)
    ensure_pipeline_dirs()
    input_path, prompts = _load_prompts(args)
    if args.dry_run:
        _write_dry_run(args, input_path, prompts)
        return

    # Resolve identity without constructing a client: an all-hit snapshot run
    # and a --max-requests 0 probe must not require an API key.
    identity = _resolve_identity(args)
    _assign_cache_keys(prompts, identity, args.max_comments)
    checkpoint, lock_handle = _acquire_checkpoint(args, identity, input_path)
    try:
        checkpoint_records = _load_checkpoint_records(checkpoint, prompts, _prompt_hash)
        snapshot_rows = read_cache_snapshot(args.cache_snapshot) if args.cache_snapshot else []
        hit_results, pending = _partition(prompts, snapshot_rows, checkpoint_records)
        print(f"[pipeline:extract] Cache: {len(hit_results)} hit(s), {len(pending)} miss(es)")

        client = None
        actual_model = identity.actual_model
        provider_audit: dict[str, Any] = {"provider": identity.provider, "mode": identity.instructor_mode,
                                          "api_base": identity.api_base,
                                          "api_base_set": identity.api_base is not None}
        if pending and args.max_requests > 0:
            client, actual_model, provider_audit = _build_extraction_client(
                provider=identity.provider, model=args.model, mode=args.mode, api_base=args.api_base)
        batches = _pack(pending, args)
        print(f"[pipeline:extract] Extracting {len(pending)} post(s) in {len(batches)} batch(es), "
              f"at most {args.max_requests} provider request(s) …")
        checkpoint.parent.mkdir(parents=True, exist_ok=True)
        with checkpoint.open("a", encoding="utf-8") as checkpoint_handle:
            outcome = _run_batches(
                deque(QueuedBatch(batch) for batch in batches), client=client,
                actual_model=actual_model, max_requests=args.max_requests,
                limiter=_RequestLimiter(args.rate_limit_rpm),
                on_resolved=_checkpoint_writer(checkpoint_handle, prompts))
    finally:
        fcntl.flock(lock_handle.fileno(), fcntl.LOCK_UN)
        lock_handle.close()

    all_results, errors = _merge_results(prompts, hit_results, checkpoint_records, outcome)
    cache_records = _build_cache_records(prompts, all_results, hit_results, identity, input_path)
    artifact = _build_artifact(args, input_path, prompts, provider_audit, all_results, errors,
                               outcome, len(hit_results), cache_records)
    out = Path(args.out) if args.out is not None else working_dir() / f"extraction-{timestamp_slug()}.json"
    write_json_artifact(out, artifact)
    _finish(artifact, out)


if __name__ == "__main__":
    main()
