import contextlib
import io
import json
import os
from pathlib import Path
import tempfile
import threading
from types import SimpleNamespace
import unittest
from unittest.mock import patch

from pipeline.extract import (_RequestLimiter, _fatal_provider_error, _resolve_openai_config,
                              _retryable, _run_extraction, main)
from pipeline.extraction_cache import lookup, make_cache_record
from pipeline.models import PostExtraction


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


class NativeGoogleExtractionTests(unittest.TestCase):
    """Exercise provider HTTP responses through the real SDK and Instructor."""

    def run_http_responses(self, responses, post_ids=("A", "B"), **options):
        import httpx
        import instructor
        from google import genai
        from google.genai import types

        requests = []

        def respond(request):
            requests.append(request)
            status, body = responses[min(len(requests) - 1, len(responses) - 1)]
            return httpx.Response(status, json=body)

        google_client = genai.Client(
            api_key="fake-test-key",
            http_options=types.HttpOptions(
                client_args={"transport": httpx.MockTransport(respond)},
                retry_options=types.HttpRetryOptions(attempts=1),
            ),
        )
        try:
            client = instructor.from_genai(
                google_client, model="gemini-3.8-flash", mode=instructor.Mode.JSON,
            )
            results, errors = run_client(
                client, prompts_for(*post_ids), provider="google",
                actual_model="gemini-3.8-flash", **options,
            )
            return results, errors, requests
        finally:
            google_client.close()

    @staticmethod
    def success(post_id):
        return (200, {
            "candidates": [{
                "content": {"role": "model", "parts": [{
                    "text": extraction_for(post_id).model_dump_json(),
                }]},
                "finishReason": "STOP",
            }],
        })

    @staticmethod
    def failure(status):
        return status, {"error": {"code": status, "message": "Provider request failed",
                                 "status": "PERMISSION_DENIED" if status == 403 else "ERROR"}}

    def test_native_json_extraction_returns_valid_post(self):
        results, errors, requests = self.run_http_responses(
            [self.success("A")], post_ids=("A",),
        )
        self.assertEqual(errors, [])
        self.assertEqual(results[1]["reddit_post_id"], "A")
        self.assertEqual(results[1]["vibe"]["summary"], "vibe-A")
        self.assertEqual(len(requests), 1)

    def test_native_fatal_credentials_stop_remaining_posts_without_sdk_retries(self):
        for status in (401, 403):
            with self.subTest(status=status):
                results, errors, requests = self.run_http_responses([self.failure(status)])
                self.assertEqual(results, {})
                self.assertEqual(len(requests), 1)
                self.assertEqual(len(errors), 1)
                self.assertTrue(errors[0]["fatal"])
                self.assertEqual(errors[0]["provider_status"], status)
                self.assertEqual(errors[0]["attempt_count"], 1)

    def test_native_transient_errors_retry_at_pipeline_boundary(self):
        for status in (429, 500, 503):
            with self.subTest(status=status), patch("pipeline.extract._wait_for_retry"):
                results, errors, requests = self.run_http_responses(
                    [self.failure(status), self.success("A")], post_ids=("A",),
                )
                self.assertEqual(errors, [])
                self.assertEqual(len(requests), 2)
                self.assertEqual(results[1]["attempt_count"], 2)

    def test_invalid_provider_output_never_becomes_a_cacheable_success(self):
        empty = (200, {"candidates": []})
        for response in (empty, self.success("wrong-post")):
            with self.subTest(response=response):
                completed = []
                results, errors, requests = self.run_http_responses(
                    [response], post_ids=("A",),
                    on_complete=lambda *args: completed.append(args),
                )
                self.assertEqual(results, {})
                self.assertEqual(len(errors), 1)
                self.assertEqual(len(requests), 1)
                self.assertFalse(errors[0]["retryable"])
                self.assertIsNone(completed[0][2])
                self.assertIsNotNone(completed[0][3])

    def test_google_numeric_error_code_survives_exception_wrappers_without_response(self):
        from google.genai.errors import APIError

        for status in (401, 403, 429, 500, 503):
            for link in ("last_error", "__cause__", "__context__"):
                with self.subTest(status=status, link=link):
                    inner = APIError(status, self.failure(status)[1])
                    wrapper = RuntimeError("Instructor retries exhausted")
                    setattr(wrapper, link, inner)
                    self.assertEqual(_retryable(wrapper), (status in (429, 500, 503), None))
                    fatal = _fatal_provider_error(wrapper)
                    if status in (401, 403):
                        self.assertEqual(fatal["provider_status"], status)
                    else:
                        self.assertIsNone(fatal)


