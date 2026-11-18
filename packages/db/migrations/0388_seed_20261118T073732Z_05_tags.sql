-- 0388_seed_20261118T073732Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-18T07:38:05.507378+00:00
-- Run started: 2026-11-18T07:37:32.878917+00:00
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
SELECT p.id, 'curious', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyudac'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyudac'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie-seeking', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyudac'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv571'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'impatient', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv571'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv571'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunted', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5h5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief-stricken', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5h5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5h5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'near-death dread', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5h5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-romantic', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyv5ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'infidelity', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyzdta'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relationship disaster', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyzdta'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyzdta'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-18 07:38:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyzdta'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
