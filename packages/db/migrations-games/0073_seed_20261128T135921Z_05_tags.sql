-- 0073_seed_20261128T135921Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T13:59:23.629427+00:00
-- Run started: 2026-11-28T13:59:21.658733+00:00
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
SELECT p.id, 'neon-dystopian', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvltfm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellious', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvltfm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rock-and-roll', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvltfm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'death', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw7wtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw7wtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'premonition', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw7wtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw7wtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9ist'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'jazzy', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9ist'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tavern', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9ist'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rain', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9ist'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'refuge', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9ist'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'punk', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colorful', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellion', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'oil-rig', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maritime', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ruins', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd9pf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd9pf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decay', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd9pf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time-jump', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd9pf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'commander', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwl143'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summoner', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwl143'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'squad management', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwl143'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hands-off', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwl143'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'auto-battle', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwl143'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'expedition', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwm55n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'commander', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwm55n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'base management', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwm55n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hands-off', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwm55n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwm55n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open world', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lore-rich', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'escapism', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'living world', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lifesteal', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnkwv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind control', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnkwv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'necromancy', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnkwv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'power fantasy', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnkwv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crowd control', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnkwv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desert', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwom0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'extraction shooter', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwom0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sandbox', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwom0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwom0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwom0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival-horror', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'resource-scarcity', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lethal', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvnbx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'firearms', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvnbx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tension', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvnbx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'detective', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwwjvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigation', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwwjvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwwjvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx13pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'violent', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx13pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lawless', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx13pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hunting', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx18z2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellion', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx18z2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'powerful-targets', 'extraction', '2026-11-28 13:59:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx18z2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
