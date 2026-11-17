-- 0383_seed_20261117T022105Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-17T02:21:28.386927+00:00
-- Run started: 2026-11-17T02:21:05.785934+00:00
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
SELECT p.id, 'gritty', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx86i7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx86i7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx86i7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx86i7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'southern-gothic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunting', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9xwu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tender', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9xwu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9xwu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cathartic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9xwu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'music', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creative obsession', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'passion', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industry', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artistic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'energetic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disillusionment', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxc06p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alienation', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxc06p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cynical', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxc06p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxc06p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-capitalist', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxc06p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'darkly comic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxc06p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coastal', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-horror', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stormy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'doom', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hypnotic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hypnotic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdskq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdskq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdskq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'conspiracy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdskq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdskq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immortal', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uneasy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxevs5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reality-bending', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxevs5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxevs5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'furious', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgk42'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rattled', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgk42'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outrage', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgk42'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'solitude', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'idealistic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjs0n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjs0n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'self-love', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjs0n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxm3hl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tentative', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxm3hl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxm3hl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'natural', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'peaceful', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nonconformist', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pink', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo6a4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tentative', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo6a4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo6a4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'elite', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'secretive', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'war', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'espionage', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxrxkr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wealthy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxrxkr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightlife', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxrxkr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sleek', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxrxkr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon-noir', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxtkbe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxtkbe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sleek', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxtkbe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxtkbe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk horror', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxu3n1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underrated', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxu3n1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinephile', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxu3n1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ritual', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxuze7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxuze7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'life-affirming', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxuze7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kid-adventure', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'peril', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monstrous', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1ox9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ominous', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1ox9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creature-feature', 'extraction', '2026-11-17 02:21:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1ox9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
