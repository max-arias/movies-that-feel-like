-- 0469_seed_20261127T202605Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-27T20:26:40.619838+00:00
-- Run started: 2026-11-27T20:26:05.822924+00:00
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
SELECT p.id, 'glamorous', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fashion-forward', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellious', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'messy-chic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtx9pp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtx9pp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtx9pp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtx9pp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-soaked', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hedonistic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Florida', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu0b8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncomfortable', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu0b8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hellish', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu0b8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'provocative', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu0b8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'holiday', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3ecb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3ecb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3ecb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3ecb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'subterranean', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grimy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xui43b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xui43b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xui43b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xui43b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beach', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Christmas', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'goofy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'offbeat', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ghostly', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xukrw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunted', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xukrw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'past', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xukrw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xukrw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futurism', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cassette-futurism', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nha6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'full-moon', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nha6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Halloween', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nha6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy-horror', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nha6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'festive', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-horror', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mischief', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy-creature', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'noir', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seductive', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sunny', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5y3kk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5y3kk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'carefree', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5y3kk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'saudade', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5y3kk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'found-footage', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'analog-horror', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'revenge', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grim', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cathartic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'violent', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61jtf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'terrifying', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61jtf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61jtf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61jtf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tender', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6a9f2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6a9f2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6a9f2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'futuristic', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spy-thriller', 'extraction', '2026-11-27 20:26:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
