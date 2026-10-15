-- 0228_seed_20261015T195812Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-15T19:58:42.822072+00:00
-- Run started: 2026-10-15T19:58:12.206992+00:00
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
SELECT p.id, 'satire', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5yj15'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deadpan', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5yj15'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'parody', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5yj15'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melodrama', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5yj15'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5yj15'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk horror', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'witchcraft', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desaturated', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sword and sorcery', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grim', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'americana', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x643d6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x643d6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'great depression', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x643d6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dusty', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x643d6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x643d6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fever-dream', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hallucinatory', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-10-15 19:58:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
