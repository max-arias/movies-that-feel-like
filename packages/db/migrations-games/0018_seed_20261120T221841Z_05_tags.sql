-- 0018_seed_20261120T221841Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T22:18:41.518467+00:00
-- Run started: 2026-11-20T22:18:41.262060+00:00
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
SELECT p.id, 'submarine', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyev4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mobile-base', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyev4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyev4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyev4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeless', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'WW2', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tank-crew', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'camaraderie', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mood-board', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvevb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvevb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambiguous', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvevb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvgqk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvgqk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mood-board', 'extraction', '2026-11-20 22:18:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvgqk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
