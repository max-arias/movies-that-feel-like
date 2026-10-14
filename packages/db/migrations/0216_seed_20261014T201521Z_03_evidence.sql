-- 0216_seed_20261014T201521Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-10-14T20:15:51.395328+00:00
-- Run started: 2026-10-14T20:15:21.762178+00:00
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
-- Chunk: 03_evidence (3/5)
-- Tables: recommendation_evidence.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgi2fn9', 'Sexandroide 1991', 0.85, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 264443 AND p."reddit_post_id" = '1x4zteo'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgi2fn9', 'Slaughtered Vomit Dolls  2006', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 36239 AND p."reddit_post_id" = '1x4zteo'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgiriby', 'slaughtered vomit dolls', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 36239 AND p."reddit_post_id" = '1x4zteo'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgi2fn9', 'August Underground 2001', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 24836 AND p."reddit_post_id" = '1x4zteo'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgirpcb', 'dazed on confused', 0.95, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9571 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgkkw1c', 'D&C', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9571 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglie8p', 'Dazed and confused', 0.95, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9571 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgjdjdr', 'Over the Edge (1979)', 0.95, 0, '2026-10-14 20:15:51', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 23957 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgjkhyh', 'The Stoned Age', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 20860 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgkkw1c', 'That 70s show', 0.9, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 52 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgkkw1c', 'Freaks and Geeks', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 2382 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglfjfx', 'Freaks and Geeks (tv show)', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 2382 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgkkw1c', 'Adventure Land', 0.9, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 16614 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglie8p', 'Adventureland', 0.9, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 16614 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgkstyd', 'Fast Times at Ridgemont High School', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13342 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgl0cjv', 'The Virgin Suicides', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1443 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglfmh4', 'the virgin suicides', 0.95, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1443 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglsx0w', 'Carrie', 0.8, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 7340 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgm6kx3', 'Billy Madison', 0.7, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11017 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgn13uo', 'Licorice Pizza', 0.9, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 718032 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgntpp5', 'Dick (1999)', 0.9, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 744612 AND p."reddit_post_id" = '1x52pl8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgk3hsb', 'Sonny Boy', 0.9, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 124396 AND p."reddit_post_id" = '1x54q11'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgm9nmj', 'The Skeleton Twins (2014)', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 244772 AND p."reddit_post_id" = '1x54q11'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgmfucu', 'My Happy Family', 0.9, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 432226 AND p."reddit_post_id" = '1x54q11'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgjxmq1', 'Mission impossible dead reckoning/final reckoning', 0.85, 0, '2026-10-14 20:15:51', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 575264 AND p."reddit_post_id" = '1x5767h'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgk5yck', 'Enemy of the state', 0.95, 0, '2026-10-14 20:15:51', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9798 AND p."reddit_post_id" = '1x5767h'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgnrnn1', 'Minority Report (2002)', 0.95, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 180 AND p."reddit_post_id" = '1x5767h'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgnxbwe', 'What happened to  Monday', 0.9, 0, '2026-10-14 20:15:51', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 406990 AND p."reddit_post_id" = '1x5767h'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
