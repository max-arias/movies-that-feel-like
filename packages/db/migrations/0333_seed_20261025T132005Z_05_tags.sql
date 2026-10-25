-- 0333_seed_20261025T132005Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-25T13:20:37.184388+00:00
-- Run started: 2026-10-25T13:20:05.680785+00:00
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
SELECT p.id, 'pulpy', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'b-movie', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'twisty', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4j5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4j5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'satirical', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4j5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4j5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4j5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4ucz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragic', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4ucz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'devastating', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4ucz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sad', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4ucz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc8dbj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc8dbj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'youth', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc8dbj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heavy', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcd6qa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcd6qa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcd6qa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neo-noir', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdwobn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdwobn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdwobn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cynical', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdwobn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdxhmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdxhmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdxhmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdxhmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdz6b8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obscure', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdz6b8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdz6b8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animated', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdzqy2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdzqy2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdzqy2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'superhero', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdzqy2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe228t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe228t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe228t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'twists', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe228t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artistic', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4ka5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspense', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4ka5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4ka5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4ka5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'regional', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'culture', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underground', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'counterculture', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alternative', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scenes', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'counterculture', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'subculture', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellion', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie', 'extraction', '2026-10-25 13:20:37'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
