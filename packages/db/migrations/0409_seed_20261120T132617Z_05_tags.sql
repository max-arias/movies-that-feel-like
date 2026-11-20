-- 0409_seed_20261120T132617Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T13:26:56.193094+00:00
-- Run started: 2026-11-20T13:26:17.060414+00:00
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
SELECT p.id, 'tense', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'predatory', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vulnerable', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'noir', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hallucinatory', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summer', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colorful', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hedonistic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alienated', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyl3tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyl3tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyl3tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyl3tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyn2gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trippy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyn2gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyn2gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyn2gw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'destiny', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyo0a1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyo0a1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyo0a1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyo0a1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'misty', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'forest', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp27u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'November', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp27u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiz', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp27u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp27u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grateful', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyq9y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyq9y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyq9y3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summer', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Y2K', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beach', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'girly', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bloodborne', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'female-led', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz1hhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz1hhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz1hhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz1hhh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz2eed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1980s', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz2eed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ennui', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz2eed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz6gyj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz6gyj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz6gyj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'offbeat', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwum3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwum3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwum3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'revolutionary', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'protest', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'review-seeking', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzin7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzin7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinema', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzin7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort-seeking', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzznt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uneasy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzznt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinema', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzznt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'garish', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pop', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00h9s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00h9s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00h9s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00xk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00xk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sunlit', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00xk3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen-girl', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-20 13:26:55'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
