-- 0038_seed_20261123T032946Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T03:29:46.923917+00:00
-- Run started: 2026-11-23T03:29:46.530755+00:00
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
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'megacity', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decayed', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kowloon', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fantasy', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'art-vibe', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2tmzz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naturalist', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2tmzz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'compendium', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2tmzz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chill', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2tmzz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'redemption', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moral-temptation', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'altruism', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anxious', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y318ky'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'completionist', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y318ky'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'choice-heavy', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y318ky'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'guide-dependent', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y318ky'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'choice-heavy', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31emb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anxious', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31emb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'guide-dependent', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31emb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'RPG', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31emb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mafia', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31ozi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31ozi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'power fantasy', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31ozi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empire-building', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31ozi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lofi', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31yas'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31yas'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'study', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31yas'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival-horror', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31yas'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hazy', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32rtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Deftones', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32rtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32rtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32rtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32t54'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'driving', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32t54'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Deftones', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32t54'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-11-23 03:29:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32t54'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
