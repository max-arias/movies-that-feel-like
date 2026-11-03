-- 0361_seed_20261103T023146Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-11-03T02:32:44.904613+00:00
-- Run started: 2026-11-03T02:31:46.403662+00:00
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
SELECT r.id, p.id, '19s1p1f82jb5s', 'Fried Green Tomatoes', 0.95, 0, '2026-11-03 02:32:44', 51
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1633 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p7qqjljk2', 'You’ve Got Mail', 0.85, 0, '2026-11-03 02:32:44', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9489 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p7qqjljk2', 'Home Alone', 0.8, 0, '2026-11-03 02:32:44', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 771 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p8nliierl', 'Step Mom', 0.9, 0, '2026-11-03 02:32:44', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9441 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p8nliierl', 'Looking for Alibrandi', 0.9, 0, '2026-11-03 02:32:44', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 25069 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p8nliierl', 'Muriel’s Wedding', 0.9, 0, '2026-11-03 02:32:44', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 236 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qsbqagev4', 'Mermaids', 0.85, 0, '2026-11-03 02:32:44', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4587 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Mermaids', 0.85, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4587 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p8ynalb28', 'Tumbleweeds', 0.85, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 55123 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1p91o8evy9', 'jurassic park', 0.75, 0, '2026-11-03 02:32:44', 18
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 329 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1pd9ljl7pg', 'The Kids are All Right', 0.8, 0, '2026-11-03 02:32:44', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 39781 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1pnhzjqvk1', 'The River Wild', 0.85, 0, '2026-11-03 02:32:44', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8987 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1pnhzjqvk1', 'Princess Diaries', 0.85, 0, '2026-11-03 02:32:44', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9880 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1pnhzjqvk1', 'Stepford Wives', 0.8, 0, '2026-11-03 02:32:44', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9890 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1pyq0w8ite', 'Valley Girl (1983)', 0.9, 0, '2026-11-03 02:32:44', 36
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 19053 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1q0856jfwj', 'Matilda', 0.95, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10830 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Matilda', 0.95, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10830 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1q0856jfwj', 'Now and Then', 0.9, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9263 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1q0856jfwj', 'In the best interest of the children', 0.8, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 324126 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qcpugydkx', 'Peace love and misunderstanding', 0.85, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 98545 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qdhap18ao', 'Meet the Fockers', 0.8, 0, '2026-11-03 02:32:44', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 693 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qt9c015c2', 'Janet Planet', 0.85, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1037035 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1r36cn2v5x', 'The Family Stone', 0.85, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9043 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1r4zejmrsz', 'Wild (2014)', 0.8, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 228970 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1r69ni7ays', 'Three Billboards', 0.7, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 359940 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Uptown Girls', 0.85, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14926 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'My Girl', 0.9, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4032 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Princess and the Frog', 0.8, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10198 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Soul Food', 0.9, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 29461 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'The Secret Garden', 0.85, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11236 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Little Women', 0.9, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9587 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rojx4epms', 'Parent Trap', 0.95, 0, '2026-11-03 02:32:44', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9820 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1s20ca9lxg', 'The Parent Trap', 0.95, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9820 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1t1k1nknya', 'Practical Magic', 0.9, 0, '2026-11-03 02:32:44', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6435 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1td9190abo', 'Phenomenon', 0.85, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9294 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1ue7drpdtx', 'It Takes Two', 0.85, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 33689 AND p."reddit_post_id" = '1xm9iox'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1pxul6qdlu', 'In Her Shoes', 0.95, 0, '2026-11-03 02:32:44', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11931 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qnn3x7ech', 'Love Actually', 0.9, 0, '2026-11-03 02:32:44', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 508 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qnn3x7ech', 'Phantom of the Opera', 0.8, 0, '2026-11-03 02:32:44', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9833 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qnn3x7ech', 'Mean Girls', 0.95, 0, '2026-11-03 02:32:44', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10625 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', 'Mean Girls', 0.95, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10625 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qnn3x7ech', 'Sisterhood of the Traveling Pants', 0.95, 0, '2026-11-03 02:32:44', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9779 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qp5i73p7m', 'Somewhere (2012)', 0.85, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 39210 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qu0167bs1', 'Uptown Girls (2003)', 0.95, 0, '2026-11-03 02:32:44', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14926 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1qwlxu14yq', '10 things I hate about you', 0.9, 0, '2026-11-03 02:32:44', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4951 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1r2xbp14de', 'six feet under', 0.85, 0, '2026-11-03 02:32:44', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 1274 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rb15zpffl', 'Moxie!', 0.75, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 583689 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', 'Confessions of a Teenage Drama Queen', 0.9, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11132 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', 'John Tucker Must Die', 0.9, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9293 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', 'A Cinderella Story', 0.9, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11247 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', 'The Devil Wears Prada', 0.95, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 350 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', '27 Dresses', 0.9, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6557 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rp1aghch0', 'Aquamarine', 0.9, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14191 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1rt5qa9aw1', 'Sideways', 0.8, 0, '2026-11-03 02:32:44', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9675 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1tcybpo7l1', 'You''ve Got Mail', 0.85, 0, '2026-11-03 02:32:44', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9489 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1wbmd5hlr6', 'notting hill', 0.8, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 509 AND p."reddit_post_id" = '1xma6ab'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19s1w47u31cdf', 'Tremors', 0.8, 0, '2026-11-03 02:32:44', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9362 AND p."reddit_post_id" = '1xmc3dz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
