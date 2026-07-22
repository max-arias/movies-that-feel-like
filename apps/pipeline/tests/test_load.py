import sqlite3
import shutil
import tempfile
import unittest
from pathlib import Path

from pipeline.load import (
    _apply_migrations,
    _build_merge_index,
    _check_extraction_health,
    _select_post_ids_for_load,
)


class LoadPartialExtractionTests(unittest.TestCase):
    def test_partial_extraction_requires_a_success(self):
        artifact = {"status": "extracted", "summary": {"success_count": 0, "error_count": 2}}

        with self.assertRaises(ValueError):
            _check_extraction_health(artifact, allow_partial=True, allow_empty=False)

        _check_extraction_health(artifact, allow_partial=False, allow_empty=True)

    def test_partial_extraction_accepts_mixed_results(self):
        artifact = {"status": "extracted", "summary": {"success_count": 1, "error_count": 2}}

        _check_extraction_health(artifact, allow_partial=True, allow_empty=False)

    def test_partial_extraction_rejects_failed_status(self):
        artifact = {"status": "failed", "summary": {"success_count": 1, "error_count": 2}}

        with self.assertRaises(ValueError):
            _check_extraction_health(artifact, allow_partial=True, allow_empty=False)

    def test_partial_mode_selects_only_successful_extraction_posts(self):
        normalized = {
            "posts": [
                {"reddit_post_id": "successful"},
                {"reddit_post_id": "failed"},
            ]
        }
        extraction = {
            "results": [{"reddit_post_id": "successful", "recommendations": []}],
        }

        index = _build_merge_index(normalized, {}, extraction, {})
        selected = _select_post_ids_for_load(
            index["all_post_ids"], index["extraction_by_post"], allow_partial=True
        )

        self.assertEqual(selected, ["successful"])
        self.assertNotIn("failed", selected)


class LoadMigrationTests(unittest.TestCase):
    def test_all_migrations_use_current_imported_post_images_columns(self):
        migrations = Path(__file__).parents[3] / "packages" / "db" / "migrations"
        db = sqlite3.connect(":memory:")
        try:
            _apply_migrations(db, migrations)
            columns = {
                row[1]
                for row in db.execute("PRAGMA table_info(imported_post_images)")
            }
        finally:
            db.close()

        self.assertIn("source_url", columns)
        self.assertIn("preview_url", columns)
        self.assertNotIn("url", columns)

    def test_bridge_repairs_a_database_with_old_destructive_0028(self):
        migrations = Path(__file__).parents[3] / "packages" / "db" / "migrations"
        db = sqlite3.connect(":memory:")
        try:
            for migration in sorted(migrations.glob("*.sql")):
                if migration.name < "0028_imported_post_images_source_urls.sql":
                    db.executescript(migration.read_text(encoding="utf-8"))

            db.execute("DROP TABLE imported_post_images")
            db.execute(
                """
                CREATE TABLE imported_post_images (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    imported_vibe_post_id INTEGER NOT NULL,
                    source_url TEXT NOT NULL,
                    preview_url TEXT,
                    width INTEGER,
                    height INTEGER,
                    sort_order INTEGER NOT NULL DEFAULT 0,
                    created_at TEXT NOT NULL DEFAULT (datetime('now'))
                )
                """
            )
            db.execute(
                "INSERT INTO imported_post_images (imported_vibe_post_id, source_url) VALUES (1, 'https://source')"
            )

            with tempfile.TemporaryDirectory() as directory:
                staged = Path(directory)
                for migration in sorted(migrations.glob("*.sql")):
                    if migration.name >= "0028_imported_post_images_source_urls_bridge.sql":
                        shutil.copy2(migration, staged / migration.name)
                _apply_migrations(db, staged)

            columns = {
                row[1]
                for row in db.execute("PRAGMA table_info(imported_post_images)")
            }
            source = db.execute(
                "SELECT source_url FROM imported_post_images WHERE id = 1"
            ).fetchone()[0]
        finally:
            db.close()

        self.assertEqual(source, "https://source")
        self.assertIn("source_url", columns)
        self.assertIn("preview_url", columns)
        self.assertNotIn("url", columns)


if __name__ == "__main__":
    unittest.main()
