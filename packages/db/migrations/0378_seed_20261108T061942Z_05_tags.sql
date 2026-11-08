-- 0378_seed_20261108T061942Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-08T06:20:12.452969+00:00
-- Run started: 2026-11-08T06:19:42.109080+00:00
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
SELECT p.id, 'mysterious', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqiut9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqiut9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqiut9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqj0u6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adult-swim', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqj0u6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurdist', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqj0u6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqj0u6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suburban', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumn', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'japanese', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqk0za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'music', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqk0za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fashion', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqk0za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqk0za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feminine', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamour', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fashion', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-11-08 06:20:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
