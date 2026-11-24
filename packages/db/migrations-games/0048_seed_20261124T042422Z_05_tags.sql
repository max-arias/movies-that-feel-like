-- 0048_seed_20261124T042422Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-24T04:24:23.873412+00:00
-- Run started: 2026-11-24T04:24:22.882528+00:00
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
SELECT p.id, 'grimy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxj88p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arcane-punk', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxj88p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark intrigue', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxj88p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'megastructures', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjkd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scale', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjkd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjkd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'modding', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'showcase', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo4ho'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'co-op', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo4ho'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'goofy characters', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo4ho'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space engineering', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sandbox', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'programmable systems', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space strategy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empire building', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fleet battles', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pike-and-shot', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '17th-century', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warfare', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comparison', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1n98p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'samurai', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1n98p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stealth-action', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1n98p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-war', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grim', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'civilian-suffering', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'war', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shooter', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'guilt', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1p9em'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1p9em'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Zelda-like', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1p9em'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nu-metal', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pgo2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adrenaline', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pgo2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'badass', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pgo2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nu-metal', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pl55'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adrenaline', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pl55'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pl55'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'badass', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pl55'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brutalist', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1q5tr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1q5tr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1q5tr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1q5tr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cowboy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'customization', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'modern', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3dzx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tank customization', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3dzx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'JRPG', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3dzx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster hunting', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3dzx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3efmq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frustrating', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3efmq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stupid NPCs', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3efmq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark humor', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3efmq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colonial', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'swashbuckling', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'strategy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmes'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'capital ships', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmes'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fleet command', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmes'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmes'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'submarine', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pv26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naval', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pv26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tension', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pv26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pv26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crpg', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3q4we'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'companions', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3q4we'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3q4we'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'choices', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3q4we'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'giants', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qe5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'terror', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qe5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scale', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qe5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'boss fights', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qe5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'western', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cowboys', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frontier', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tryr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tryr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shopkeeping', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tryr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alchemy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tryr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tt8v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tt8v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shopkeeping', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tt8v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alchemy', 'extraction', '2026-11-24 04:24:23'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3tt8v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
