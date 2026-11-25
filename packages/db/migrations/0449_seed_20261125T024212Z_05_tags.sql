-- 0449_seed_20261125T024212Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-25T02:42:45.220102+00:00
-- Run started: 2026-11-25T02:42:12.092713+00:00
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
SELECT p.id, 'slow-burn', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet-dread', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive-sound', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Lynchian', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbroken', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4kj3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4kj3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4kj3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort-seeking', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4kj3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glassy', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wooded', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4li21'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4li21'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dad-friendly', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4mdy3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4mdy3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'twisty', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4mdy3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4mdy3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragicomedy', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pf5e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark humor', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pf5e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pf5e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pqhz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pqhz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pqhz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-25 02:42:45'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
