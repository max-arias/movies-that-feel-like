-- 0474_seed_20261128T041121Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T04:11:46.982906+00:00
-- Run started: 2026-11-28T04:11:21.624926+00:00
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
SELECT p.id, 'melancholic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6iuhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6iuhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cathartic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6iuhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6iuhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6kkn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'polarizing', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6kkn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6kkn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spoiler-averse', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6kkn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ldb0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ldb0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'longing', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ldb0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'angsty', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ldb0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ldb0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6mb9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6mb9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6mb9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimal', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6mva2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6mva2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ob8g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ob8g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ob8g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'French-cinema', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ob8g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6pjgt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6pjgt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6pjgt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feel-good', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q7h2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q7h2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q7h2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q8va'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q8va'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q8va'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'critical', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q8va'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q9g1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q9g1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q9g1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6qeof'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6qeof'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6snal'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gender', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6snal'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6snal'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6snal'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6x29c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6x29c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6x29c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xdk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xdk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xdk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hunting', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6z2fr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult-movies', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6z2fr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6z2fr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late-night', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70c7u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70c7u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70c7u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lingering', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70c7u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late-night', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70cv3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70cv3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70cv3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lingering', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70cv3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late-night', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70gx9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70gx9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70gx9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lingering', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70gx9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late-night', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70itj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70itj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70itj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lingering', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70itj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late-night', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70jrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70jrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70jrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lingering', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y70jrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y71mw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y71mw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie-ranking', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y71mw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'banter', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y71mw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cursed', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73gnw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73gnw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73gnw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73gnw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gory', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror-comedy', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-11-28 04:11:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
