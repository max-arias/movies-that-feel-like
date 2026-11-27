-- 0063_seed_20261127T204555Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-27T20:45:57.264895+00:00
-- Run started: 2026-11-27T20:45:55.711652+00:00
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
SELECT p.id, 'retro', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxahlz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '80s', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxahlz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action-tv', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxahlz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'car-chases', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxahlz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mundane', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nv83'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nv83'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'simulator', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nv83'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deadpan', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nv83'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient-ruins', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'soldiers', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'jungle-temples', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5qvt7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairy-tale', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5qvt7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5qvt7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hand-drawn', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5qvt7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5r8ki'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5r8ki'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5r8ki'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal horror', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futurism', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'established protagonist', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5uptx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'choice-driven', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5uptx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'role-playing', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5uptx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spaceship boarding', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5v83v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi combat', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5v83v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical assault', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5v83v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'science fantasy', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban fantasy', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trench warfare', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5x3j1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'squad defense', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5x3j1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grimy', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5x3j1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'impatient', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5xcqc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'entitled', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5xcqc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hype', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5xcqc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'large-scale-battle', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warfare', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61r9d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional-devastation', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61r9d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie-rpg', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61r9d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61r9d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kaiju', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster-wrestling', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'toy-collecting', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creature-care', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nurturing', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster-raising', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'battle-royale', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hunger-games', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monsters', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'traps', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kaiju', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y64d6k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monsters', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y64d6k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spectacle', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y64d6k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y64d6k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hideout', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y682kw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'base-building', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y682kw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'resource-management', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y682kw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y682kw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anime', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glitch', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moe', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mercenary', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6atxv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'PMC', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6atxv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'resource-management', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6atxv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6atxv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b52a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Orwellian', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b52a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'enforced-happiness', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b52a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'helicopter', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b57q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'close-air-support', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b57q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arcade-flight', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b57q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b57q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'societal-collapse', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anarchy', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'economic-decay', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cyat'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalypse', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cyat'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deceptive', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cyat'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'futuristic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spy-thriller', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mercenary', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underworld', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'noble-intrigue', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'command-bridge', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'radio-chatter', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heist', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ensemble', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'friends', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp-sci-fi', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futurism', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-world', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'castle-siege', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'multiplayer', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dead-game', 'extraction', '2026-11-27 20:45:57'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
