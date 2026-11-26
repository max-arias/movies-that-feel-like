-- 0459_seed_20261126T020658Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T02:07:22.960362+00:00
-- Run started: 2026-11-26T02:06:58.254911+00:00
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
SELECT p.id, 'exasperated', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qttd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'critical', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qttd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cynical', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qttd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xwjp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunting', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xwjp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xwjp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'somber', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xwjp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4u6fm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'forest', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4u6fm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairy-tale', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4u6fm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4u6fm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'college', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'party', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2010s', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5c9d5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5c9d5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5c9d5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mecha', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dhqh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dhqh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warhammer', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dhqh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibrant', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gnmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gnmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gnmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5h554'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5h554'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5h554'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5ih8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tender', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5ih8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'childhood', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5ih8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sleepy', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'calm', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lve4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lve4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mood-seeking', 'extraction', '2026-11-26 02:07:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lve4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
