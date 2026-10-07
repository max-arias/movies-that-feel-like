import os
import sqlite3
import unittest
from datetime import datetime, timezone
from pathlib import Path
from tempfile import TemporaryDirectory
from types import SimpleNamespace
from unittest.mock import Mock, patch

from pipeline.rewrite_summaries import (
    build_summary_prompt,
    _call_summary,
    MalformedSummaryError,
    main,
    normalize_summary,
    next_migration_number,
    render_updates,
    rewrite_rows,
    retry_delay,
    sql_quote,
    write_migration,
)


class RewriteSummaryTests(unittest.TestCase):
    def test_sql_quote(self):
        self.assertEqual(sql_quote("a'; DROP TABLE posts; --"), "'a''; DROP TABLE posts; --'")

    def test_next_migration_number_ignores_non_migrations(self):
        with TemporaryDirectory() as directory:
            path = Path(directory)
            (path / "0003_old.sql").touch()
            (path / "0017_seed.sql").touch()
            (path / "README.sql").touch()
            self.assertEqual(next_migration_number(path), 18)

    def test_migration_path_and_existing_target_refusal(self):
        with TemporaryDirectory() as directory:
            path = Path(directory)
            timestamp = datetime(2026, 7, 16, 12, 30, tzinfo=timezone.utc)
            target = write_migration(path, "UPDATE x;\n", timestamp=timestamp)
            self.assertEqual(target.parent, path)
            self.assertEqual(target.name, "0001_rewrite_vibe_summaries_20260716T123000Z.sql")
            self.assertEqual(target.read_text(), "UPDATE x;\n")
            with patch("pipeline.rewrite_summaries.next_migration_number", return_value=1):
                with self.assertRaises(FileExistsError):
                    write_migration(path, "UPDATE y;\n", timestamp=timestamp)

    def test_retry_classification_honors_502_retry_after(self):
        class Response:
            status_code = 502
            headers = {}

        class ProviderError(Exception):
            response = Response()
            retryable = True
            retry_after = 60

        self.assertEqual(retry_delay(ProviderError(), 1, 5), 60.0)

    def test_validation_error_is_not_retryable(self):
        self.assertIsNone(retry_delay(ValueError("invalid response"), 1, 5))

    def test_model_output_failures_are_retryable(self):
        class ValidationError(Exception):
            pass

        self.assertEqual(retry_delay(MalformedSummaryError("blank"), 1, 5), 5)
        self.assertEqual(retry_delay(ValidationError("missing summary"), 2, 5), 10)

    def test_plain_text_content_is_used_not_reasoning(self):
        class Message:
            content = "  cold coastal dread  "
            reasoning_content = "a long explanation that must be ignored"

        class Completions:
            def create(self, **kwargs):
                return type("Response", (), {"choices": [type("Choice", (), {"message": Message()})()]})()

        client = type("Client", (), {"chat": type("Chat", (), {"completions": Completions()})()})()
        self.assertEqual(_call_summary(client, "model", build_summary_prompt("A", "B"), 1, 1), "cold coastal dread")

    def test_blank_content_retries(self):
        class Completions:
            calls = 0

            def create(self, **kwargs):
                self.calls += 1
                content = "   " if self.calls == 1 else "quiet unease"
                message = type("Message", (), {"content": content})()
                return type("Response", (), {"choices": [type("Choice", (), {"message": message})()]})()

        completions = Completions()
        client = type("Client", (), {"chat": type("Chat", (), {"completions": completions})()})()
        with patch("pipeline.rewrite_summaries.time.sleep") as sleep:
            result = _call_summary(client, "model", build_summary_prompt("A", "B"), 2, 3)
        self.assertEqual(result, "quiet unease")
        sleep.assert_called_once_with(3)

    def test_malformed_content_retries(self):
        class Completions:
            calls = 0

            def create(self, **kwargs):
                self.calls += 1
                content = "Summary: not a fragment" if self.calls == 1 else "foggy isolation"
                message = type("Message", (), {"content": content})()
                return type("Response", (), {"choices": [type("Choice", (), {"message": message})()]})()

        completions = Completions()
        client = type("Client", (), {"chat": type("Chat", (), {"completions": completions})()})()
        with patch("pipeline.rewrite_summaries.time.sleep"):
            self.assertEqual(_call_summary(client, "model", build_summary_prompt("A", "B"), 2, 0), "foggy isolation")

    def test_google_response_text_excludes_thought_parts(self):
        from google.genai import types

        response = types.GenerateContentResponse(candidates=[
            types.Candidate(content=types.Content(parts=[
                types.Part(text="private reasoning", thought=True),
                types.Part(text="  cold\n coastal dread  "),
            ]))
        ])
        generate = Mock(return_value=response)
        client = SimpleNamespace(models=SimpleNamespace(generate_content=generate))
        prompt = build_summary_prompt("A", "B")
        result = _call_summary(client, "gemini-3.8-flash", prompt, 1, 1, provider="google")
        self.assertEqual(result, "cold coastal dread")
        kwargs = generate.call_args.kwargs
        self.assertEqual(kwargs["model"], "gemini-3.8-flash")
        self.assertEqual(kwargs["contents"], prompt["user_prompt"])
        self.assertEqual(kwargs["config"].system_instruction, prompt["system_prompt"])

    def test_google_missing_candidate_text_retries(self):
        from google.genai import types

        generate = Mock(side_effect=[
            types.GenerateContentResponse(),
            types.GenerateContentResponse(candidates=[
                types.Candidate(content=types.Content(parts=[types.Part(text="foggy isolation")]))
            ]),
        ])
        client = SimpleNamespace(models=SimpleNamespace(generate_content=generate))
        with patch("pipeline.rewrite_summaries.time.sleep") as sleep:
            result = _call_summary(
                client, "gemini-3.8-flash", build_summary_prompt("A", "B"), 2, 3,
                provider="google",
            )
        self.assertEqual(result, "foggy isolation")
        sleep.assert_called_once_with(3)

    def test_google_numeric_rate_limit_and_server_errors_retry(self):
        from google.genai import errors

        for code in (429, 500, 503):
            with self.subTest(code=code):
                error = errors.APIError(code, {"error": {"message": "provider failed"}})
                self.assertEqual(retry_delay(error, 2, 3), 6)
                generate = Mock(side_effect=[error, SimpleNamespace(text="quiet unease")])
                client = SimpleNamespace(models=SimpleNamespace(generate_content=generate))
                with patch("pipeline.rewrite_summaries.time.sleep") as sleep:
                    result = _call_summary(
                        client, "gemini-3.8-flash", build_summary_prompt("A", "B"), 2, 3,
                        provider="google",
                    )
                self.assertEqual(result, "quiet unease")
                self.assertEqual(generate.call_count, 2)
                sleep.assert_called_once_with(3)

    def test_google_auth_errors_do_not_retry(self):
        from google.genai import errors

        for code in (401, 403):
            with self.subTest(code=code):
                error = errors.APIError(code, {"error": {"message": "unauthorized"}})
                generate = Mock(side_effect=error)
                client = SimpleNamespace(models=SimpleNamespace(generate_content=generate))
                with patch("pipeline.rewrite_summaries.time.sleep") as sleep:
                    with self.assertRaises(errors.APIError):
                        _call_summary(
                            client, "gemini-3.8-flash", build_summary_prompt("A", "B"), 3, 3,
                            provider="google",
                        )
                self.assertEqual(generate.call_count, 1)
                sleep.assert_not_called()

    def test_google_retry_exhaustion_raises_provider_error(self):
        from google.genai import errors

        error = errors.APIError(429, {"error": {"message": "rate limited"}})
        generate = Mock(side_effect=error)
        client = SimpleNamespace(models=SimpleNamespace(generate_content=generate))
        with patch("pipeline.rewrite_summaries.time.sleep") as sleep:
            with self.assertRaises(errors.APIError) as failure:
                _call_summary(
                    client, "gemini-3.8-flash", build_summary_prompt("A", "B"), 2, 3,
                    provider="google",
                )
        self.assertIs(failure.exception, error)
        self.assertEqual(generate.call_count, 2)
        sleep.assert_called_once_with(3)

    def test_non_plain_text_output_is_rejected(self):
        for value in (None, [], {}, "", "   ", "```text\nmood\n```", '{"mood": "quiet"}', "[quiet]", "Mood: quiet"):
            with self.subTest(value=value):
                with self.assertRaises(MalformedSummaryError):
                    normalize_summary(value)

    def _create_database(self, path):
        with sqlite3.connect(path) as connection:
            connection.execute(
                "CREATE TABLE imported_vibe_posts "
                "(reddit_post_id TEXT, title TEXT, selftext TEXT, vibe_summary TEXT)"
            )
            connection.executemany(
                "INSERT INTO imported_vibe_posts VALUES (?, ?, ?, ?)",
                [("a", "A", "", "old"), ("b", "B", "", "old")],
            )

    def test_google_failure_emits_no_migration(self):
        from google.genai import errors

        error = errors.APIError(403, {"error": {"message": "unauthorized"}})
        generate = Mock(side_effect=[SimpleNamespace(text="quiet unease"), error])
        client = SimpleNamespace(models=SimpleNamespace(generate_content=generate))
        with TemporaryDirectory() as directory:
            db = Path(directory) / "app.db"
            migrations = Path(directory) / "migrations"
            migrations.mkdir()
            self._create_database(db)
            with patch.dict(os.environ, {"GEMINI_API_KEY": "gemini-test-key"}, clear=True):
                with patch("google.genai.Client", return_value=client):
                    with self.assertRaises(SystemExit) as failure:
                        main(["--db", str(db), "--migrations-dir", str(migrations), "--workers", "1"])
            self.assertEqual(failure.exception.code, 1)
            self.assertEqual(list(migrations.iterdir()), [])

    def test_missing_google_key_does_not_fall_back_to_openai(self):
        with TemporaryDirectory() as directory:
            db = Path(directory) / "app.db"
            migrations = Path(directory) / "migrations"
            migrations.mkdir()
            self._create_database(db)
            with patch.dict(os.environ, {"OPENAI_API_KEY": "openai-test-key"}, clear=True):
                with patch("google.genai.Client") as google_factory, patch("openai.OpenAI") as openai_factory:
                    with self.assertRaises(SystemExit):
                        main(["--db", str(db), "--migrations-dir", str(migrations)])
            google_factory.assert_not_called()
            openai_factory.assert_not_called()
            self.assertEqual(list(migrations.iterdir()), [])

    def test_google_api_base_is_rejected(self):
        with TemporaryDirectory() as directory:
            db = Path(directory) / "app.db"
            self._create_database(db)
            with patch("google.genai.Client") as factory:
                with self.assertRaises(SystemExit):
                    main(["--db", str(db), "--api-base", "http://localhost:9999"])
            factory.assert_not_called()

    def test_render_updates_is_ordered_by_post_id(self):
        sql = render_updates({"z": "last", "a": "first"})
        self.assertLess(sql.index("WHERE reddit_post_id = 'a'"), sql.index("WHERE reddit_post_id = 'z'"))

    def test_worker_error_returns_no_partial_results(self):
        class Completions:
            def create(self, **kwargs):
                message = type("Message", (), {"content": "   "})()
                return type("Response", (), {"choices": [type("Choice", (), {"message": message})()]})()

        client = type("Client", (), {"chat": type("Chat", (), {"completions": Completions()})()})()
        with self.assertRaises(Exception):
            rewrite_rows(
                [("a", "A", ""), ("b", "B", "")],
                lambda: client,
                "model",
                workers=2,
                max_attempts=1,
                backoff_seconds=0,
            )


if __name__ == "__main__":
    unittest.main()
