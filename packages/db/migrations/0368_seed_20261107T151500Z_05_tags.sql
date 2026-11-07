-- 0368_seed_20261107T151500Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-07T15:15:25.408597+00:00
-- Run started: 2026-11-07T15:15:00.147470+00:00
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
SELECT p.id, 'ethereal', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp333b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp333b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp333b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animation', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp333b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trippy', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp3zg7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp3zg7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibrant', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp3zg7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp3zg7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp3zg7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fantasy', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dying-earth', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ruins', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5p4t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5p4t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5p4t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5p4t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2000s', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5p4t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5yfy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'speculative', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5yfy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'celebrity', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp5yfy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'longing', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer romance', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summer', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp7miq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp7miq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp8fy9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp8fy9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-contrast', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contentious', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpeepu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'debate', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpeepu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer cinema', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpeepu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'victorian', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cemetery', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural-gothic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'backwoods', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foreboding', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpiv2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpiv2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpiv2s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpn2n3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpn2n3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpn2n3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpoph6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpoph6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpoph6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppfa6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppfa6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppfa6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppfa6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'twist', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppfa6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'impressionistic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppiev'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppiev'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppiev'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppiev'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppiev'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppkey'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'literary', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppkey'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppkey'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppkey'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppkey'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'resilient', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpr1re'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpr1re'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebuilding', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpr1re'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'somber', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpr1re'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-07 15:15:25'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpr1re'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
