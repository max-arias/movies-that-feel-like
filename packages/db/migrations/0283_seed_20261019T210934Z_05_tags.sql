-- 0283_seed_20261019T210934Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-19T21:10:52.610816+00:00
-- Run started: 2026-10-19T21:09:34.771000+00:00
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
SELECT p.id, 'melancholy', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8v5pd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8v5pd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8v5pd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'loss of home', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8v5pd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic cinema', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vold'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vold'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'black and white', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vold'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foggy woods', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vp44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vp44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated forest', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vp44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8vp44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoia', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8we2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stalker entity', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8we2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creeping dread', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8we2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural horror', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8we2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indecision', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8wfdt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie browsing', 'extraction', '2026-10-19 21:10:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8wfdt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
