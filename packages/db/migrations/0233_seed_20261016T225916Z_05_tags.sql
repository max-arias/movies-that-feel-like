-- 0233_seed_20261016T225916Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-16T22:59:46.974870+00:00
-- Run started: 2026-10-16T22:59:16.158119+00:00
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
SELECT p.id, '80s', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'synthwave', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamour', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fae', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creature design', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'otherworldly', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'batshit', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'j-horror', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gore', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wide shots', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'landscape', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythological', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classical', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibrant', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indian art', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folkloric', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ieaa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ieaa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eccentric', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ieaa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark humor', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ieaa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ieaa'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feedback', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6pgvu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'discussion', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6pgvu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meta', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6pgvu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'project', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6pgvu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6qwfj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6qwfj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6qwfj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6qwfj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deep', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6reyd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6reyd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6reyd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6reyd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6up19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6up19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cat-and-mouse', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6up19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rivalry', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6up19'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinephile', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6vn2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'directory', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6vn2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'independent', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6vn2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'informative', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6vn2p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gripping', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6wy6r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action-packed', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6wy6r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'humorous', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6wy6r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'engaging', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6wy6r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futuristic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquisitive', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6xf6a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6xf6a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'buddy comedy', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6y4es'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'platonic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6y4es'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6y4es'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime comedy', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6y4es'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dynamic duo', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6y4es'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small town', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pacific northwest', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'southern gothic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumn', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxg8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artistic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxvx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'illustrative', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxvx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk horror', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'satanic', 'extraction', '2026-10-16 22:59:46'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