class ExtractionCacheMappingTests(unittest.TestCase):
    def test_success_failure_success_preserves_result_and_cache_mapping(self):
        prompts = [
            {
                "reddit_post_id": post_id,
                "system_prompt": "system",
                "user_prompt": post_id,
                "_cache_key": f"cache-{post_id}",
            }
            for post_id in ("A", "B", "C")
        ]

        class Client:
            def create(self, **kwargs):
                post_id = kwargs["messages"][1]["content"]
                if post_id == "B":
                    raise ValueError("B failed")
                return PostExtraction(
                    reddit_post_id=post_id,
                    reddit_title=f"title-{post_id}",
                    vibe={"summary": f"vibe-{post_id}", "tags": []},
                )

        completed = []

        def on_complete(request_number, prompt, result, error):
            completed.append((request_number, prompt["reddit_post_id"], result, error))

        results, errors = _run_extraction(
            prompts,
            sleep_seconds=0,
            max_attempts=1,
            backoff_seconds=0,
            backoff_multiplier=1,
            client=Client(),
            actual_model="test-model",
            provider="openai",
            concurrency=3,
            rate_limit_rpm=0,
            on_complete=on_complete,
        )

        self.assertEqual(set(results), {1, 3})
        self.assertEqual({result["reddit_post_id"] for result in results.values()}, {"A", "C"})
        self.assertEqual([error["reddit_post_id"] for error in errors], ["B"])
        self.assertEqual(
            {request_number: post_id for request_number, post_id, _, _ in completed},
            {1: "A", 2: "B", 3: "C"},
        )

        cache_records = [
            make_cache_record(
                key=prompts[request_number - 1]["_cache_key"],
                post_id=prompts[request_number - 1]["reddit_post_id"],
                payload=result,
                outcome="extracted",
            )
            for request_number, result in results.items()
        ]
        self.assertEqual(
            {(row["cache_key"], row["reddit_post_id"]) for row in cache_records},
            {("cache-A", "A"), ("cache-C", "C")},
        )
        self.assertIsNone(lookup(cache_records, "cache-B", expected_post_id="B"))
        result_a = lookup(cache_records, "cache-A", expected_post_id="A")
        result_c = lookup(cache_records, "cache-C", expected_post_id="C")
        self.assertIsNotNone(result_a)
        self.assertIsNotNone(result_c)
        assert result_a is not None and result_c is not None
        self.assertEqual(result_a["vibe"]["summary"], "vibe-A")
        self.assertEqual(result_c["vibe"]["summary"], "vibe-C")


class ProviderError(Exception):
    def __init__(self, status, *, on_response=True, headers=None):
        super().__init__("Upstream request failed: Insufficient account funds"
                         if status == 402 else f"provider status {status}")
        if on_response:
            self.response = SimpleNamespace(status_code=status, headers=headers or {})
        else:
            self.status_code = status


def prompts_for(*post_ids):
    return [{"reddit_post_id": post_id, "system_prompt": "system", "user_prompt": post_id}
            for post_id in post_ids]


def extraction_for(post_id):
    return PostExtraction(reddit_post_id=post_id, reddit_title=f"title-{post_id}",
                          vibe={"summary": f"vibe-{post_id}", "tags": []})


def run_client(client, prompts, **kwargs):
    options = dict(sleep_seconds=0, max_attempts=3, backoff_seconds=0,
                   backoff_multiplier=1, client=client, actual_model="test-model",
                   provider="openai", concurrency=1, rate_limit_rpm=0)
    options.update(kwargs)
    return _run_extraction(prompts, **options)


