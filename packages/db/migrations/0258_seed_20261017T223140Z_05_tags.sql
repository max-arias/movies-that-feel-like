-- 0258_seed_20261017T223140Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T22:32:03.699495+00:00
-- Run started: 2026-10-17T22:31:40.039467+00:00
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
SELECT p.id, 'slow burn', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unhurried', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aquatic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimalist', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'party', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x23776'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'festive', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x23776'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'energetic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x23776'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lively', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x23776'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquisitive', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x24pk8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x24pk8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x26az3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x26az3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x26az3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x26az3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon-drenched', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fever dream', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult horror', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unspecified', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28c1u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seeking recommendations', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28c1u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unspecified', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28f1j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small town', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'road trip', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neo-noir', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dangerous love', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'zeitgeist', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cultural', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'generational', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time capsule', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mundane', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'soft', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hazy', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'countryside', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rustic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woods', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'passion', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xdsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'craft', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xdsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dedication', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xdsc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'youth', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lighthearted', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2000s', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tween', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'girly', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disney channel', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y5ia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y5ia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y5ia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y5ia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y7hl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'confused', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y7hl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y9qi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'jump scare', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y9qi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scary', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y9qi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lost', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yh97'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yh97'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lost', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yj01'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'elusive', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yj01'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vague', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yj01'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yjht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro animation', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yjht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'musical', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yjht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yjht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'subdued', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ypjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ypjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ypjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ypjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ypjv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage animation', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heavy', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36419'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36419'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'devastating', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36419'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'masterpiece', 'extraction', '2026-10-17 22:32:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36419'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
