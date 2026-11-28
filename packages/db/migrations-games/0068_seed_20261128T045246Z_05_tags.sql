-- 0068_seed_20261128T045246Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T04:52:47.905362+00:00
-- Run started: 2026-11-28T04:52:46.079363+00:00
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
SELECT p.id, 'NASA-punk', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6mms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hard sci-fi', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6mms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'FPS', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6mms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'near-future', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6mms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6mms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disease', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6wp5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weather', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6wp5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'strategy', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6wp5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6wp5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx8ylc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'JRPG', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx8ylc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'party-building', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx8ylc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'multiplayer', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx8ylc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'handheld', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx8ylc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxa3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'evolution', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxa3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sandbox', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxa3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxa3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'flawed', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxa3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'zero-G', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxabqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxabqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shipbreaking', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxabqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'console', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxabqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6wwga'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kaiju', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6wwga'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'defense', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6wwga'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster threat', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6wwga'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xs3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fugitive fleet', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xs3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'overwhelming odds', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xs3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xs3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mechanized infantry', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'combined arms', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gladiators', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y718ad'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'management', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y718ad'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arena', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y718ad'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y718ad'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'complex', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'niche', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'systems-heavy', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'strategy', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73c4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'capital ships', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73c4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'PvP', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73c4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'combat', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73c4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'war', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y74fa3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y74fa3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y74fa3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'civilian', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y74fa3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naval', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75gib'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'WW2', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75gib'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'convoy', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75gib'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tension', 'extraction', '2026-11-28 04:52:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75gib'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
