-- 0238_seed_20261017T044640Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T04:47:13.617612+00:00
-- Run started: 2026-10-17T04:46:40.431140+00:00
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
SELECT p.id, 'nocturnal', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban-solitude', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'utilitarian', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x778xi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'query', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x778xi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'overcast', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foggy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural-gothic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foreboding', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'painterly', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classical', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indian-art', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythological', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ominous', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x78ajr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x78ajr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nighttime', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x78ajr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x78ajr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2000s', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x78ajr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mid-century Americana', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic cinema', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rewatchable', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7b6e1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort movies', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7b6e1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'engaging', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7b6e1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eastern bloc', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7besh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty realism', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7besh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical drama', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7besh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'daily life', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7besh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie cinema', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bice'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'independent film', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bice'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambitious', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bice'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'erotic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bj5y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sensual', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bj5y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'art-house', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bj5y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'provocative', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bj5y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mature drama', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bj5y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural mystery', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pacific northwest', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7d8rv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intrusion', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7d8rv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7d8rv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7d8rv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unraveling', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7d8rv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retrofuturism', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cassette futurism', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage sci-fi', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'analog', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space age', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'panic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mass evacuation', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaos', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'societal collapse', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creature feature', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fvf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monsters', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fvf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster mash', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fvf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy horror', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fvf2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'edgy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7k6fe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'giallo', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7k6fe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7k6fe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fast-paced', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7k6fe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arthouse', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7k6fe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late night', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'convenience store', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic sci-fi', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alien abduction', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thermal vision', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic dread', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tropical', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'icy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'polar', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal landscape', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arctic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neo-noir', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'detective', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small town', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grim', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'murder mystery', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential dread', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'depressive', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoia', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alienation', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal horror', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk horror', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-17 04:47:13'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
