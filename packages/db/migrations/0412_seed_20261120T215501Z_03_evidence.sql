-- 0412_seed_20261120T215501Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T21:55:26.982273+00:00
-- Run started: 2026-11-20T21:55:01.997287+00:00
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
SELECT r.id, p.id, '19sop8no5k1k5', 'Patlabor''s slice-of-life stretches', 0.7, 0, '2026-11-20 21:55:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 21736 AND p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19soy4adjnais', 'Hot Spot 2026', 0.75, 0, '2026-11-20 21:55:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 813418 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19soyfdhhljpe', 'Gone Girl', 0.95, 0, '2026-11-20 21:55:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 210577 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sozxemg4hz9', 'Set It Up 2018', 0.95, 0, '2026-11-20 21:55:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 384677 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sozxnaz65fm', 'It Boy 2013', 0.95, 0, '2026-11-20 21:55:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 173185 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sozxv6ne139', 'For Love or Money 1993', 0.95, 0, '2026-11-20 21:55:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9024 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sozy2s20xkz', 'Up in the Air 2009', 0.95, 0, '2026-11-20 21:55:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 22947 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sozyff4rzes', 'Before Sunrise 1995', 0.95, 0, '2026-11-20 21:55:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 76 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sp8utowrmrl', 'Holy Mountain', 0.75, 0, '2026-11-20 21:55:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8327 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19spc7me9yqki', 'Cat in the hat (2003)', 0.9, 0, '2026-11-20 21:55:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10588 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sptrrgsqy9x', 'Lars and the Real Girl (2007)', 0.95, 0, '2026-11-20 21:55:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 6615 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sq9nb745on4', 'Whisper of the heart', 0.9, 0, '2026-11-20 21:55:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 37797 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sqt8a2ozsoy', 'The Holdovers', 0.6, 0, '2026-11-20 21:55:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 840430 AND p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
