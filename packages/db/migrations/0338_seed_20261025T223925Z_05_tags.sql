-- 0338_seed_20261025T223925Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-25T22:40:03.524955+00:00
-- Run started: 2026-10-25T22:39:25.582216+00:00
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
SELECT p.id, 'dystopian', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbtuww'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-collapse', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbtuww'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbtuww'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'societal-decline', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbtuww'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tamil-cinema', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbufk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reverence', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbufk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic-hero', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbufk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbuyif'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbuyif'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbuyif'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'painterly', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbyl94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual-aesthetic', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbyl94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbyl94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'forbidden-love', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbzm4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lesbian-romance', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbzm4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period-drama', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbzm4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-10-25 22:40:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbzm4u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
