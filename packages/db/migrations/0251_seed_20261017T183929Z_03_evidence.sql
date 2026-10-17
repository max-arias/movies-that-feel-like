-- 0251_seed_20261017T183929Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T18:39:57.271617+00:00
-- Run started: 2026-10-17T18:39:29.405187+00:00
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
SELECT r.id, p.id, 'pf8vn1h', 'Bottle Rocket', 0.95, 0, '2026-10-17 18:39:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13685 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf8vtjc', 'Bottle Rocket', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13685 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Bottle Rocket (1996)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13685 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf8vn1h', 'Slacker', 0.95, 0, '2026-10-17 18:39:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14022 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf8vtx6', 'Slacker', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14022 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf8vu4g', 'Richard Linklater''s Slacker', 0.95, 0, '2026-10-17 18:39:57', 33
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14022 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbvxmo', 'Slacker', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14022 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf8x15d', 'Waking Life', 0.9, 0, '2026-10-17 18:39:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9081 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf8wttl', 'Cloak and Dagger', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 48677 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf90gib', 'Dancer, TX Pop 81.', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 78373 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Dancer, Texas Pop. 81 (1998)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 78373 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf92s6x', 'Mi Familia', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 38722 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf92u38', 'From dusk till dawn', 0.95, 0, '2026-10-17 18:39:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 755 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf961pq', 'Raising Arizona', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 378 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf96qo4', 'Pee-Wee''s Big Adventure', 0.95, 0, '2026-10-17 18:39:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 5683 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf96ut1', 'Still Breathing', 0.95, 0, '2026-10-17 18:39:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 39467 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf978dl', 'Deathproof', 0.95, 0, '2026-10-17 18:39:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1991 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9k4fo', 'The Legend of Billie Jean (1985)', 0.95, 0, '2026-10-17 18:39:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15982 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgelx0r', 'The Legend of Billie Jean', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15982 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf99e0j', 'Boyhood', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 85350 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9s002', 'boyhood', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 85350 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfd6gam', 'boyhood', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 85350 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9b958', 'Lone Star', 0.95, 0, '2026-10-17 18:39:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26748 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9bjhz', 'True Stories by David Byrne', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 24798 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfacesq', 'True Stories!', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 24798 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ceev', 'Selena', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 16052 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfc7zt6', 'Selenas!', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 16052 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9chx6', 'Primer', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14337 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9g12b', 'HALT AND CATCH FIRE', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 59659 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9iol5', 'Beavis and Butthead Do America', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 3179 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ip7i', 'Office Space', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1542 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfabye5', 'Office Space', 0.95, 0, '2026-10-17 18:39:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1542 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9mu3z', 'Varsity Blues', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14709 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9paog', 'Goodburger', 0.8, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14817 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Dazed and Confused (1993)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9571 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa7rag', 'Dazed and Confused', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9571 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Hope Floats (1998)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9715 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Toy Soldiers (1991)', 0.9, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10750 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Napoleon Dynamite (2004)', 0.9, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8193 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Thelma & Louise (1991)', 0.9, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1541 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'The Three Burials of Melquiades Estrada (2005)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8053 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'August Evening (2007)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 102305 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Hot Summer Nights (2017)', 0.85, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 347866 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'The Hot Spot (1990)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14864 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'Tin Cup (1996)', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10478 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'The Apostle (1997)', 0.9, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2895 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9ta3f', 'One False Move (1992)', 0.9, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 21128 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9w1dz', 'Vengeance', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 683340 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa6v0x', 'Hell or High Water', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 338766 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa8ce0', 'No Country for Old Men', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6977 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa8z23', 'No Country', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6977 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfgfr8h', 'No country for old men', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6977 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa8z23', 'Dallas Buyers Club', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 152532 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa8z23', 'A Million Miles Away', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1002185 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb6xrs', 'Quinceañera', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 64499 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb6xrs', 'Where the Heart Is', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10564 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb6xrs', 'Take Shelter', 0.85, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 64720 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbfnsj', 'The Zorro movies with Antonio Banderas', 0.8, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9342 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdhvo9', 'Miss Congeniality', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1493 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pghp8d5', 'Rushmore', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11545 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgiakho', 'Rushmore', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11545 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgies1t', 'Red Rocket', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 763329 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglnizr', 'Chulas Fronteras', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 85635 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgvjdt3', 'friday night lights', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13416 AND p."reddit_post_id" = '1x396i9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdujdz', 'Shiva Baby', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 664300 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdujdz', 'Krisha', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 323929 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdujdz', 'Sick of Myself', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 788734 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdujdz', 'Worst Person in the World', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 660120 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Synecdoche New York', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4960 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'American Gangster', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4982 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', '25th Hour', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1429 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'White Girl', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 336011 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Good Time', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 429200 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Heaven Knows What', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 285024 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Uncut Gems', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 473033 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Skate Kitchen', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 491474 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Beach Rats', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 426238 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdurbm', 'Frances Ha', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 121986 AND p."reddit_post_id" = '1x3bgu3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9r8y6', 'Over The Garden Wall', 0.95, 0, '2026-10-17 18:39:57', 127
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 61617 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfckc0w', 'Over the Garden Wall', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 61617 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9refr', 'Jeepers Creepers', 0.95, 0, '2026-10-17 18:39:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8922 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9rgp8', 'Jeepers creepers 2', 0.95, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11351 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgp07jm', 'Jeepers Creepers 2', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11351 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9slsb', 'Trick''r''treat', 0.95, 0, '2026-10-17 18:39:57', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 23202 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9snyo', 'Children of the corn', 0.95, 0, '2026-10-17 18:39:57', 30
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10823 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'Children of the corn (1984)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10823 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9srbk', 'Dark harvest', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 675531 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfatmp5', 'Dark Harvest(2023)', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 675531 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9tfhg', 'Halloween tree', 0.95, 0, '2026-10-17 18:39:57', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 45974 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa1n7v', 'The Halloween Tree', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 45974 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbiy2v', 'The Halloween Tree', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 45974 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9tnjt', 'Scooby Doo and the Witch’s Ghost', 0.95, 0, '2026-10-17 18:39:57', 18
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 17681 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9twt3', 'Pumpkinhead', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26515 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9uj2y', 'Pumpkinhead', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26515 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9zq0s', 'Pumpkinhead', 0.95, 0, '2026-10-17 18:39:57', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26515 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa3qz2', 'Pumpkin Head', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26515 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9twt3', 'Dark Night of the Scarecrow', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 30931 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9uph4', 'Dark Night Of The Scarecrow', 0.95, 0, '2026-10-17 18:39:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 30931 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'Dark night of the scarecrow (1981)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 30931 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhj7nq', 'Dark Night of the Scarecrow', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 30931 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9u8zt', 'Sleppy Hallow', 0.95, 0, '2026-10-17 18:39:57', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2668 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'Sleepy hollow (1999)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2668 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9uttc', 'the village', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6947 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'The village (2004)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6947 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9uyap', 'It''s the Great Pumpkin, Charlie Brown', 0.95, 0, '2026-10-17 18:39:57', 90
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13353 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9vzme', 'The Walking Dead', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 1402 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9w7nh', 'The Town That Dreaded Sundown', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 287084 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9wnh0', 'Foe', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 760245 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9wpfs', 'Supernatural', 0.9, 0, '2026-10-17 18:39:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 1622 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9wtkm', 'Onibaba', 0.9, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 3763 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9xn5o', 'Idle Hands', 0.9, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6552 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9xx2y', 'Nightmare before Christmas', 0.95, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9479 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y0nn', 'The Cider House Rules', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1715 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y1j7', 'Disney''s The Adventures of Ichabod and Mr. Toad', 0.95, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13465 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajtlc', 'The Adventures of Ichabod and Mr. Toad', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13465 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfii9gy', 'The Adventures of Ichabod and Mr. Toad', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13465 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'Scary stories to tell in the dark (2019)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 417384 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhj7nq', 'Scary Stories to Tell in the Dark', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 417384 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pglwxiu', 'Scary Stories to Tell in the Dark', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 417384 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'Night of the living dead (1990)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 19185 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9y5de', 'Signs (2002)', 0.95, 0, '2026-10-17 18:39:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2675 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9z4z7', 'Fantastic Mr. Fox', 0.9, 0, '2026-10-17 18:39:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10315 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdqjgu', 'Fantastic mr fox', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10315 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9zmfn', 'James and the Giant Peach', 0.9, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10539 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9zpga', 'Halloween: Season of The Witch', 0.95, 0, '2026-10-17 18:39:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10676 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa4rkv', 'Halloween town', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 27850 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfa57ct', 'Hack-O-Lantern', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 95114 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfad7us', 'The Lair of the White Worm', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11347 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfaej8s', 'Ernest scared stupid', 0.9, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 32685 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfashan', 'Field of Dreams', 0.85, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2323 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbalo8', 'Pearl', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 949423 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbpfha', 'Pinocchio- guilmero', 0.85, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 555604 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfc1yxy', 'Something wicked this way comes', 0.95, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 24808 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfccv4n', 'secret window', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1586 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdawhv', 'Monster House (2006)', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9297 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdyxi9', 'In The Tall Grass', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 523139 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfe4dwk', 'Sinners', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1233413 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfesxpq', 'Sinners', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1233413 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pffuv51', 'Space Invaders', 0.7, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1527215 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhj7nq', 'The Evil Dead', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 764 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhj7nq', 'Evil Dead 2: Dead by Dawn', 0.9, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 765 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhj7nq', 'Scarecrows', 0.85, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 40168 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgp07jm', 'Scarecrow', 0.85, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 40168 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhnfdp', 'Night of the Hunter', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 3112 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfhx7az', 'Scooby-Doo and the Ghoul School', 0.95, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13350 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfj84gh', 'RL Steins Pumpkinhead', 0.6, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 362105 AND p."reddit_post_id" = '1x3cksr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pf9v6pc', 'Xanadu', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15668 AND p."reddit_post_id" = '1x3cxmu'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfaexyw', 'The keeper of lost causes', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 196024 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfaflmc', 'Zodiac', NULL, 0, '2026-10-17 18:39:57', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1949 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfagvdm', 'Memories of Murder 2003', NULL, 0, '2026-10-17 18:39:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11423 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfai6qw', 'Mystic River', NULL, 0, '2026-10-17 18:39:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 322 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfai6qw', 'Se7en', NULL, 0, '2026-10-17 18:39:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 807 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfai6qw', 'Gone Baby Gone', NULL, 0, '2026-10-17 18:39:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4771 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajcub', 'Nightcrawler', NULL, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 242582 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfanwgf', 'Nightcrawler', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 242582 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajcub', 'Enemy', NULL, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 181886 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajcub', 'Cure', NULL, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 36095 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajcub', 'The Handmaiden', NULL, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 290098 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajcub', 'The Empty Man', NULL, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 516632 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfajcub', 'Athena', NULL, 0, '2026-10-17 18:39:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 852046 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfalmvr', 'Big Bad Wolves', NULL, 0, '2026-10-17 18:39:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 171540 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgt87r1', 'big bad wolves', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 171540 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb7sar', 'Wind rive r', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 395834 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfanwgf', 'Gone Girl', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 210577 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfatl48', 'Gone girl', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 210577 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgiylf6', 'Gone girl', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 210577 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfanwgf', 'Sicario', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 273481 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb2izk', 'Inherit the Viper', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 634904 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb5ap3', 'Lovely Bones (2009)', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 7980 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfe52fi', 'The Vanishing', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 449459 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfh5257', 'The Secret in Their Eyes (Argentina 2009)', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 25376 AND p."reddit_post_id" = '1x3ersr'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfb8fqn', 'Apt Pupil', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9445 AND p."reddit_post_id" = '1x3gxdm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbjmwl', 'Annihilation', NULL, 0, '2026-10-17 18:39:57', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbkaa4', 'Eternal Sunshine of the Spotless Mind', NULL, 0, '2026-10-17 18:39:57', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 38 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbkk39', 'Dreamland (2006)', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8199 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbkubs', '2001: A Space Odyssey', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 62 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbldb0', '''Spring Breakers'' (2012)', NULL, 0, '2026-10-17 18:39:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 122081 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfblfk5', 'Solaris', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 593 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfblomw', 'What Dreams May Come', NULL, 0, '2026-10-17 18:39:57', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 12159 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbmpc4', 'Alice 1988', NULL, 0, '2026-10-17 18:39:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 12155 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbmudb', 'Mandy', NULL, 0, '2026-10-17 18:39:57', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 460885 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbp6zs', 'Jaws 3-D', NULL, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 17692 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbp6zs', 'The Florida Project', NULL, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 394117 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbsg38', 'La Science des rêves', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbssjl', 'babyteeth', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 522098 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbv2bb', 'Across The Universe (2007)', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4688 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbxoib', 'Requiem for a dream', NULL, 0, '2026-10-17 18:39:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 641 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbxoib', 'donnie darko', NULL, 0, '2026-10-17 18:39:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 141 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfc1yfs', 'your name', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 372058 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfc1yfs', 'weathering with you', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 568160 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfc45tm', 'Never Goin'' Back (2016)', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 490005 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcasjq', 'the butterfly effect', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1954 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcc63m', 'Heaven, the Diane Keaton documentary', NULL, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1495 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcf59s', 'It Follows', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 270303 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcfbyh', 'Uptown Girls', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14926 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcmnb6', 'Jawbreaker', NULL, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 18892 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcpbfd', 'I saw the TV glow', NULL, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 858017 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcsxo3', 'Dirty Girl', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 70695 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcv55i', 'Vanilla Sky', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1903 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcxvag', 'Paradise Hills', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 487083 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfcxvag', 'Nerve', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 328387 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfdu6k7', 'I believe in unicorns', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 253257 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfevb2f', 'Brazil (1985)', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 68 AND p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbm18j', 'The princess switch', NULL, 0, '2026-10-17 18:39:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 556803 AND p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfbsdv4', 'Black Christmas', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9656 AND p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pfc1siq', 'How to Be Single (2016)', NULL, 0, '2026-10-17 18:39:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 259694 AND p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgmc8ja', 'Dash and Lily (2020)', NULL, 0, '2026-10-17 18:39:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 111625 AND p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pgvutsb', 'Eloise at Christmastime', NULL, 0, '2026-10-17 18:39:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 59191 AND p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
