import asyncio
import json
import sqlite3
import tempfile
import unittest
from datetime import datetime, timedelta, timezone
from pathlib import Path
from unittest.mock import patch

from pipeline.enrich_cache import ProviderCache, make_cache_record, read_cache_snapshot
from pipeline.enrich import _latest_extraction
from pipeline.load import _write_data_migration


class EnrichmentResolutionCacheTests(unittest.TestCase):
    def candidate(self):
        return {
            "candidate_key": "the thing|1982|movie",
            "title": "The Thing",
            "year": 1982,
            "media_type": "movie",
        }

    def test_hydrates_positive_and_negative_rows_from_wrangler_envelope(self):
        candidate = self.candidate()
        positive = make_cache_record(
            provider="tmdb", candidate=candidate, language="en-US",
            include_adult=False, outcome="matched",
            payload={"tmdb_id": 1, "media_type": "movie", "title": "The Thing"},
        )
        negative = make_cache_record(
            provider="tmdb", candidate={**candidate, "candidate_key": "missing|1982|movie", "title": "Missing"},
            language="en-US", include_adult=False, outcome="not_found", payload=None,
        )
        with tempfile.TemporaryDirectory() as directory:
            snapshot = Path(directory) / "snapshot.json"
            snapshot.write_text(json.dumps([{"results": [positive, negative]}]), encoding="utf-8")
            cache = ProviderCache(Path(directory) / "unused.jsonl",
                                  snapshot=read_cache_snapshot(snapshot))
            self.assertEqual(asyncio.run(cache.lookup(
                provider="tmdb", candidate=candidate, language="en-US", include_adult=False
            )), positive)
            self.assertEqual(asyncio.run(cache.lookup(
                provider="tmdb", candidate={**candidate, "candidate_key": "missing|1982|movie", "title": "Missing"},
                language="en-US", include_adult=False
            )), negative)

    def test_expired_snapshot_row_is_a_cache_miss(self):
        candidate = self.candidate()
        row = make_cache_record(provider="tmdb", candidate=candidate, language="en-US",
                                include_adult=False, outcome="not_found", payload=None)
        row["fresh_until"] = (datetime.now(timezone.utc) - timedelta(seconds=1)).isoformat().replace("+00:00", "Z")
        cache = ProviderCache(Path("/dev/null"), snapshot=[row])
        self.assertIsNone(asyncio.run(cache.lookup(
            provider="tmdb", candidate=candidate, language="en-US", include_adult=False
        )))

    def test_d1_integer_versions_hit_and_newest_snapshot_row_wins(self):
        candidate = self.candidate()
        older = make_cache_record(
            provider="tmdb", candidate=candidate, language="en-US",
            include_adult=False, outcome="matched",
            payload={"tmdb_id": 1, "media_type": "movie", "title": "Older"},
        )
        newer = {**older, "resolved_title": "Newer", "normalized_payload": json.dumps(
            {"tmdb_id": 1, "media_type": "movie", "title": "Newer"}
        )}
        older["fetched_at"] = "2026-07-26T00:00:00Z"
        newer["fetched_at"] = "2026-07-27T00:00:00Z"
        for row in (older, newer):
            row["candidate_key_version"] = 1
            row["payload_schema_version"] = 1

        # D1/Wrangler returns these schema-version columns as INTEGER values.
        cache = ProviderCache(Path("/dev/null"), snapshot=[newer, older])
        hit = asyncio.run(cache.lookup(
            provider="tmdb", candidate=candidate, language="en-US", include_adult=False
        ))
        self.assertEqual(hit, newer)
        assert hit is not None
        self.assertEqual(hit["candidate_key_version"], 1)
        self.assertEqual(hit["payload_schema_version"], 1)

    def test_record_uses_schema_fields_and_outcome_ttl(self):
        row = make_cache_record(provider="tmdb", candidate=self.candidate(), language="en-US",
                                include_adult=False, outcome="not_found", payload=None)
        self.assertEqual(row["outcome"], "not_found")
        self.assertNotIn("status", row)
        self.assertNotIn("match_payload", row)
        lifetime = datetime.fromisoformat(row["fresh_until"].replace("Z", "+00:00")) - datetime.fromisoformat(row["fetched_at"].replace("Z", "+00:00"))
        self.assertEqual(lifetime, timedelta(days=7))

    def test_generated_cache_migration_uses_authoritative_columns(self):
        candidate = self.candidate()
        row = make_cache_record(provider="tmdb", candidate=candidate, language="en-US",
                                include_adult=False, outcome="matched",
                                payload={"tmdb_id": 1, "media_type": "movie", "title": "The Thing"})
        with tempfile.TemporaryDirectory() as directory:
            paths = _write_data_migration(
                sqlite3.connect(":memory:"), Path(directory), datetime.now(timezone.utc), {},
                cache_records=[row],
            )
            enrichment_path = next(path for path in paths if "06_resolution_cache" in path.name)
            sql = enrichment_path.read_text(encoding="utf-8")
        self.assertIn('"outcome"', sql)
        self.assertIn('"resolved_type"', sql)
        self.assertIn('"normalized_payload"', sql)
        self.assertNotIn('"status"', sql)
        self.assertNotIn('"resolved_media_type"', sql)
        self.assertNotIn('"match_payload"', sql)


class EnrichArtifactSelectionTests(unittest.TestCase):
    def test_cache_snapshot_is_not_selected_as_latest_extraction(self):
        with tempfile.TemporaryDirectory() as directory:
            working = Path(directory)
            extraction = working / "extraction-20260101T000000Z.json"
            cache_snapshot = working / "extraction-cache-snapshot.json"
            extraction.write_text("{}", encoding="utf-8")
            cache_snapshot.write_text("[]", encoding="utf-8")

            with patch("pipeline.enrich.working_dir", return_value=working):
                self.assertEqual(_latest_extraction(), extraction)


if __name__ == "__main__":
    unittest.main()
