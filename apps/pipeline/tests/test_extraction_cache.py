import json
import tempfile
import unittest
from datetime import datetime, timedelta, timezone
from pathlib import Path

from pipeline.extraction_cache import (
    extraction_cache_key,
    lookup,
    make_cache_record,
    read_cache_snapshot,
)


class ExtractionResultCacheTests(unittest.TestCase):
    def key(self, *, content="post", prompt="prompt", model="model"):
        return extraction_cache_key(
            prompt_input={"content": content}, system_prompt=prompt,
            user_prompt="user", schema={"type": "object"}, provider="openai",
            model=model, api_base=None, instructor_mode="json",
        )

    def record(self, key, *, outcome="extracted", payload=None, created_at=None):
        return make_cache_record(
            key=key, post_id="p1", payload=payload or {
                "reddit_post_id": "p1", "reddit_title": "Title",
                "recommendations": [], "vibe": {"summary": "quiet dread", "tags": []},
            }, outcome=outcome, provider="openai", model="model",
            created_at=created_at,
        )

    def test_identity_changes_for_content_prompt_and_model(self):
        base = self.key()
        self.assertNotEqual(base, self.key(content="changed"))
        self.assertNotEqual(base, self.key(prompt="changed"))
        self.assertNotEqual(base, self.key(model="changed"))

    def test_raw_wrangler_snapshot_positive_hit(self):
        row = self.record(self.key())
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "snapshot.json"
            path.write_text(json.dumps([{"results": [row]}]), encoding="utf-8")
            rows = read_cache_snapshot(str(path))
        result = lookup(rows, self.key())
        self.assertIsNotNone(result)
        assert result is not None
        self.assertEqual(result["reddit_post_id"], "p1")

    def test_raw_wrangler_snapshot_no_result_hit(self):
        row = self.record(self.key(), outcome="no_result", payload=None)
        result = lookup([row], self.key())
        self.assertIsNotNone(result)
        assert result is not None
        self.assertEqual(result["reddit_post_id"], "p1")
        self.assertEqual(result["recommendations"], [])

    def test_expired_snapshot_row_is_miss(self):
        row = self.record(self.key())
        row["fresh_until"] = (datetime.now(timezone.utc) - timedelta(seconds=1)).isoformat()
        self.assertIsNone(lookup([row], self.key()))

    def test_newest_uses_created_at_and_schema_columns(self):
        older = self.record(self.key(), created_at="2026-07-26T00:00:00Z")
        newer = self.record(
            self.key(), created_at="2026-07-27T00:00:00Z",
            payload={"reddit_post_id": "p1", "reddit_title": "Title",
                     "recommendations": [], "vibe": {"summary": "newer", "tags": []}},
        )
        hit = lookup([older, newer], self.key())
        self.assertIsNotNone(hit)
        assert hit is not None
        self.assertEqual(hit["vibe"]["summary"], "newer")
        self.assertNotIn("fetched_at", newer)

    def test_cache_record_matches_migration_columns(self):
        migration = Path(__file__).parents[3] / "packages/db/migrations/0035_extraction_result_cache.sql"
        sql = migration.read_text(encoding="utf-8")
        row = self.record(self.key())
        expected = {"cache_key", "reddit_post_id", "content_hash", "prompt_hash",
                    "prompt_version", "provider", "model", "api_base", "instructor_mode",
                    "extractor_version", "payload_schema_version", "outcome",
                    "extraction_payload", "source_normalized_checksum", "created_at", "fresh_until"}
        self.assertTrue(expected.issubset(row))
        self.assertIn("created_at", sql)
        self.assertNotIn("fetched_at", row)
        self.assertNotIn("fetched_at", sql)


if __name__ == "__main__":
    unittest.main()
