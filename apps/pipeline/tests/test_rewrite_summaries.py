import unittest
from datetime import datetime, timezone
from pathlib import Path
from tempfile import TemporaryDirectory
from unittest.mock import patch

from pipeline.rewrite_summaries import (
    build_summary_prompt,
    _call_summary,
    MalformedSummaryError,
    next_migration_number,
    render_updates,
    rewrite_rows,
    retry_delay,
    sql_quote,
    write_migration,
)


class RewriteSummaryTests(unittest.TestCase):
    def test_prompt_is_mood_only(self):
        prompt = build_summary_prompt("Foggy harbor", "quiet")
        self.assertIn("exactly one concise, direct atmospheric mood fragment", prompt["system_prompt"])
        self.assertNotIn("recommend", prompt["system_prompt"].lower())
        self.assertIn("Foggy harbor", prompt["user_prompt"])
        self.assertIn("quiet", prompt["user_prompt"])
        self.assertNotIn("Comments", prompt["user_prompt"])

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
