-- 0373_seed_20261107T202334Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-07T20:24:11.978788+00:00
-- Run started: 2026-11-07T20:23:34.064963+00:00
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
SELECT p.id, 'halloween', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'childhood horror', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp29yl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curiosity', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp29yl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp29yl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2a19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animated', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2a19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2a19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romance', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2a19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie series', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2b5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'marathon', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2b5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curation', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2b5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2p1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'zombies', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2p1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'review', 'extraction', '2026-11-07 20:24:11'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2p1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
