-- 0358_seed_20261031T234733Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-31T23:47:58.581929+00:00
-- Run started: 2026-10-31T23:47:33.649440+00:00
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
SELECT p.id, 'off-topic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhxzh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'confused', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhxzh5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'academic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhyiff'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animation', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhyiff'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survey', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhyiff'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi0ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'serial killer', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi0ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi0ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigative', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi0ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspense', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi0ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi46ca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi46ca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cryptic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi4y34'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimal', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi4y34'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoia', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mountains', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'escapism', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'carefree', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'avant-garde', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wasteland', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mediterranean', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'idyllic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'luxurious', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-horror', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8bu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'witchcraft', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8bu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-folklore', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8bu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8bu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8bu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk-horror', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8d2e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visceral', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8d2e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8d2e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8d2e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decay', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8d2e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unhinged', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xicn06'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult-cinema', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xicn06'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fandom', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xicn06'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xid957'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xid957'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xih5yz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rewatchable', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xih5yz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xih5yz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'entertaining', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xih5yz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'americana', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellious', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'southern', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'auteur', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xijv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xijv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'devastating', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xijv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xijv5r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cautionary', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xikin0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xikin0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'turbulent', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xikin0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sheltered', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xikin0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'y2k', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiof22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trash-chic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiof22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grungy', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiof22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'americana', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiof22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellious', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiof22'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'expressionist', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'avant-garde', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'carnivalesque', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp horror', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hammer horror', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vampires', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shocking', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj9abn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj9abn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'taboo', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj9abn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncomfortable', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj9abn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-10-31 23:47:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
