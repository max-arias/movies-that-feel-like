import json
import sqlite3
import tempfile
import unittest
from pathlib import Path

from pipeline.backfill_images import build_backfill, write_outputs


class BackfillImageTests(unittest.TestCase):
    def test_fallback_is_row_safe_and_keeps_current_source(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            db_path = root / "app.db"
            db = sqlite3.connect(db_path)
            db.executescript("""
                CREATE TABLE imported_vibe_posts (id INTEGER PRIMARY KEY, reddit_post_id TEXT);
                CREATE TABLE imported_post_images (id INTEGER PRIMARY KEY, imported_vibe_post_id INTEGER, sort_order INTEGER, source_url TEXT, preview_url TEXT, width INTEGER, height INTEGER);
                INSERT INTO imported_vibe_posts VALUES (1, 'deleted');
                INSERT INTO imported_post_images VALUES (42, 1, 0, 'https://current/source', 'https://old/preview', 900, 1);
            """)
            db.commit(); db.close()
            normalized = root / "normalized.json"
            normalized.write_text(json.dumps({"posts": [], "refetch_outcomes": {"outcomes": [{"reddit_post_id": "deleted", "attempted": True, "status": "unavailable"}]}}), encoding="utf-8")
            outcomes, counts = build_backfill(db_path, normalized)
            sql = root / "backfill.sql"
            write_outputs(sql, root / "manifest.json", outcomes, counts)
            self.assertEqual(counts, {"attempted": 1, "unattempted": 0, "succeeded": 0, "fallback": 1})
            text = sql.read_text(encoding="utf-8")
            self.assertIn("UPDATE imported_post_images SET", text)
            self.assertIn("WHERE id=42;", text)
            self.assertNotIn("DELETE", text)
            self.assertNotIn("INSERT", text)
            self.assertIn("preview_url=NULL", text)

    def test_ambiguous_refresh_falls_back_every_row(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory); db_path = root / "app.db"
            db = sqlite3.connect(db_path)
            db.executescript("""
                CREATE TABLE imported_vibe_posts (id INTEGER PRIMARY KEY, reddit_post_id TEXT);
                CREATE TABLE imported_post_images (id INTEGER PRIMARY KEY, imported_vibe_post_id INTEGER, sort_order INTEGER, source_url TEXT, preview_url TEXT, width INTEGER, height INTEGER);
                INSERT INTO imported_vibe_posts VALUES (1, 'p');
                INSERT INTO imported_post_images VALUES (1, 1, 0, 'https://same', NULL, NULL, NULL);
                INSERT INTO imported_post_images VALUES (2, 1, 1, 'https://same', NULL, NULL, NULL);
            """); db.commit(); db.close()
            normalized = root / "n.json"
            normalized.write_text(json.dumps({"posts": [{"reddit_post_id": "p", "images": [
                {"sort_order": 10, "source_url": "https://same", "preview_url": "https://p1"},
                {"sort_order": 20, "source_url": "https://same", "preview_url": "https://p2"}]}],
                "refetch_outcomes": {"outcomes": [{"reddit_post_id": "p", "attempted": True, "status": "success"}]}}), encoding="utf-8")
            rows, counts = build_backfill(db_path, normalized)
            self.assertEqual(counts["succeeded"], 0)
            self.assertEqual(counts["fallback"], 2)
            self.assertTrue(all(row["reason"] == "non_bijective_url_match" for row in rows))

    def test_explicit_success_selects_preview_update(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory); db_path = root / "app.db"
            db = sqlite3.connect(db_path)
            db.executescript("""
                CREATE TABLE imported_vibe_posts (id INTEGER PRIMARY KEY, reddit_post_id TEXT);
                CREATE TABLE imported_post_images (id INTEGER PRIMARY KEY, imported_vibe_post_id INTEGER, sort_order INTEGER, source_url TEXT, preview_url TEXT, width INTEGER, height INTEGER);
                INSERT INTO imported_vibe_posts VALUES (1, 'p');
                INSERT INTO imported_post_images VALUES (9, 1, 77, 'https://source', NULL, NULL, NULL);
            """); db.commit(); db.close()
            normalized = root / "n.json"
            normalized.write_text(json.dumps({"posts": [{"reddit_post_id": "p", "images": [{
                "sort_order": 2, "source_url": "https://source", "preview_url": "https://preview",
                "preview_width": 802, "preview_height": 400}]}],
                "refetch_outcomes": {"outcomes": [{"reddit_post_id": "p", "attempted": True, "status": "success"}]}}), encoding="utf-8")
            rows, counts = build_backfill(db_path, normalized)
            self.assertEqual(counts["succeeded"], 1)
            self.assertEqual(rows[0]["outcome"], "selected")
            self.assertEqual(rows[0]["preview_url"], "https://preview")


if __name__ == "__main__":
    unittest.main()
