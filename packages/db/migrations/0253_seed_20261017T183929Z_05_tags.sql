-- 0253_seed_20261017T183929Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T18:39:57.272484+00:00
-- Run started: 2026-10-17T18:39:29.405187+00:00
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
SELECT p.id, 'uncanny', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36pvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36pvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36pvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'clones', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36pvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'south-texas', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sunny', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eccentric', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3al0u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3al0u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3al0u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3al0u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'social drama', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nyc', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anxiety', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dialogue-driven', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'harvest', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural-gothic', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cxmu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'camp', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cxmu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glowing', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cxmu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cxmu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3ersr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3ersr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigative', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3ersr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3ersr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gripping', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3ersr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3gxdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3gxdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3gxdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gripping', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3gxdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cutesy', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'girly', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'festive', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'holiday', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fun', 'extraction', '2026-10-17 18:39:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
