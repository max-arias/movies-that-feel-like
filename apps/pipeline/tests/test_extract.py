import contextlib
from collections import deque
import io
import json
import os
from pathlib import Path
import re
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import patch

from pipeline.extract import (QueuedBatch, _RequestLimiter, _fatal_provider_error,
                              _resolve_openai_config, _run_batches, classify_failure, main)
from pipeline.extraction_batches import BatchPost, batch_post_from_prompt, pack_batches
from pipeline.extraction_input import build_extraction_prompt
from pipeline.models import BatchExtractionResponse

DAILY_QUOTA_ID = "GenerateRequestsPerDayPerProjectPerModel-FreeTier"


class ExplicitOpenAIConfigTests(unittest.TestCase):
    def test_explicit_credentials_and_custom_endpoint_are_resolved(self):
        with patch.dict(os.environ, {
            "OPENAI_API_KEY": "test-openai-key",
            "OPENAI_BASE_URL": "https://environment.example/v1",
        }, clear=True):
            self.assertEqual(
                _resolve_openai_config("openai/custom-model", "https://explicit.example/v1"),
                ("custom-model", "test-openai-key", "https://explicit.example/v1"),
            )
            self.assertEqual(
                _resolve_openai_config("custom-model", None),
                ("custom-model", "test-openai-key", "https://environment.example/v1"),
            )

    def test_google_key_cannot_authorize_an_explicit_openai_model(self):
        with patch.dict(os.environ, {"GEMINI_API_KEY": "test-google-key"}, clear=True):
            with self.assertRaisesRegex(SystemExit, "OPENAI_API_KEY must be set"):
                _resolve_openai_config("openai/custom-model", None)


# ── Fixtures ─────────────────────────────────────────────────────────


def comment_for(post_id):
    return {"id": f"c{post_id}", "body": f"I recommend Movie {post_id}", "score": 7,
            "permalink": f"/r/MoviesThatFeelLike/comments/{post_id}/x/c{post_id}/", "author": "user"}


def prompt_entry(ordinal, post_id):
    post = {"reddit_post_id": post_id, "title": f"title-{post_id}"}
    comments = [comment_for(post_id)]
    return {"ordinal": ordinal, "reddit_post_id": post_id,
            "user_prompt": build_extraction_prompt(post, comments)["user_prompt"],
            "prompt_input": {"post": post, "comments": comments, "max_comments": 80}}


def batch_posts(*post_ids):
    return [batch_post_from_prompt(prompt_entry(i, p)) for i, p in enumerate(post_ids)]


def queue_for(*post_ids, batch_size=5):
    return deque(QueuedBatch(batch) for batch in
                 pack_batches(batch_posts(*post_ids), max_posts=batch_size, max_chars=80000))


def entry(post_id, *, recommendations=None):
    if recommendations is None:
        recommendations = [{"title": f"Movie {post_id}", "media_type": "movie",
                            "evidence": [{"comment_id": f"c{post_id}", "extracted_text": f"Movie {post_id}"}]}]
    return {"reddit_post_id": post_id, "cleaned_title": f"clean-{post_id}",
            "recommendations": recommendations, "vibe": {"summary": f"vibe-{post_id}", "tags": []}}


def gemini_text(text, finish="STOP"):
    return 200, {"candidates": [{"content": {"role": "model", "parts": [{"text": text}]},
                                 "finishReason": finish}]}


def gemini_posts(*entries):
    return gemini_text(json.dumps({"posts": list(entries)}))


def gemini_error(status, details=None):
    error = {"code": status, "message": "Provider request failed",
             "status": "RESOURCE_EXHAUSTED" if status == 429 else "ERROR"}
    if details is not None:
        error["details"] = details
    return status, {"error": error}


def daily_quota_error():
    return gemini_error(429, [
        {"@type": "type.googleapis.com/google.rpc.QuotaFailure",
         "violations": [{"quotaMetric": "generativelanguage.googleapis.com/generate_content_free_tier_requests",
                         "quotaId": DAILY_QUOTA_ID}]},
        {"@type": "type.googleapis.com/google.rpc.RetryInfo", "retryDelay": "20353s"},
    ])


def requested_post_ids(request):
    return re.findall(r'reddit_post_id="([^"]+)"', json.dumps(json.loads(request.content), ensure_ascii=False)
                      .replace('\\"', '"'))


