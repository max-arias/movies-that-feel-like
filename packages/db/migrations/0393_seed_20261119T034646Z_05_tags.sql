-- 0393_seed_20261119T034646Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T03:47:19.234572+00:00
-- Run started: 2026-11-19T03:46:46.447938+00:00
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
SELECT p.id, 'rom-com', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzebft'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unanswered', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzebft'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'old-medicine', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medical', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzkn3y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzkn3y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'prehistoric', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'primordial', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient-earth', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncomfortable', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snarky', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xznjfm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'amused', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xznjfm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'celebrity-gossip', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xznjfm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creature-feature', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzou5a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror-hungry', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzou5a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eclectic', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzou5a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wry', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzp29f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'film-nerd', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzp29f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hype', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzp29f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqofy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'twisty', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqofy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'somber', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqofy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-floral', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqoka'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'enchanting', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqoka'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairy-tale', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqoka'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time-travel', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqxwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alternate-realities', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqxwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'butterfly-effect', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqxwh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzr9iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'debate', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzr9iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinephile', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzr9iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sensory', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsjn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsjn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsjn1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futuristic', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-19 03:47:19'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
