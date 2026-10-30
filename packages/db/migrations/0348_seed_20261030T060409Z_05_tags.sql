-- 0348_seed_20261030T060409Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-30T06:04:41.543704+00:00
-- Run started: 2026-10-30T06:04:09.150365+00:00
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
SELECT p.id, 'dieselpunk', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xionzv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alternate history', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xionzv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-fascist action', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xionzv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi war', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xionzv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult horror', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xionzv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hangout movie', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xipbzp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'friendship', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xipbzp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slice of life', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xipbzp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lighthearted', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xipbzp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unpopular opinion', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xips58'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'critique', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xips58'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'venting', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xips58'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'courtroom drama', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xit1kz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intellectual', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xit1kz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xit1kz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical drama', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xit1kz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological decay', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'asylum', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melodrama', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'interactive', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitqu2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'experimental', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitqu2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'three.js', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitqu2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'digital', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitqu2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tech', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitqu2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'transformation', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monstrous', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cityscape', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'skyline', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late night', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage new york', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic romance', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ethereal', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1940s', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1950s', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high fantasy', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj0agz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wizards', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj0agz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj0agz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic fantasy', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj0agz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-30 06:04:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj0agz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
