-- 0273_seed_20261018T223551Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-18T22:36:18.080420+00:00
-- Run started: 2026-10-18T22:35:51.477994+00:00
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
SELECT p.id, 'cozy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjr59'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjr59'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mid-century', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjr59'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjr59'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjr59'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjzwf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woodland', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjzwf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brooding', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjzwf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'misty', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjzwf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjzwf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lush', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woodland', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkdkf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'machismo', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkdkf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkdkf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hard-edged', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkdkf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drunken', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkldw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkldw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'debauchery', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkldw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slapstick', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkldw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleary-eyed', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkldw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campfire thriller', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkug6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'forest horror', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkug6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'camping trip', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkug6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspense', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkug6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm7jp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tearjerker', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm7jp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm7jp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm7jp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm7jp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamour', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm86d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'miserable', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm86d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm86d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzm86d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'free movies', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wznv4w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'youtube', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wznv4w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie recommendations', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wznv4w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzo3az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzo3az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'free-spirited', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzo3az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzo3az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'redemption', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzozrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'character-study', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzozrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'transformation', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzozrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moral-growth', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzozrh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'candy-colored', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feminine', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thalassophobia', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maritime', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspense', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzux6t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzux6t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzux6t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzux6t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'overlapping dialogue', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzyb3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naturalistic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzyb3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzyb3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzyb3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzyb3j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foodie', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'culinary', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mouthwatering', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decadent', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzzuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer romance', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzzuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzzuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poignant', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzzuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzzuj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scary', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowbound', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chilly', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0633o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0633o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fucked up', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0633o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncomfortable', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0633o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hilarious', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0633o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'narrative', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x06xv0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sequels', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x06xv0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'franchise', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x06xv0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'multi-part', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x06xv0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'religious horror', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x08ogp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'calming', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x08ogp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relaxing', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x08ogp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x08ogp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'steampunk', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x08ogp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x098ky'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-10-18 22:36:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x098ky'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
