-- 0213_seed_20261013T235355Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-13T23:54:24.365918+00:00
-- Run started: 2026-10-13T23:53:55.347463+00:00
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
SELECT p.id, 'cinema', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wy4i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'film', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wy4i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dieselpunk', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'steampunk', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'airships', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retrofuturism', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'art deco', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban fantasy', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'avian', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'angels', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythological', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foggy', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychobilly', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'punk rock', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'b-movie', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy horror', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult exploitation', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49nl0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49nl0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pacific northwest', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49nl0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49nl0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49nl0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49skw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'revenge horror', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49skw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49skw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'blizzard', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49skw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49skw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49w4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49w4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49w4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49w4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'twists', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49w4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unhinged', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'parody', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'irreverent', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'biomechanical', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-13 23:54:24'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
