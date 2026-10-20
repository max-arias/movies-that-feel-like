-- 0293_seed_20261020T200627Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T20:06:54.140325+00:00
-- Run started: 2026-10-20T20:06:27.323265+00:00
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
SELECT p.id, 'sci-fi', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9xib4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ethereal', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9xib4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9xib4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9xib4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tech', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9xib4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '80s luxury', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neo-noir', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'synthwave aesthetic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decadence', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigative journalism', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime drama', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'procedural', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal space', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Victorian', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Edwardian', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period drama', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historic London', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2000s', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa296g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melodramatic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa296g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa296g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'angsty', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa296g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stoner', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa2trp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trippy', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa2trp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chill', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa2trp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa2vgt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa2vgt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquiry', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa2vgt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa3o4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa3o4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'depressing', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa3o4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tearjerker', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa3o4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa3o4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa7hm2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa7hm2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meta', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa7hm2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'analytic', 'extraction', '2026-10-20 20:06:54'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa7hm2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
