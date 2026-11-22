-- 0434_seed_20261122T130020Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T13:01:12.527158+00:00
-- Run started: 2026-11-22T13:00:20.685310+00:00
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
SELECT p.id, 'inspirational', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvvllt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wilderness', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvvllt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'self-discovery', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvvllt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx3mo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambiguous', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx3mo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx3mo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx5k8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambiguous', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx5k8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx5k8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brutalist', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvy526'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seeking', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvy526'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvy526'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyt0k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unclear', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyt0k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'internet', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'garish', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0yqn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tentative', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0yqn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0yqn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'villainous', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1e0o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eccentric', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1e0o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1e0o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dinner-party', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw2mjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw2mjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw2mjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grand', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw3tpu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gripping', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw3tpu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'solo', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw3tpu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw4ms4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'incomplete', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw4ms4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw569j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw569j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'insomnia', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw569j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw5qt1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw5qt1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'AI-generated', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw5qt1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bookstore', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coffee-shop', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'loneliness', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreak', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suburban', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'off-kilter', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd15l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd15l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feel-good', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd15l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eclectic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Arabian Nights', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-art', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwehjc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwehjc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'childhood', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwehjc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-art', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfuhq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfuhq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-22 13:01:12'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfuhq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
