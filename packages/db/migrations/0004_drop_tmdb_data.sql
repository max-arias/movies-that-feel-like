-- 0004_drop_tmdb_data: Remove the unused tmdb_data JSON column.
--
-- The tmdb_data column has been write-only since the project's start;
-- it is never read by any pipeline stage, the UI, or the inspector.
-- The enrichment stage still carries raw_result in-memory for debugging,
-- but the loader no longer persists it.
--
-- SQLite >=3.35 (which D1 supports) has ALTER TABLE … DROP COLUMN.
-- This migration is safely additive on top of 0001+0002+0003.

ALTER TABLE recommendations DROP COLUMN tmdb_data;