def echo_success(request):
    """Answer every post block in the request with a valid entry."""
    return gemini_posts(*(entry(post_id) for post_id in requested_post_ids(request)))


def run_gemini(responses, queue, *, max_requests=5, on_resolved=None):
    """Drive _run_batches through the real google-genai SDK and Instructor."""
    import httpx
    import instructor
    from google import genai
    from google.genai import types

    requests = []

    def respond(request):
        requests.append(request)
        response = responses[min(len(requests) - 1, len(responses) - 1)]
        status, body = response(request) if callable(response) else response
        return httpx.Response(status, json=body)

    google_client = genai.Client(
        api_key="fake-test-key",
        http_options=types.HttpOptions(
            client_args={"transport": httpx.MockTransport(respond)},
            retry_options=types.HttpRetryOptions(attempts=1),
        ),
    )
    try:
        client = instructor.from_genai(google_client, model="gemini-3.8-flash", mode=instructor.Mode.JSON)
        outcome = _run_batches(queue, client=client, actual_model="gemini-3.8-flash",
                               max_requests=max_requests, limiter=_RequestLimiter(0),
                               on_resolved=on_resolved)
        return outcome, requests
    finally:
        google_client.close()


def deferred_reasons(outcome):
    return {item["reddit_post_id"]: item["reason"] for item in outcome.deferred}


# ── Packing ──────────────────────────────────────────────────────────


class PackBatchesTests(unittest.TestCase):
    @staticmethod
    def post(ordinal, size):
        return BatchPost(ordinal=ordinal, reddit_post_id=f"p{ordinal}", title="",
                         user_prompt="x" * size, comments={})

    def test_max_posts_splits_in_input_order(self):
        posts = [self.post(i, 10) for i in range(7)]
        batches = pack_batches(posts, max_posts=3, max_chars=1000)
        self.assertEqual([[p.ordinal for p in b] for b in batches], [[0, 1, 2], [3, 4, 5], [6]])

    def test_char_budget_starts_new_batch_and_oversized_post_stands_alone(self):
        posts = [self.post(0, 40), self.post(1, 50), self.post(2, 500), self.post(3, 10)]
        batches = pack_batches(posts, max_posts=5, max_chars=100)
        self.assertEqual([[p.ordinal for p in b] for b in batches], [[0, 1], [2], [3]])


# ── Batch runner through the real SDK ────────────────────────────────


