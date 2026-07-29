import json
import sqlite3
import tempfile
import unittest
from pathlib import Path

from pipeline.cache_sql import render_chunks, write_cache_sql
from pipeline.enrich_cache import make_cache_record


class CacheSqlTests(unittest.TestCase):
    def test_enrichment_chunks_execute_twice_for_matched_and_not_found(self):
        candidate = {"candidate_key": "title|2020|movie", "title": "O'Reilly", "year": 2020, "media_type": "movie"}
        records = [
            make_cache_record(provider="tmdb", candidate=candidate, language="en-US", include_adult=False,
                              outcome="matched", payload={"tmdb_id": 7, "media_type": "movie", "title": "O'Reilly"}),
            make_cache_record(provider="tmdb", candidate={**candidate, "candidate_key": "missing|2020|movie"},
                              language="en-US", include_adult=False, outcome="not_found", payload=None),
        ]
        sql = "\n".join(render_chunks("enrichment", records))
        db = sqlite3.connect(":memory:")
        db.executescript((Path(__file__).parents[3] / "packages/db/migrations/0034_enrichment_resolution_cache.sql").read_text())
        db.executescript(sql)
        db.executescript(sql)
        self.assertEqual(db.execute("SELECT count(*) FROM enrichment_resolution_cache").fetchone()[0], 2)
        self.assertEqual(db.execute("SELECT count(*) FROM enrichment_resolution_cache WHERE outcome='matched'").fetchone()[0], 1)
        self.assertEqual(db.execute("SELECT count(*) FROM enrichment_resolution_cache WHERE outcome='not_found'").fetchone()[0], 1)

    def test_validation_rejects_unsupported_and_inconsistent_records(self):
        with self.assertRaises(ValueError):
            render_chunks("enrichment", [{"outcome": "error"}])
        with self.assertRaises(ValueError):
            render_chunks("enrichment", [{"outcome": "not_found", "provider": "tmdb"}])

    def test_extraction_chunk_is_repeatable_and_preserves_values(self):
        record = {
            "cache_key": "post|'日本'", "reddit_post_id": "p-1", "content_hash": "content",
            "prompt_hash": "prompt", "prompt_version": "v1", "provider": "openai",
            "model": "model", "api_base": None, "instructor_mode": "auto",
            "extractor_version": "v1", "payload_schema_version": "1", "outcome": "extracted",
            "extraction_payload": {"title": "O'Reilly", "emoji": "🎬"},
            "source_normalized_checksum": "normalized", "created_at": "2026-01-01",
            "fresh_until": "2026-02-01",
        }
        sql = render_chunks("extraction", [record])[0]
        db = sqlite3.connect(":memory:")
        db.executescript((Path(__file__).parents[3] / "packages/db/migrations/0035_extraction_result_cache.sql").read_text())
        db.executescript(sql)
        db.executescript(sql)
        row = db.execute("SELECT extraction_payload, api_base FROM extraction_result_cache").fetchone()
        self.assertEqual(json.loads(row[0])["emoji"], "🎬")
        self.assertIsNone(row[1])
        self.assertEqual(db.execute("SELECT count(*) FROM extraction_result_cache").fetchone()[0], 1)

    def test_chunks_obey_statement_limit_and_manifest_checksums(self):
        records = []
        for index in range(5):
            records.append({
                "cache_key": f"key-{index}", "reddit_post_id": f"post-{index}",
                "content_hash": "content", "prompt_hash": "prompt", "prompt_version": "v1",
                "provider": "provider", "model": "model", "api_base": None,
                "instructor_mode": "auto", "extractor_version": "v1",
                "payload_schema_version": "1", "outcome": "no_result",
                "extraction_payload": None, "source_normalized_checksum": "checksum",
                "created_at": "2026-01-01", "fresh_until": "2026-02-01",
            })
        self.assertEqual(len(render_chunks("extraction", records, max_statements=2)), 3)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "e.json").write_text("{}")
            (root / "n.json").write_text("{}")
            manifest = write_cache_sql(
                extraction_records=records, enrichment_records=[],
                extraction_artifact=root / "e.json", enrichment_artifact=root / "n.json",
                output_dir=root / "sql", max_statements=2,
            )
            self.assertEqual(manifest["sources"]["extraction"]["record_count"], 5)
            for chunk in manifest["chunks"]:
                self.assertTrue(chunk["sha256"])


if __name__ == "__main__":
    unittest.main()
