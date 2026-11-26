-- 0058_seed_20261126T235216Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T23:52:17.494927+00:00
-- Run started: 2026-11-26T23:52:16.364945+00:00
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
SELECT p.id, 'visible upgrades', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxb5j3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weapon customization', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxb5j3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mechanical progression', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxb5j3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high fantasy', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbici'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster hunting', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbici'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbici'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'painterly', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbici'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcav3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-world', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcav3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcav3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'RPG', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcav3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'PS5', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcav3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retrofuturism', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brutalist', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'metropolitan', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-saturation', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'no-neon', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'third-person', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melee', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gun-fu', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'realistic', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'zombie', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxctec'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horde', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxctec'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'co-op', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxctec'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxctec'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxctec'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anime soccer', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgdgy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survivor', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgdgy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-energy', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgdgy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fan game', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgdgy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'capital ships', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxh6ob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space combat', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxh6ob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'turrets', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxh6ob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'missiles', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxh6ob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vietnam war', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'helicopter assault', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'napalm', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological dread', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z555'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z555'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z555'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z555'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time travel', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y402hs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y402hs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y402hs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y402hs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'puzzle', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y402hs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y436mu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trivia', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y436mu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'daily', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y436mu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y436mu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y436mu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open world', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46r30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rpg', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46r30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'taming', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46r30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46r30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46r30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'short', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y48vsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'narrative', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y48vsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y48vsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y48vsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y48vsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'futuristic', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4b7gs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space opera', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4b7gs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'professional', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4b7gs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'interpersonal', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4b7gs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crew', 'extraction', '2026-11-26 23:52:17'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4b7gs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