class BatchRunnerTests(unittest.TestCase):
    def test_two_posts_share_one_request_and_metadata_comes_from_input(self):
        resolved = []
        outcome, requests = run_gemini([gemini_posts(entry("A"), entry("B"))], queue_for("A", "B"),
                                       on_resolved=lambda *args: resolved.append(args))
        self.assertEqual(len(requests), 1)
        self.assertEqual(outcome.request_count, 1)
        self.assertEqual(outcome.errors, [])
        self.assertEqual(outcome.deferred, [])
        self.assertIsNone(outcome.stop_reason)
        self.assertEqual(set(outcome.results), {0, 1})
        for ordinal, post_id in ((0, "A"), (1, "B")):
            result = outcome.results[ordinal]
            self.assertEqual(result["reddit_post_id"], post_id)
            self.assertEqual(result["reddit_title"], f"title-{post_id}")
            evidence = result["recommendations"][0]["evidence"][0]
            source = comment_for(post_id)
            self.assertEqual(evidence["comment_text"], source["body"])
            self.assertEqual(evidence["score"], source["score"])
            self.assertEqual(evidence["permalink"], source["permalink"])
        self.assertEqual([(post.reddit_post_id, calls) for post, _, error, calls in resolved
                          if error is None], [("A", 1), ("B", 1)])

    def test_cross_post_evidence_is_dropped_with_its_recommendation(self):
        recommendations = [
            {"title": "Stolen", "evidence": [{"comment_id": "cB", "extracted_text": "Movie B"}]},
            {"title": "Mixed", "evidence": [{"comment_id": "cA", "extracted_text": "Movie A"},
                                            {"comment_id": "cB", "extracted_text": "Movie B"}]},
            {"title": "Unsourced", "evidence": []},
        ]
        outcome, _ = run_gemini([gemini_posts(entry("A", recommendations=recommendations), entry("B"))],
                                queue_for("A", "B"))
        kept = outcome.results[0]["recommendations"]
        self.assertEqual([r["title"] for r in kept], ["Mixed", "Unsourced"])
        self.assertEqual([e["comment_id"] for e in kept[0]["evidence"]], ["cA"])
        self.assertEqual(outcome.dropped_evidence, 2)

    def test_omitted_post_is_retried_alone_once_then_deferred(self):
        outcome, requests = run_gemini(
            [gemini_posts(entry("A")), gemini_posts(), echo_success],
            queue_for("A", "B", "C", batch_size=2))
        self.assertEqual([requested_post_ids(r) for r in requests], [["A", "B"], ["B"], ["C"]])
        self.assertEqual(set(outcome.results), {0, 2})
        self.assertEqual(deferred_reasons(outcome), {"B": "omitted_by_model"})
        self.assertIsNone(outcome.stop_reason)

    def test_unknown_entries_are_ignored_and_duplicate_identity_is_retried(self):
        outcome, requests = run_gemini(
            [gemini_posts(entry("A"), entry("A"), entry("B"), entry("unknown")), echo_success],
            queue_for("A", "B"))
        self.assertEqual([requested_post_ids(r) for r in requests], [["A", "B"], ["A"]])
        self.assertEqual({result["reddit_post_id"] for result in outcome.results.values()}, {"A", "B"})
        self.assertEqual(outcome.deferred, [])

    def test_daily_quota_defers_everything_after_one_request(self):
        outcome, requests = run_gemini([daily_quota_error()], queue_for(*"ABCDEFG"))
        self.assertEqual(len(requests), 1)
        self.assertEqual(outcome.stop_reason, "daily_quota")
        self.assertEqual(outcome.results, {})
        self.assertEqual(outcome.errors, [])
        self.assertEqual(deferred_reasons(outcome), {p: "daily_quota" for p in "ABCDEFG"})

    def test_overloaded_provider_defers_without_retrying(self):
        outcome, requests = run_gemini([gemini_error(503), echo_success], queue_for("A", "B"))
        self.assertEqual(len(requests), 1)
        self.assertEqual(outcome.stop_reason, "provider_unavailable")
        self.assertEqual(outcome.errors, [])
        self.assertEqual(deferred_reasons(outcome), {"A": "provider_unavailable", "B": "provider_unavailable"})

    def test_per_minute_rate_limit_retries_once_after_retry_info_delay(self):
        per_minute = gemini_error(429, [{"@type": "type.googleapis.com/google.rpc.RetryInfo",
                                         "retryDelay": "2s"}])
        with patch("pipeline.extract.time.sleep") as sleep:
            outcome, requests = run_gemini([per_minute, echo_success], queue_for("A", "B"))
        sleep.assert_called_once_with(2.0)
        self.assertEqual(len(requests), 2)
        self.assertEqual(set(outcome.results), {0, 1})
        self.assertIsNone(outcome.stop_reason)

    def test_second_rate_limit_on_same_batch_defers(self):
        per_minute = gemini_error(429, [{"@type": "type.googleapis.com/google.rpc.RetryInfo",
                                         "retryDelay": "2s"}])
        with patch("pipeline.extract.time.sleep"):
            outcome, requests = run_gemini([per_minute], queue_for("A"))
        self.assertEqual(len(requests), 2)
        self.assertEqual(outcome.stop_reason, "rate_limited")
        self.assertEqual(deferred_reasons(outcome), {"A": "rate_limited"})

    def test_truncated_output_splits_the_batch(self):
        truncated = gemini_text('{"posts": [{"reddit_post_id": "A", "cleaned_title": "cl', finish="MAX_TOKENS")
        outcome, requests = run_gemini([truncated, echo_success], queue_for("A", "B", "C", "D"))
        self.assertEqual([requested_post_ids(r) for r in requests],
                         [["A", "B", "C", "D"], ["A", "B"], ["C", "D"]])
        self.assertEqual(set(outcome.results), {0, 1, 2, 3})
        self.assertEqual(outcome.errors, [])

    def test_single_post_rejection_is_recorded_without_stopping(self):
        outcome, requests = run_gemini([gemini_error(400), echo_success], queue_for("A", "B", batch_size=1))
        self.assertEqual(len(requests), 2)
        self.assertEqual([e["reddit_post_id"] for e in outcome.errors], ["A"])
        self.assertFalse(outcome.errors[0]["retryable"])
        self.assertEqual(set(outcome.results), {1})

    def test_request_budget_defers_the_rest(self):
        outcome, requests = run_gemini([echo_success], queue_for(*(f"p{i}" for i in range(12))),
                                       max_requests=2)
        self.assertEqual(len(requests), 2)
        self.assertEqual(len(outcome.results), 10)
        self.assertEqual(outcome.stop_reason, "request_budget")
        self.assertEqual(deferred_reasons(outcome), {"p10": "request_budget", "p11": "request_budget"})

    def test_zero_budget_makes_no_request(self):
        outcome = _run_batches(queue_for("A"), client=None, actual_model="m", max_requests=0,
                               limiter=_RequestLimiter(0))
        self.assertEqual(outcome.request_count, 0)
        self.assertEqual(deferred_reasons(outcome), {"A": "request_budget"})

    def test_fatal_credentials_fail_the_batch_and_leave_the_rest_pending(self):
        for status in (401, 403):
            with self.subTest(status=status):
                outcome, requests = run_gemini([gemini_error(status)], queue_for("A", "B", "C", "D", batch_size=2))
                self.assertEqual(len(requests), 1)
                self.assertEqual(outcome.stop_reason, "fatal")
                self.assertEqual([e["reddit_post_id"] for e in outcome.errors], ["A", "B"])
                self.assertTrue(all(e["fatal"] and e["provider_status"] == status for e in outcome.errors))
                self.assertEqual([e["attempt_count"] for e in outcome.errors], [1, 1])
                self.assertEqual([p.reddit_post_id for p in outcome.pending], ["C", "D"])
                self.assertEqual(outcome.deferred, [])


