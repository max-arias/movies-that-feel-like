-- 0303_seed_20261021T050313Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-21T05:03:47.792648+00:00
-- Run started: 2026-10-21T05:03:13.705752+00:00
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
SELECT p.id, 'body-horror', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'religious-horror', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-horror', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fantasy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic-animation', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sinister', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grimy-fantasy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9pfql'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fairytale', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9pfql'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9pfql'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9pfql'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alien-infiltration', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reptilian-conspiracy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body-horror', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoia', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'funny', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r62l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r62l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy-thriller', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r62l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trippy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer romance', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mid-century', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'political drama', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tender', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xagfsf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uplifting', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xagfsf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'humanist', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xagfsf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xagfsf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xagfsf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xahpnm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spiritual', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xahpnm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mesmerizing', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xahpnm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meditative', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xahpnm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xahpnm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gentle giant', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brute strength', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-key', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajuzt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relaxing', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajuzt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'calming', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajuzt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gentle', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajuzt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sleepy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajuzt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajyq6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajyq6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xal6bv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xal6bv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xal6bv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xal6bv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xal6bv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rewatchable', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xapb3b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xapb3b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult classic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xapb3b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'engaging', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xapb3b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigative', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intellectual', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'research', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'procedural', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xarvyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xarvyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cerebral', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xarvyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xarvyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underrated', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xarvyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xasca2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'self-improvement', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xasca2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xasca2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xats74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xats74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arthouse', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xats74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xats74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'jungle', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fever-dream', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'life-changing', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xavjct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xavjct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dramatic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xavjct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'celtic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xax0ix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xax0ix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventurous', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xax0ix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xax0ix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xax0ix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaynwd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaynwd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hypnotic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaynwd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaynwd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb2ajc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neutral', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb2ajc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb3290'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb3290'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb3290'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb3290'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'allegorical', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unconventional', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-21 05:03:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
