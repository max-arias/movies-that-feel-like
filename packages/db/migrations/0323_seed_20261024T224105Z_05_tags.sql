-- 0323_seed_20261024T224105Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-24T22:41:42.983000+00:00
-- Run started: 2026-10-24T22:41:05.797889+00:00
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
SELECT p.id, 'immersive', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xceo7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gripping', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xceo7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xceo7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'captivating', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xceo7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-doomscrolling', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xceo7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'interactive', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xchgss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tech-demo', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xchgss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'experimental', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xchgss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '3D', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xchgss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fashion', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamour', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'camp', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'japanese cinema', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'blank', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclmf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unspecified', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclmf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquiry', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclmf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heroic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'badass', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcp8n5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcp8n5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcp8n5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcpv70'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'roleplay', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcpv70'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'machinima', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcpv70'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gaming', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcpv70'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'silent', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcq9vy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monochrome', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcq9vy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcq9vy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcq9vy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcqspv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquiring', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcqspv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcqspv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visually stunning', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcrdjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambient', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcrdjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hypnotic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcrdjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meditative', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcrdjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'non-narrative', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcrdjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gentle', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs58g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs58g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs58g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1980s', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs58g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intimate', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs58g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs965'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs965'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs965'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage train', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs965'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'academic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs965'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'film discovery', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcztvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'app', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcztvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recommendations', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcztvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rustic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'european summer', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'idyllic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'carefree', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-horror', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foggy', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunted', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1mkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1mkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1mkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visceral', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1mkd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cynical', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1qpa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'witty', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1qpa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1qpa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1qpa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grimy', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rusted', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body-horror', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd3qgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd3qgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-24 22:41:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd3qgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
