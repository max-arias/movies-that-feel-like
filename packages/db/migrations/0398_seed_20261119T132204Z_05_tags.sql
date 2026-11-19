-- 0398_seed_20261119T132204Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T13:22:38.803579+00:00
-- Run started: 2026-11-19T13:22:04.078867+00:00
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
SELECT p.id, 'animated', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family-friendly', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'espionage', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'globetrotting', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'posh', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lost', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frustrated', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzancr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinephile', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzancr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'AI backlash', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzancr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzd9p2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinema', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzd9p2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'connection', 'extraction', '2026-11-19 13:22:38'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzd9p2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
