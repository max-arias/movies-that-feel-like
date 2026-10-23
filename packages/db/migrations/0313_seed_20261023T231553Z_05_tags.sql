-- 0313_seed_20261023T231553Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-23T23:16:28.393116+00:00
-- Run started: 2026-10-23T23:15:53.157852+00:00
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
SELECT p.id, 'ethereal', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcubar'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcubar'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcubar'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcubar'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcvj7c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'irish', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcvj7c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pub-culture', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcvj7c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcvj7c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcwyvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-scifi', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcwyvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'b-movie', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcwyvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '70s', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcwyvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '80s', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcwyvt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambiguous', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcxbta'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcyhsq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vampires', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcyhsq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fantasy', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcyhsq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anime', 'extraction', '2026-10-23 23:16:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcyhsq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