class AccountFailureTests(unittest.TestCase):
    def test_batch_wide_402_stops_after_first_call(self):
        calls = []

        class Client:
            def create(self, **kwargs):
                calls.append(kwargs)
                raise ProviderError(402)

        completed = []
        results, errors = run_client(
            Client(), prompts_for(*(str(i) for i in range(100))),
            on_complete=lambda *args: completed.append(args))
        self.assertEqual(results, {})
        self.assertEqual(len(calls), 1)
        self.assertEqual(len(errors), 1)
        self.assertTrue(errors[0]["fatal"])
        self.assertEqual(errors[0]["provider_status"], 402)
        self.assertEqual(errors[0]["attempt_count"], 1)
        self.assertIn("provider service status or support", errors[0]["action"])
        self.assertEqual(len(completed), 1)

    def test_fatal_status_through_all_wrapper_links_and_cycles(self):
        for status in (401, 402, 403):
            for on_response in (True, False):
                for link in ("last_error", "__cause__", "__context__"):
                    with self.subTest(status=status, on_response=on_response, link=link):
                        inner = ProviderError(status, on_response=on_response)
                        wrapper = RuntimeError("Instructor retries exhausted")
                        setattr(wrapper, link, inner)
                        inner.last_error = wrapper
                        self.assertEqual(_fatal_provider_error(wrapper)["provider_status"], status)
                        self.assertEqual(_retryable(wrapper), (False, None))
                        calls = []

                        class Client:
                            def create(self, **kwargs):
                                calls.append(kwargs)
                                raise wrapper

                        results, errors = run_client(Client(), prompts_for("A", "B"))
                        self.assertEqual(results, {})
                        self.assertEqual(len(calls), 1)
                        self.assertEqual(errors[0]["provider_status"], status)

    def test_rate_limiter_waiting_workers_do_not_call_provider(self):
        all_waiting = threading.Event()
        lock = threading.Lock()
        wait_count = 0
        calls = []
        original_wait = _RequestLimiter.wait

        def observe_wait(limiter, stopped):
            nonlocal wait_count
            with lock:
                wait_count += 1
                if wait_count == 3:
                    all_waiting.set()
            return original_wait(limiter, stopped)

        class Client:
            def create(self, **kwargs):
                calls.append(kwargs)
                if not all_waiting.wait(5):
                    raise AssertionError("workers did not reach limiter")
                raise ProviderError(402)

        completed = []
        with patch("pipeline.extract._RequestLimiter.wait", observe_wait):
            results, errors = run_client(
                Client(), prompts_for("A", "B", "C", "D", "E"),
                concurrency=3, rate_limit_rpm=0.01,
                on_complete=lambda *args: completed.append(args))
        self.assertTrue(all_waiting.is_set())
        self.assertEqual(len(calls), 1)
        self.assertEqual(results, {})
        self.assertEqual(len(errors), 1)
        self.assertEqual(len(completed), 1)

    def test_already_in_flight_success_is_preserved_after_fatal(self):
        both_started = threading.Barrier(2)
        fatal_recorded = threading.Event()
        calls = []
        completed = []

        class Client:
            def create(self, **kwargs):
                post_id = kwargs["messages"][1]["content"]
                calls.append(post_id)
                both_started.wait(5)
                if post_id == "B":
                    raise ProviderError(402)
                if not fatal_recorded.wait(5):
                    raise AssertionError("fatal error not checkpointed")
                return extraction_for(post_id)

        def complete(i, prompt, result, error):
            completed.append((i, result, error))
            if error and error.get("fatal"):
                fatal_recorded.set()

        results, errors = run_client(Client(), prompts_for("A", "B", "C", "D"),
                                     concurrency=2, on_complete=complete)
        self.assertCountEqual(calls, ["A", "B"])
        self.assertEqual(set(results), {1})
        self.assertEqual(results[1]["reddit_post_id"], "A")
        self.assertEqual(errors[0]["reddit_post_id"], "B")
        self.assertEqual(len(completed), 2)

    def test_per_post_400_does_not_abort_batch(self):
        calls = []

        class Client:
            def create(self, **kwargs):
                post_id = kwargs["messages"][1]["content"]
                calls.append(post_id)
                if post_id == "B":
                    raise ProviderError(400)
                return extraction_for(post_id)

        results, errors = run_client(Client(), prompts_for("A", "B", "C"))
        self.assertEqual(calls, ["A", "B", "C"])
        self.assertEqual(set(results), {1, 3})
        self.assertFalse(errors[0].get("fatal", False))
        self.assertFalse(errors[0]["retryable"])
        self.assertEqual(errors[0]["attempt_count"], 1)

    def test_wrapped_transient_429_still_retries(self):
        calls = []

        class Client:
            def create(self, **kwargs):
                calls.append(kwargs)
                if len(calls) == 1:
                    wrapper = RuntimeError("Instructor retries exhausted")
                    wrapper.last_error = ProviderError(429, headers={"retry-after-ms": "1"})
                    raise wrapper
                return extraction_for("A")

        results, errors = run_client(Client(), prompts_for("A"))
        self.assertEqual(len(calls), 2)
        self.assertEqual(errors, [])
        self.assertEqual(results[1]["attempt_count"], 2)


