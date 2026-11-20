-- 0414_seed_20261120T215501Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T21:55:26.982762+00:00
-- Run started: 2026-11-20T21:55:01.997287+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every row is an upsert keyed by the table's
-- natural unique constraint, and every child resolves its
-- parents through that same key.  Row ids are never copied —
-- the destination allocates them — so re-applying refreshes the
-- row it belongs to instead of colliding with an id D1 already
-- owns.  Wrangler's migration tracking normally prevents
-- re-apply; the upsert is defense in depth for partial /
-- interrupted re-runs, and a conflict target the destination
-- cannot satisfy aborts the apply instead of dropping rows.
--
-- Chunk: 05_tags (5/5)
-- Tables: vibe_tags.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'calm', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slice-of-life', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6fo5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shadowy', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6fo5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'book series', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6fo5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambitious', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8330'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8330'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8330'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinema', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8330'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranormal', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9wkx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9wkx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chills', 'extraction', '2026-11-20 21:55:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9wkx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
