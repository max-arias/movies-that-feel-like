-- 0268_seed_20261018T184704Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-18T18:47:36.699178+00:00
-- Run started: 2026-10-18T18:47:04.118182+00:00
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
SELECT p.id, 'fandom', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ya-fantasy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantastical', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0betv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0betv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foreboding', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0betv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chilly', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0betv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0f3vt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0f3vt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0f3vt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lighthearted', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sentimental', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0kr6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reverent', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0kr6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0kr6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'timeless', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0kr6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mibl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cerebral', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mibl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mibl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mibl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambition', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mkjl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fame', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mkjl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0mkjl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'skeptical', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0n02s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'critical', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0n02s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contrarian', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0n02s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slice-of-life', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-anime', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'calming', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'everyday-life', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunting', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xpdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'peaceful', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xpdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xpdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xpdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xpdb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumn', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'golden', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bright', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'simulation', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x11pra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x11pra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x11pra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x11pra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spiders', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'entangled', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intricate', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'web', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16qea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'solitary', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16qea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cathartic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16qea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16qea'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'western', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cowboys', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horses', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rugged', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brotherhood', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frontier', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'musical', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1av6g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'music-focused', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1av6g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melodic', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1av6g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1cmyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1cmyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1cmyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'otherworldly', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1cmyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1cmyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'raunchy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1dus8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1dus8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'road trip', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1dus8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'r-rated', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1dus8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal horror', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1epyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1epyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1epyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'abstract', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1epyz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1fg2x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'healing', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1fg2x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'acceptance', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1fg2x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moving on', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1fg2x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1g6p0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poignant', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1g6p0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1g6p0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartfelt', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1g6p0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'road trip', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1hd5j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'travel', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1hd5j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'driving', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1hd5j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-10-18 18:47:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1hd5j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