class AccountFailureCliTests(unittest.TestCase):
    def test_fatal_is_saved_and_rejected_despite_overrides_then_resumes(self):
        cases = [(override, legacy) for override in ("--allow-errors", "--allow-empty")
                 for legacy in (False, True)]
        for override, legacy in cases:
            with self.subTest(override=override, legacy=legacy), tempfile.TemporaryDirectory() as tmp:
                root = Path(tmp)
                normalized = root / "normalized.json"
                output = root / "extraction.json"
                normalized.write_text(json.dumps({"posts": [
                    {"reddit_post_id": p, "title": f"title-{p}"} for p in ("A", "B", "C", "D")
                ]}), encoding="utf-8")
                calls = []

                class Client:
                    failing = True

                    def create(self, **kwargs):
                        text = kwargs["messages"][1]["content"]
                        post_id = next(p for p in ("A", "B", "C", "D")
                                       if f"**reddit_post_id**: {p}" in text)
                        calls.append(post_id)
                        if self.failing and post_id == "B":
                            raise ProviderError(402)
                        return extraction_for(post_id)

                client = Client()
                argv = ["--input", str(normalized), "--out", str(output),
                        "--model", "test-model", "--concurrency", "1", "--rate-limit-rpm", "0",
                        override]
                with contextlib.ExitStack() as stack:
                    stack.enter_context(patch("pipeline.extract.ensure_pipeline_dirs"))
                    stack.enter_context(patch("pipeline.extract.checkpoints_dir", return_value=root))
                    stack.enter_context(patch("pipeline.extract._build_extraction_client",
                                             return_value=(client, "test-model", {})))
                    stdout = stack.enter_context(contextlib.redirect_stdout(io.StringIO()))
                    with self.assertRaises(SystemExit) as exit_info:
                        main(argv)
                    self.assertEqual(exit_info.exception.code, 1)
                    artifact = json.loads(output.read_text(encoding="utf-8"))
                    self.assertEqual(artifact["status"], "failed")
                    self.assertEqual(artifact["summary"]["completed_count"], 2)
                    self.assertEqual(artifact["summary"]["pending_count"], 2)
                    self.assertEqual(artifact["summary"]["success_count"], 1)
                    self.assertEqual([r["reddit_post_id"] for r in artifact["results"]], ["A"])
                    self.assertEqual([r["reddit_post_id"] for r in artifact["cache_records"]], ["A"])
                    self.assertIn("Provider HTTP 402", stdout.getvalue())
                    checkpoint = next(root.glob("*.jsonl"))
                    records = [json.loads(line) for line in checkpoint.read_text().splitlines()]
                    self.assertEqual([r["reddit_post_id"] for r in records], ["A", "B"])
                    if legacy:
                        # Old artifacts lacked status metadata; their funding
                        # errors must also be retried rather than cached.
                        records[1]["error"] = {
                            "error": "Upstream request failed: Insufficient account funds",
                            "retryable": False, "attempt_count": 1, "reddit_post_id": "B"}
                        checkpoint.write_text("".join(json.dumps(r) + "\n" for r in records))
                    client.failing = False
                    main(argv)
                resumed = json.loads(output.read_text(encoding="utf-8"))
                self.assertEqual(calls, ["A", "B", "B", "C", "D"])
                self.assertEqual(resumed["status"], "extracted")
                self.assertEqual(resumed["summary"]["completed_count"], 4)
                self.assertEqual(resumed["summary"]["pending_count"], 0)
                self.assertEqual(resumed["errors"], [])


if __name__ == "__main__":
    unittest.main()
