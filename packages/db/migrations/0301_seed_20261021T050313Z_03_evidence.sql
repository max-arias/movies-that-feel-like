-- 0301_seed_20261021T050313Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-10-21T05:03:47.790666+00:00
-- Run started: 2026-10-21T05:03:13.705752+00:00
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
SELECT r.id, p.id, 'phmwlqy', 'Wolfwalkers', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 441130 AND p."reddit_post_id" = '1x9n68b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnvowp', 'Hagazussa', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 466565 AND p."reddit_post_id" = '1x9n68b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phn7ytn', 'The Black Cauldron', 0.95, 0, '2026-10-21 05:03:47', 99
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10957 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phrfdzm', 'The black cauldron', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10957 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phs5w91', 'The black cauldron', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10957 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht6msf', 'Black Cauldron', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10957 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phn7ytn', 'The Last Unicorn', 0.95, 0, '2026-10-21 05:03:47', 99
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10150 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phngi9s', 'The Last Unicorn', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10150 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5mln', 'The Last Unicorn', 0.95, 0, '2026-10-21 05:03:47', 23
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10150 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phrj8ga', 'The Last Unicorn', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10150 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phn7ytn', 'Legend', 0.95, 0, '2026-10-21 05:03:47', 99
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11976 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phn944g', 'Legend', 0.95, 0, '2026-10-21 05:03:47', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11976 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu2pyr', 'Flight of Dragons', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 27273 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5mln', 'Flight of Dragons', 0.95, 0, '2026-10-21 05:03:47', 23
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 27273 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho76c8', 'Flight of Dragons', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 27273 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phn8e3q', 'Pans labyrinth', 0.95, 0, '2026-10-21 05:03:47', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1417 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phrjknn', 'Pan''s Labyrinth', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1417 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phn8tyu', 'Labyrinth', 0.95, 0, '2026-10-21 05:03:47', 15
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13597 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnb45g', 'the dark crystal!', 0.95, 0, '2026-10-21 05:03:47', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11639 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5mln', 'Dark Crystal', 0.95, 0, '2026-10-21 05:03:47', 23
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11639 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phrj8ga', 'The Dark Crystal', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11639 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phte0ak', '“The Dark Crystal” series', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11639 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnc44l', 'Excalibur', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11527 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phne5ia', 'The Frog Princess (1954)', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 90512 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phngd6p', 'wizards', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 16220 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnh7df', 'The Pagemaster!', 0.95, 0, '2026-10-21 05:03:47', 100
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15139 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnyt3x', 'Fantasia', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 756 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5mln', 'Fantasia', 0.95, 0, '2026-10-21 05:03:47', 23
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 756 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho939o', 'Fantasia', 0.95, 0, '2026-10-21 05:03:47', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 756 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpfvqp', 'Fantasia', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 756 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5mln', 'animted Rankin/Bass Hobbit', 0.9, 0, '2026-10-21 05:03:47', 23
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1362 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5mln', 'Return of the King', 0.9, 0, '2026-10-21 05:03:47', 23
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1361 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phqrblw', 'Dragons Fire & Ice', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 59832 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phqrblw', 'Dragons Metal Ages', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 59837 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phoaifo', 'Krull', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 849 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phokuov', 'The Princess and the Goblin', 0.95, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 42001 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pholb40', 'The Swan Princess', 0.95, 0, '2026-10-21 05:03:47', 25
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 22586 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phq2itz', 'Swan Princess', 0.95, 0, '2026-10-21 05:03:47', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 22586 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phopizt', 'Dragonslayer (1981)', 0.95, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 848 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phowxqy', 'The thief and the cobbler', 0.95, 0, '2026-10-21 05:03:47', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26672 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phozr4m', 'The Green Knight', 0.9, 0, '2026-10-21 05:03:47', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 559907 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'php7v9e', 'Angel''s Egg (1985)', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15916 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpbxfq', 'SHREK', 0.8, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 808 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phqb72t', 'Castlevania', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 71024 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phqb72t', 'The Storyteller', 0.9, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 5303 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phs5w91', 'Sleepy hollow', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2668 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phso8aw', 'Stardust', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2270 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phukxoo', 'The East Palace', 0.75, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 279323 AND p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phndix8', 'Something Wicked This Way Comes', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 24808 AND p."reddit_post_id" = '1x9pfql'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phs714k', 'Alice 1988', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 12155 AND p."reddit_post_id" = '1x9pfql'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu8gul', 'The Curse of Sleeping Beauty', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 388440 AND p."reddit_post_id" = '1x9pfql'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwkgtk', 'Annihilation', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1x9pfql'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnnjrl', 'Men in Black', 0.95, 0, '2026-10-21 05:03:47', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 607 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnnndl', 'They Live', 0.95, 0, '2026-10-21 05:03:47', 132
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8337 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnpb5u', 'John Carpenter’s They Live', 0.95, 0, '2026-10-21 05:03:47', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8337 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnny2h', 'The Amazing Spider-Man', 0.9, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1930 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phno1yg', 'Iron Sky 2', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 302349 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnqfj2', 'Iron sky 2', 0.95, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 302349 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho0vnj', 'Iron Sky 2', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 302349 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnoeif', 'Mars Attacks', 0.95, 0, '2026-10-21 05:03:47', 28
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 75 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'php34cy', 'Mars Attacks!', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 75 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnousw', 'Cocoon', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10328 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnoxs8', 'V (80s series remade in 2010-11)', 0.95, 0, '2026-10-21 05:03:47', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 14141 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpooa9', 'Tout simplement V. C''est une mini série qui forme un film', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 14141 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phq8aa2', 'V', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 14141 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpsqij', 'V', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 14141 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phskzoa', 'V', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 14141 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnpb5u', 'the Slitheen arc in Doctor Who 2005', 0.95, 0, '2026-10-21 05:03:47', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 57243 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnxzo2', 'that once doctor who episode with the Slavine', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 57243 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnpic3', 'There are monsters', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 320508 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnpufl', 'Society (1989)', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 207 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnrbbw', 'The Arrival (1996)', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10547 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phungl9', 'The arrival starring Charlie Sheen', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10547 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnrbbw', 'Arrival II', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 19154 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnrbbw', 'The X-Files', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 4087 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phntv7i', 'Species', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9348 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnuev0', 'V The Final Battle', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 75896 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnuta3', 'Bugonia 2025', 0.9, 0, '2026-10-21 05:03:47', 21
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 701387 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnvdpv', 'Under the Skin (2013)', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 698232 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnw4oj', 'The Faculty (1998)', 0.95, 0, '2026-10-21 05:03:47', 36
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9276 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnx486', 'Mac and Me', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 20196 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnyyzr', 'Invasion of the body snatchers', 0.9, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11850 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho12ri', 'People of Earth', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 67831 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho1ta5', 'The Adventures of Buckaroo Banzai Across the 8th Dimension', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11379 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho7np0', 'Super Mario Bros (1993)', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9607 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpl9jf', 'original mario bros movie', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9607 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phohbl2', 'The Langoliers', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 18197 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phomyd7', 'Secret Invasion', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 114472 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phon2cf', 'The Midnight Meat Train', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10185 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phou11j', 'Wolf Cop', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 262840 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'php8kcv', 'Land of the lost', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 18162 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phr9rfx', 'Land of the lost', 0.85, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 18162 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpsdpt', 'show Goosebumps', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 5835 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phptxkp', 'Sorry to Bother You', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 424781 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phq8noq', 'Repo Man', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13820 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phr5qth', 'The Gawkers segment of V/H/S 99', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1005776 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phrr0fx', 'Nowhere by Greg Araki', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1811 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phsaxvj', 'They Cloned Tyrone', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 736769 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phsdvch', 'Vice', 0.7, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 429197 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu1jgr', 'Lunopolis', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 82649 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phujvzw', 'Jon Ronson''s documentary "Secret Rulers of the World"', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 14045 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phv6csv', 'Bad Taste', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9964 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvwpi1', 'The Witches', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10166 AND p."reddit_post_id" = '1x9r467'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnnqae', 'So I Married an Ax Murderer', 0.95, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10442 AND p."reddit_post_id" = '1x9r62l'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnsq30', 'Altered States', 0.95, 0, '2026-10-21 05:03:47', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11542 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'php5enn', 'Altered States', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11542 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnt0qw', 'Doctor Strange', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 284052 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpnf9k', 'Doctor Strange', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 284052 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnt0qw', 'Doctor Strange: Multiverse Of Madness', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 453395 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnt0qw', 'Everything, Everywhere, All At Once', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 545611 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnuac6', 'Enter The Void', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 34647 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnvtyg', 'Enter the void', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 34647 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phoic64', 'Enter the Void', 0.95, 0, '2026-10-21 05:03:47', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 34647 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnuwhe', 'The Fountain!', 0.95, 0, '2026-10-21 05:03:47', 29
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1381 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnwhrj', 'The Fountain', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1381 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnv9p9', 'The endless', 0.9, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 430231 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnw3ma', '2001 a space Odyssey', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 62 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnw3ma', 'star trek the motion picture', 0.9, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 152 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnw5u9', '''More'' (1969)', 0.85, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 21323 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnwb1k', 'Lucy (2014)', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 240832 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnxd0f', 'Beyond the Black Rainbow', 0.95, 0, '2026-10-21 05:03:47', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 50037 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phonklv', 'Beyond the Black Rainbow', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 50037 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phnzh8g', 'HOLY MOUNTAIN', 0.95, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8327 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho57y8', '''Fight Club''', 0.8, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 550 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5sk0', 'Waking Life', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9081 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho5sk0', 'The Animatrix', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 55931 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho6huo', 'Annihilation', 0.95, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phonnep', 'Annihilation', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'php0lrw', 'Annihilation', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pho916h', 'Solaris', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 593 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phobatr', 'Pi', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 473 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phofvw6', 'August in the water', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 104268 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phooiux', 'Primer [2004]', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14337 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phoox6f', 'Man from Earth', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13363 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phor0mg', 'A colour out of space', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 548473 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phoxacc', 'Donnie Darko', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 141 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phoze94', 'The Eye', 0.8, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10389 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpnf9k', 'Lawnmower Man', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10163 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phpwf9k', 'Sychronic', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 549294 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phqv3vz', 'Koyaanisqatsi', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11314 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtzhd5', 'Watchmen (2009)', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13183 AND p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht6ld7', 'Talented Mr. Ripley', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1213 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht956o', 'Talented Mr Ripley', 0.9, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1213 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht988f', 'Heated Rivalry', 0.7, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 301507 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtkh3w', 'Interview with a Vampire', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 128098 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht8egu', 'Carol (2015)', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 258480 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht8njt', 'A Single Man', 0.95, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 34653 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'A Single Man', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 34653 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht956o', 'Call Me By Your Name', 0.9, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 398818 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht956o', 'Saltburn', 0.85, 0, '2026-10-21 05:03:47', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 930564 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht9mtq', 'Firebird (2021)', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 797838 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'pht9slm', 'Plainclothes', 0.85, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1255718 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtd6li', '*Happy Together* (1997)', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 18329 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Straight Jacket', 0.8, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 92326 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Another Country', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 31939 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Brideshead Revisited', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 4951 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtu1s1', 'Brideshead Revisted, but the 1981 miniseries', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 4951 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Far From Heaven', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10712 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Boys (2014)', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9737 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Y tu Mamá también', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1391 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Wild Reeds', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 26933 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'Touch of Pink', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 55177 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtf86s', 'The Broken Hearts Club (2000)', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 22597 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtgmxg', 'Queer (2024)', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1059128 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phth77l', 'History of Sound', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 891584 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwwn2i', 'The History of Sound', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 891584 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtjsdh', 'God''s Own Country', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 428493 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtmwc2', 'God’s Own Country', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 428493 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtjsdh', 'Kill Your Darlings', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 157370 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtmwc2', 'All of Us Strangers', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 994108 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtmwc2', 'The Way He Looks', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 237791 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtok5e', 'The Way He Looks', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 237791 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuml0x', 'My policeman', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 744114 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvri97', 'La Bola Negra', 0.8, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1422041 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx3tlw', 'Shine', 0.8, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 44984 AND p."reddit_post_id" = '1xaetwx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtu5v1', 'Won’t You Be My Neighbor', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 490003 AND p."reddit_post_id" = '1xagfsf'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvq0p7', '''Perfect Days'' (2023)', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 976893 AND p."reddit_post_id" = '1xagfsf'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtubye', 'Screamers', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9102 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtubye', 'Dune', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 438631 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwohko', 'DUNE', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 438631 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtucrw', 'Kundun', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9746 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtvucy', 'Dogville', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 553 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtwyce', 'Manichithrathazhu (1993)', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 84368 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtx2r1', 'Indiana Jones', 0.75, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 335977 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phtx8z2', 'Stalker', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1398 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phujitr', 'Stalker', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1398 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu46hm', 'Baraka', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14002 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu46hm', 'koyaanisqatsi', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11314 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu7gkr', 'Meiyazhagan 2024', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1136423 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phum9hf', 'The golden child', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10136 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuriey', 'Jeruzalem', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 339547 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phv69tj', 'Indiana Jones and the temple of doom', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 87 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phv8w7n', 'The Borderlands (Last Prayer)', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 207774 AND p."reddit_post_id" = '1xahpnm'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu84kz', 'the Green Mile', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 497 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuol3v', 'Green Mile', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 497 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phu8d9u', 'Seventh Seal', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 490 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuamwv', 'City of Lost Children', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 902 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuazlh', 'Brawl in Cellblock 99', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 398175 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phubofo', 'Klaus', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 508965 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phucxhr', 'The Wrestler', 0.95, 0, '2026-10-21 05:03:47', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 12163 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phucycz', 'The Iron Claw', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 850165 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phudv37', 'La Strada (1954)', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 405 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuf92x', 'Dennis', 0.85, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 83284 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuf92x', 'teddy bear', 0.85, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 84344 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phugyaf', 'Wreck it Ralph', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 82690 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phugyaf', 'fight club', 0.8, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 550 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuhci2', 'Ghost dog', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4816 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuiqlj', 'Blade Runner 2049', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 335984 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuqdmk', 'Tucker and Dale VS Evil', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 46838 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phusxqi', 'The Princess Bride', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2493 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phut513', 'The Iron Giant', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10386 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phutbr9', 'Sin City', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 187 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuzg41', 'Sin City', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 187 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuvjcx', 'Warrior (2011)', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 59440 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phux9o7', 'Paul Blart Mall Cop 2', 0.7, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 256961 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phuzw4w', 'Home Movies', 0.8, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 2274 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvvhx3', 'Goon', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 74387 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvvhx3', 'The Blind Side', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 22881 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx0s78', 'the northman', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 639933 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx0s78', 'riders of justice', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 663870 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx0s78', 'hellboy', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1487 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx0s78', 'Terminator 2', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 280 AND p."reddit_post_id" = '1xajjk1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvf02g', 'The Social Network', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 37799 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvf02g', 'The Dark Knight', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 155 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvf02g', 'BB', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 1396 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvf02g', 'BCS', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 60059 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvf02g', 'Manchester By The Sea', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 334541 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvg16z', 'heathers', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2640 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvhnpx', 'The Fifth Element', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 18 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvhnpx', 'The Bug Lebowski', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 115 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvhnpx', 'Fight Club', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 550 AND p."reddit_post_id" = '1xapb3b'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvqoi1', 'Blindspot', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 62710 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvtk1o', 'She Said', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 837881 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwtii7', 'She Said (2022)', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 837881 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw000q', 'She Said', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 837881 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvqwfa', 'Social Network', NULL, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 37799 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvr8fu', 'Girl with the dragon tattoo', NULL, 0, '2026-10-21 05:03:47', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 65754 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvrnwd', 'Girl with the Dragon Tattoo', NULL, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 65754 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzy2j', 'The girl with the dragon tattoo', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 65754 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvrnwd', 'The Insider', NULL, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9008 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvws5c', 'The Insider', NULL, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9008 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvrnwd', 'The Post', NULL, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 446354 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvrnwd', 'Zodiac', NULL, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1949 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvwm57', 'Zodiac', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1949 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0dlk', 'Zodiac', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1949 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvrnwd', 'All the President’s Men', NULL, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 891 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzy2j', 'All the presidents men.', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 891 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw000q', 'All The Presidents Men', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 891 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvrnwd', 'Spotlight', NULL, 0, '2026-10-21 05:03:47', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 314365 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvwder', 'Spotlight', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 314365 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzy2j', 'Spotlight.', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 314365 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvxq15', 'Spotlight', NULL, 0, '2026-10-21 05:03:47', 25
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 314365 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzao4', 'Spotlight', NULL, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 314365 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxcf1d', 'Man som hatar kvinnor', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15472 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvsoqp', 'seven', NULL, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1288341 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvsyem', 'A Beautiful Mind', NULL, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 453 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyyum', 'A Beautiful Mind', NULL, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 453 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvsyem', 'A Theory of Everything', NULL, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 266856 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvsyem', 'Numb3rs', NULL, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 578 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvtzuz', 'BlackBerry', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1016084 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvuqzv', '150 milligrams (2016)', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 393945 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvuqzv', 'Land Of Plenty (2004)', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1595 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvv0dx', 'Erin Brockovich', NULL, 0, '2026-10-21 05:03:47', 49
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 462 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyhq0', 'Erin Brockovich', NULL, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 462 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvv0dx', 'Dark Waters', NULL, 0, '2026-10-21 05:03:47', 49
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 552178 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0l2t', 'Dark Waters', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 552178 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvvm19', 'Zero Dark Thirty', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 97630 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyrjz', 'Count of Monte Cristo', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11362 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvwm57', '21', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8065 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvwm57', 'Hidden Figures', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 381284 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzdv4', 'Hidden Figures', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 381284 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvwm57', 'The Man Who Knew Infinity', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 353326 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvx24v', 'Pi', NULL, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 473 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw02ds', 'Pi', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 473 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvx5ds', 'Invisible Guest', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 411088 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvxb1u', '13 Going On 30', NULL, 0, '2026-10-21 05:03:47', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10096 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvxfnb', 'The Imitation Game', NULL, 0, '2026-10-21 05:03:47', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 205596 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw02ds', 'The Imitation Game', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 205596 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0l2t', 'Imitation Game', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 205596 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw4xqa', 'Imitation Game, 2014', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 205596 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvxp5l', 'Michael Clayton', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 4566 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvxtcp', 'Moneyball', NULL, 0, '2026-10-21 05:03:47', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 60308 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0l2t', 'Moneyball', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 60308 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvy35k', 'Oppenheimer', NULL, 0, '2026-10-21 05:03:47', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 872585 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0l2t', 'Oppenheimer', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 872585 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw2ihv', 'Oppenheimer', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 872585 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvy7ku', 'Arrival', NULL, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 329865 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw20cz', 'Arrival', NULL, 0, '2026-10-21 05:03:47', 37
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 329865 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyffk', 'Palm Springs (2020)', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 587792 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzpgk', 'The wizard', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 183 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzv52', 'Prison break (2005-2009)', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 2288 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw000q', 'Boston Strangler(2023)', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 881164 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw000q', 'The Rainmaker(1997)', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11975 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0l2t', 'Margin Call', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 50839 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0l2t', 'Industry', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 90812 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0z8n', 'The Fugitive', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 5503 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1ggb', 'Lion', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 334543 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw30km', 'The Andromeda Strain (1971)', NULL, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10514 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw4xqa', 'October Sky, 1999', NULL, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 13466 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw5176', 'The Martian', NULL, 0, '2026-10-21 05:03:47', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 286217 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwlxy0', 'Lucy', NULL, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 240832 AND p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyp3c', 'Children Of Men', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9693 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyp3c', '12 Monkeys', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 63 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1hp3', '12 Monkeys', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 63 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyp3c', 'Code 46', 0.9, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2577 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvypr3', 'Event Horizon', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8413 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Event Horizon', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 8413 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvyv2d', 'Looper', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 59967 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Solaris', 0.9, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 593 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', '2001: A Space Odyssey', 0.85, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 62 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Moon', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 17431 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw6xv6', 'Moon', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 17431 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Ad Astra', 0.85, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 419704 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'The Man Who Fell to Earth', 0.9, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 991 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Annihilation', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz9hd', 'Annihilation', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 300668 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Starship Troopers', 0.85, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 563 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3th', 'Gattaca', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 782 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvz3yc', 'Frequently asked questions about time travel', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 22494 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzhv7', 'Minority Report', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 180 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phvzhv7', 'Equilibrium', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 7299 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0clt', 'Pandorum', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 19898 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0oa0', 'Under The Silver Globe', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 27072 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw0vj4', 'From', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 124364 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1erh', 'Cube', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 431 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1erh', 'Coherence', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 220289 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwjxn0', 'Coherence', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 220289 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1erh', 'Predestination', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 206487 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1erh', 'Primer', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 14337 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw1vwl', 'DEVS', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 81349 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw30wq', 'Resident Alien', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 96580 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw55r4', 'Titan AE', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 7450 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw6xv6', 'Underwater', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 443791 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw6xv6', 'The expanse', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 63639 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw6xv6', 'Dark', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 70523 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phw6xv6', 'Oblivion', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 75612 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwbljs', 'Mr. Robot', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 62560 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwcizs', 'Arrival', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 329865 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwigin', 'Upgrade (2018)', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 500664 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwj0fd', 'Monolith (2022, Australian)', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 408381 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwlyth', 'Babylon 5', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 3137 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwupyn', 'Pitch Black', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 2787 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwylup', 'Travelers', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 67683 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwylup', 'Grimm', 0.75, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 39351 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx0z2w', 'In time', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 49530 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxf7fk', 'The Endless', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 430231 AND p."reddit_post_id" = '1xarvyb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwmxsu', 'Lost', 0.9, 0, '2026-10-21 05:03:47', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 4607 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwnhyi', 'Send Help', 0.7, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'tv' AND r.tmdb_id = 212076 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwo5mq', 'Romancing the stone', 0.85, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 9326 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwp55q', 'Jungle (2017)', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 390062 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwprzj', 'Predator(1987)', 0.9, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 106 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxa79u', 'Badlands', 0.75, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1242898 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwt9ry', 'Apocalypto', 0.9, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1579 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwtolx', 'Swiss Army Man', 0.85, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 347031 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwuo0m', 'Sorcerer', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 38985 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwx9wp', 'Madagascar', 0.6, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 953 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phwysix', 'The African Queen (1951)', 0.85, 0, '2026-10-21 05:03:47', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 488 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxavtg', 'Minecraft', 0.7, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 240149 AND p."reddit_post_id" = '1xav0am'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx44jn', 'Another Round', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 580175 AND p."reddit_post_id" = '1xavjct'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx1ljd', 'Waking Ned Devine', 0.95, 0, '2026-10-21 05:03:47', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10162 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx1x3x', 'Lord of the Rings', 0.95, 0, '2026-10-21 05:03:47', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 122 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx1x3x', 'Hobbit', 0.95, 0, '2026-10-21 05:03:47', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 122917 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx5q42', 'the hobbit', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 122917 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx2e7a', 'Willow', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 847 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx59k5', 'portrait of a lady on fire', 0.9, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 531428 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx5kkg', 'Queen of the Damned', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11979 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx6fxg', 'queen of the damned', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11979 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx7yun', 'Braveheart', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 197 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx8jjg', 'Sinners', 0.75, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1233413 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phx8wml', 'The Northman', 0.95, 0, '2026-10-21 05:03:47', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 639933 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxa8cl', 'How to train your Dragon', 0.95, 0, '2026-10-21 05:03:47', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 10191 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxall6', 'Tangled', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 38757 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxbhr2', 'Dungeons and Dragons: Honor Among Thieves', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 493529 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxc475', 'Leprechaun', 0.95, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 11811 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxcetq', 'Role Models', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 15373 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxd9xz', 'Banshees of Inisherin', 0.95, 0, '2026-10-21 05:03:47', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 674324 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, 'phxfgtm', 'Point Break', 0.9, 0, '2026-10-21 05:03:47', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'movie' AND r.tmdb_id = 1089 AND p."reddit_post_id" = '1xax0ix'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
