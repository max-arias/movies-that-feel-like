-- 0053_seed_20261126T022105Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T02:21:07.586432+00:00
-- Run started: 2026-11-26T02:21:05.990088+00:00
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
SELECT p.id, 'open-world', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'roleplaying', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'building', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lost-in-a-world', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ltw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spaceship', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ltw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ltw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relaxing', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ltw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drifting', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ltw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frutiger-aero', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'futuristic', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'optimistic', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hunting', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cooking', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'invasion', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5frul'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pvp', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5frul'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'soulslike', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5frul'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time-loop', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5frul'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'guerrilla', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'militia', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'asymmetric-war', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underdog', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'power-growth', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'predator-turned-prey', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vehicle-building', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5l75x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'upgrades', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5l75x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'simulation', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5l75x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'jobs', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5l75x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'island', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'elemental-powers', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'armor', 'extraction', '2026-11-26 02:21:07'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
