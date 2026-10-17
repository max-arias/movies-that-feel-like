-- 0248_seed_20261017T155234Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T15:53:06.901587+00:00
-- Run started: 2026-10-17T15:52:34.823177+00:00
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
SELECT p.id, 'corporate thriller', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'y2k', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glass and steel', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-tech', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'painterly', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3k8uj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3k8uj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3k8uj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period drama', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3k8uj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3k8uj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coastal', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'boardwalk', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mgaw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mgaw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'music-driven', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mgaw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crossroads', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mnfh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mnfh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'life-changing', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mnfh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspection', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mnfh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mnfh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military horror', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outmatched', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creature feature', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'workplace mundane', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dfyg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dfyg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deadpan', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dfyg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark comedy', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dfyg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dfyg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scenic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dlxo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wilderness', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dlxo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mountains', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dlxo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dlxo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outdoors', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dlxo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underdog', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5p0qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comeback', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5p0qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inspiring', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5p0qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy-horror', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5qu7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5qu7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'entertaining', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5qu7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk horror', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dense forest', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wilderness', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi drama', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maritime', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hanseatic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mediterranean', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nautical', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'enthusiastic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5w4nf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'casual', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5w4nf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grounded', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5weo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'authentic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5weo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naturalistic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5weo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5weo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'human drama', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5weo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'shadowy', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6689r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hand-drawn', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6689r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'traditional-animation', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6689r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairy-tale', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6689r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6689r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambient', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meditative', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hypnotic', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x68x8e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspense', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x68x8e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'misdirection', 'extraction', '2026-10-17 15:53:06'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x68x8e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
