-- 0223_seed_20261014T233039Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-14T23:31:09.775510+00:00
-- Run started: 2026-10-14T23:30:39.869607+00:00
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
SELECT p.id, 'feminine-rage', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'revenge', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visceral', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3os4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3os4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy-horror', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3os4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3os4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3os4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'girly', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pbgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pbgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pbgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feminine', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pbgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period-drama', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pbgs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pccf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pccf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pccf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3pccf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient-world', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythological', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exotic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'opulent', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mental illness', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological drama', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dysfunctional', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unhinged', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic horror', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3tswq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3tswq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential dread', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3tswq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monstrous entities', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3tswq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wrrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wrrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intimate', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wrrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wrrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer romance', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wrrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastel goth', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy-cute', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'morbid', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairy-tale', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage sci-fi', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animated', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'metaphysical', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4imrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4imrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambition', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4imrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period-drama', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4imrf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4jcxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4jcxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4jcxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4jcxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trapped', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4jcxe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unorthodox', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'western', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frontier', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy mascots', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cursed tv', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrkt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ensemble', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrkt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'character-driven', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrkt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hangout', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrkt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'soundtrack', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrkt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'southwestern', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'road trip', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desert', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reinvention', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wanderlust', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n4yj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'first-time', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n4yj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unforgettable', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n4yj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'musical', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n6ft'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obscure', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n6ft'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adaptations', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n6ft'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ngcu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ngcu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ngcu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sword and sorcery', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ngcu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maritime', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4tcq2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ocean', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4tcq2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fishing', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4tcq2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coastal', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4tcq2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nautical', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4tcq2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral dread', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerily serene', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ominous', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4uby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-establishment', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4uby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4uby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'subversive', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4uby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4uby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4y6g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4y6g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4y6g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4y6g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cryptic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4y6g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4yqh4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4yqh4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4yqh4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grungy', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4yqh4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4yqh4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zsx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zsx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intimate', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zsx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vulnerable', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zsx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-14 23:31:09'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zsx8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
