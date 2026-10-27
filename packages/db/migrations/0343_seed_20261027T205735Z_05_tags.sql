-- 0343_seed_20261027T205735Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-27T20:58:06.299328+00:00
-- Run started: 2026-10-27T20:57:35.822456+00:00
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
SELECT p.id, 'modernist architecture', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sleek sci-fi', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimalist', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wilderness retreat', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime thriller', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfntoj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfntoj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfntoj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfntoj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mommy issues', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfowv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfowv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark drama', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfowv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dysfunctional family', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfowv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'freudian', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfowv9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tiki bar', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tropical horror', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slasher', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kitsch', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfq6za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'espionage', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfq6za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'covert mission', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfq6za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snow', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfq6za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfq6za'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s action', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xft0j2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grunge', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xft0j2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xft0j2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow motion', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xft0j2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xft0j2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic horror', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cemetery', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage pulp', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'illustrated', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mid-century', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'afrofuturism', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfvpw9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfvpw9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfvpw9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfvpw9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wet', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2010s', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfzjm3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfzjm3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfzjm3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'millennial', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfzjm3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period flavor', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfzjm3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg0l5v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'camp', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg0l5v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'subversive', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg0l5v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg0l5v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sensual', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg0l5v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical realism', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg2w1x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg2w1x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg2w1x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg2w1x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg2w1x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neo-noir', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg43dv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg43dv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg43dv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigative', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg43dv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg43dv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg46gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg46gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg46gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eccentric', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg46gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg46gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'promotional', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4h47'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'filmmaking', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4h47'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'technology', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4h47'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4uqg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage animation', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4uqg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4uqg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4uqg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4uqg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brooding', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg51ah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg51ah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg51ah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg51ah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg51ah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'casual', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg5igf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'discussion', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg5igf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg5igf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artistic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibrant', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pictorial', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cultural', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'painterly', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'richly visual', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Black culture', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibrant', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8pk4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal spaces', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8pk4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dappled light', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8pk4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8pk4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8pk4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8sf5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8sf5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dappled light', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8sf5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8sf5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8sf5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter horror', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xga5d3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowbound', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xga5d3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xga5d3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xga5d3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xga5d3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical realism', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xgcw0x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xgcw0x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xgcw0x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-27 20:58:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xgcw0x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