# ── Failure classification ───────────────────────────────────────────


class ClassifyFailureTests(unittest.TestCase):
    def test_google_status_survives_exception_wrappers_without_response(self):
        from google.genai.errors import APIError

        expected = {401: "fatal", 403: "fatal", 429: "rate_limited", 500: "unavailable", 503: "unavailable"}
        for status, kind in expected.items():
            for link in ("last_error", "__cause__", "__context__", "failed_attempts"):
                with self.subTest(status=status, link=link):
                    inner = APIError(status, gemini_error(status)[1])
                    wrapper = RuntimeError("Instructor retries exhausted")
                    if link == "failed_attempts":
                        wrapper.failed_attempts = [SimpleNamespace(exception=inner)]
                    else:
                        setattr(wrapper, link, inner)
                    self.assertEqual(classify_failure(wrapper)[0], kind)
                    fatal = _fatal_provider_error(wrapper)
                    if kind == "fatal":
                        self.assertEqual(fatal["provider_status"], status)
                    else:
                        self.assertIsNone(fatal)

    def test_daily_quota_is_distinguished_from_per_minute_limit(self):
        from google.genai.errors import APIError

        self.assertEqual(classify_failure(APIError(429, daily_quota_error()[1])), ("daily_quota", None))
        per_minute = APIError(429, gemini_error(429, [
            {"@type": "type.googleapis.com/google.rpc.QuotaFailure",
             "violations": [{"quotaId": "GenerateRequestsPerMinutePerProjectPerModel-FreeTier"}]},
            {"@type": "type.googleapis.com/google.rpc.RetryInfo", "retryDelay": "1.5s"}])[1])
        self.assertEqual(classify_failure(per_minute), ("rate_limited", 1.5))

    def test_output_validation_failure_is_structural(self):
        from pydantic import ValidationError

        try:
            BatchExtractionResponse.model_validate({"posts": [{"reddit_post_id": "A"}]})
        except ValidationError as exc:
            wrapper = RuntimeError("Instructor retries exhausted")
            wrapper.__cause__ = exc
            self.assertEqual(classify_failure(wrapper), ("structural", None))


# ── CLI ──────────────────────────────────────────────────────────────


class ProviderError(Exception):
    def __init__(self, status):
        super().__init__("Upstream request failed: Insufficient account funds"
                         if status == 402 else f"provider status {status}")
        self.response = SimpleNamespace(status_code=status, headers={})


class FakeBatchClient:
    """Answers batch prompts by echoing each post block; can fail a chosen post's batch."""

    def __init__(self, fail_on=None, error=None):
        self.fail_on = fail_on
        self.error = error
        self.calls = []

    def create(self, **kwargs):
        ids = re.findall(r'reddit_post_id="([^"]+)"', kwargs["messages"][1]["content"])
        self.calls.append(ids)
        if self.fail_on in ids:
            raise self.error
        return BatchExtractionResponse.model_validate({"posts": [entry(p) for p in ids]})


