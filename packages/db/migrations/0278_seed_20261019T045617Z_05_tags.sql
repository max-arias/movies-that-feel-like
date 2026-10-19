-- 0278_seed_20261019T045617Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-19T04:56:39.944330+00:00
-- Run started: 2026-10-19T04:56:17.283758+00:00
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
SELECT p.id, 'cerebral', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y2gc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y2gc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'concept-driven', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y2gc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'abstract', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y2gc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y8fg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic fantasy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y8fg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rugged', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y8fg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wilderness', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y8fg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sword and sorcery', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y8fg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'promotional', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8z5ry'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romance', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8z5ry'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'opulent', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-society', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquiry', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90e9y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90e9y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unknown', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90em7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unknown', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90izr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'youthful', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empowerment', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellious', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'clever', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'j-horror', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x957z7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x957z7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimalist', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x959jm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stark', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x959jm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x959jm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'theatrical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x959jm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'critical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x95p2h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'subdued', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x95p2h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x95p2h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'biomechanical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x976mm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nihilistic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x976mm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x976mm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurdist', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x976mm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x976mm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alchemical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'witchy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient-civilization', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monumental', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sword-and-sandal', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colossal', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie-animation', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trippy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9djqr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'music-inspired', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9djqr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dramatic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9djqr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pacific-northwest', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'overcast', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological-thriller', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decay', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'abandoned', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meta', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9fpb8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frustrated', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9fpb8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'repetitive', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9fpb8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'critique', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9fpb8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alienation', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'loneliness', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eldritch', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hyai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lovecraftian', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hyai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic horror', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hyai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hyai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hyai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vampires', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark romance', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-19 04:56:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
