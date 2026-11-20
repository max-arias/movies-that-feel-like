-- 0404_seed_20261120T005436Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T00:55:15.485393+00:00
-- Run started: 2026-11-20T00:54:36.315340+00:00
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
SELECT p.id, 'reflective', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'personal', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07y9a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-soaked', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07y9a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fast-paced', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07y9a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'swagger', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07y9a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09msd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09msd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09msd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'manipulative', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09msd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09vjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09vjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feminine', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09vjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09vjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0asiq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0asiq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'enthusiastic', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0asiq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neet', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0awi8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0awi8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grimy', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0awi8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alienated', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0awi8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family-safe', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0bhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0bhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'awkward-avoidant', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0bhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie-night', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0bhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0cup6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relentless', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0cup6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0cup6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stressful', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0cup6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0du0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0du0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0du0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'searching', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0du0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0h8sy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0h8sy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'masculine', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0h8sy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0h8sy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slump', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0jmkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0jmkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seeking-escape', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0jmkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0kh00'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0kh00'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0kh00'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'collapse', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0mqlt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'authoritarian', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0mqlt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-20 00:55:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0mqlt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