class CliTests(unittest.TestCase):
    def run_cli(self, root, client, *extra):
        normalized = root / "normalized.json"
        output = root / "extraction.json"
        if not normalized.exists():
            normalized.write_text(json.dumps({"posts": [
                {"reddit_post_id": p, "title": f"title-{p}"} for p in ("A", "B", "C", "D")
            ]}), encoding="utf-8")
        argv = ["--input", str(normalized), "--out", str(output), "--model", "test-model",
                "--batch-size", "2", "--rate-limit-rpm", "0", *extra]
        stdout = io.StringIO()
        exit_code = 0
        with contextlib.ExitStack() as stack:
            stack.enter_context(patch("pipeline.extract.ensure_pipeline_dirs"))
            stack.enter_context(patch("pipeline.extract.checkpoints_dir", return_value=root))
            stack.enter_context(patch("pipeline.extract._build_extraction_client",
                                      return_value=(client, "test-model", {})))
            stack.enter_context(contextlib.redirect_stdout(stdout))
            try:
                main(argv)
            except SystemExit as exc:
                exit_code = exc.code
        return exit_code, json.loads(output.read_text(encoding="utf-8")), stdout.getvalue()

    def test_fatal_is_saved_and_rejected_despite_overrides_then_resumes(self):
        for override in ("--allow-errors", "--allow-empty"):
            with self.subTest(override=override), tempfile.TemporaryDirectory() as tmp:
                root = Path(tmp)
                client = FakeBatchClient(fail_on="C", error=ProviderError(402))
                code, artifact, stdout = self.run_cli(root, client, override)
                self.assertEqual(code, 1)
                self.assertEqual(artifact["status"], "failed")
                self.assertEqual(artifact["stop_reason"], "fatal")
                self.assertEqual(artifact["summary"]["pending_count"], 0)
                self.assertEqual(artifact["summary"]["completed_count"], 4)
                self.assertEqual([r["reddit_post_id"] for r in artifact["results"]], ["A", "B"])
                self.assertEqual([e["reddit_post_id"] for e in artifact["errors"]], ["C", "D"])
                self.assertEqual([r["reddit_post_id"] for r in artifact["cache_records"]], ["A", "B"])
                self.assertIn("Provider HTTP 402", stdout)
                records = [json.loads(line) for line in next(root.glob("*.jsonl")).read_text().splitlines()]
                self.assertEqual([r["reddit_post_id"] for r in records], ["A", "B", "C", "D"])

                client.fail_on = None
                code, resumed, _ = self.run_cli(root, client, override)
                self.assertEqual(code, 0)
                self.assertEqual(client.calls, [["A", "B"], ["C", "D"], ["C", "D"]])
                self.assertEqual(resumed["status"], "extracted")
                self.assertEqual(resumed["summary"]["success_count"], 4)
                self.assertEqual(resumed["summary"]["request_count"], 1)
                self.assertEqual(resumed["errors"], [])

    def test_daily_quota_stop_is_a_successful_partial_run(self):
        from google.genai.errors import APIError

        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            client = FakeBatchClient(fail_on="C", error=APIError(429, daily_quota_error()[1]))
            code, artifact, stdout = self.run_cli(root, client, "--allow-errors")
            self.assertEqual(code, 0)
            self.assertEqual(artifact["status"], "extracted")
            self.assertEqual(artifact["stop_reason"], "daily_quota")
            self.assertEqual(artifact["summary"]["success_count"], 2)
            self.assertEqual(artifact["summary"]["deferred_count"], 2)
            self.assertEqual(artifact["summary"]["pending_count"], 0)
            self.assertEqual([d["reddit_post_id"] for d in artifact["deferred"]], ["C", "D"])
            self.assertIn("Stopped early: daily_quota", stdout)
            records = [json.loads(line) for line in next(root.glob("*.jsonl")).read_text().splitlines()]
            self.assertEqual([r["reddit_post_id"] for r in records], ["A", "B"])

    def test_invalid_batch_flags_are_rejected(self):
        for flags in (["--batch-size", "0"], ["--batch-max-chars", "0"], ["--max-requests", "-1"]):
            with self.subTest(flags=flags), self.assertRaisesRegex(SystemExit, "--max-requests >= 0"):
                main(["--dry-run", *flags])


if __name__ == "__main__":
    unittest.main()
