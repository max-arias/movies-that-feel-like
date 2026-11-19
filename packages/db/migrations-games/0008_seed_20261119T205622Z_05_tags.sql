-- 0008_seed_20261119T205622Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T20:56:22.564311+00:00
-- Run started: 2026-11-19T20:56:22.359362+00:00
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
SELECT p.id, 'meta', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyg3g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'skeptical', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyg3g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'callout', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyg3g5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'class variety', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'short RPG', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'replayable', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xymbow'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xymbow'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xymbow'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heist', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xymbow'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'descent', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hostile beauty', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mobile base', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'upgrade loop', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underwater', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scavenging', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'walking-simulator', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'narrative', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nautical', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyyhlg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disaster', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyyhlg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'flooding', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyyhlg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyyhlg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz217c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'airstrikes', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz217c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'strategy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz217c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban-combat', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz217c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz25dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'airstrikes', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz25dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'strategy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz25dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaos', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz25dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'theme-park', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rides', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'co-op', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4noc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4noc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alien-swarm', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4noc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz88x7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz88x7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'budget', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz88x7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'synth-pop', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'synth-pop', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza36r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza36r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza36r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'patriotic', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzgbv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'faction-loyalty', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzgbv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'single-player', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzgbv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lore', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzgbv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzi8eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snow', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzi8eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzi8eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzi8eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-world', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzi8eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'co-op', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzjg0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campaign', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzjg0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'completable', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzjg0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'non-roguelike', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzjg0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'non-horror', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzjg0v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summoner', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpah6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beastmaster', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpah6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minions', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpah6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpah6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'build-customization', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpah6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzrena'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'blockbuster', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzrena'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'triple-A', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzrena'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'realistic', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzrena'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crew-management', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ship', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'submarine', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'roles', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vehicle-building', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsgcx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'combat', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsgcx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scavenging', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsgcx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'online', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsgcx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'customization', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsgcx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vehicle-building', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'combat', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scavenging', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'online', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'customization', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror-comedy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gore', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chainsaw', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'zombie', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztqll'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztqll'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'party-recruitment', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztqll'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decision-heavy', 'extraction', '2026-11-19 20:56:22'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztqll'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
