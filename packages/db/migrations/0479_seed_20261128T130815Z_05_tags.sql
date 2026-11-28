-- 0479_seed_20261128T130815Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T13:08:41.017379+00:00
-- Run started: 2026-11-28T13:08:15.549539+00:00
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
SELECT p.id, 'nostalgic', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tumblr-era', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woozy', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xto4d2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xto4d2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'party', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xto4d2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sinister', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtpwha'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'idea-driven', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtpwha'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtpwha'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xttvl1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eccentric', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xttvl1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xttvl1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv248'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv248'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ordinary-life', 'extraction', '2026-11-28 13:08:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv248'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
