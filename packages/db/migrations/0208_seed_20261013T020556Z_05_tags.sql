-- 0208_seed_20261013T020556Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-13T02:06:20.379105+00:00
-- Run started: 2026-10-13T02:05:56.255903+00:00
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
SELECT p.id, 'eerie', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural-gothic', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foreboding', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dramatic', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4g3o3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classical', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4g3o3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'theatrical', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4g3o3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'expressionistic', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dance', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'choreographed', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artistic', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hj3r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'void', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hj3r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stark', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hj3r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimal', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hj3r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nihilistic', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hqz0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hqz0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurdist', 'extraction', '2026-10-13 02:06:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hqz0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
