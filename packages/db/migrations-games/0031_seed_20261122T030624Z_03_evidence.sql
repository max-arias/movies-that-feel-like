-- 0031_seed_20261122T030624Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T03:06:26.746372+00:00
-- Run started: 2026-11-22T03:06:24.805173+00:00
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
SELECT r.id, p.id, '19syzsptdkwgx', 'God of war 1,2 and 3', NULL, 0, '2026-11-22 03:06:26', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 549 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19syzsptdkwgx', 'God of war 1,2 and 3', NULL, 0, '2026-11-22 03:06:26', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 551 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19syzsptdkwgx', 'God of war 1,2 and 3', NULL, 0, '2026-11-22 03:06:26', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 499 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19syzsptdkwgx', 'The last of us part 2', NULL, 0, '2026-11-22 03:06:26', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26192 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0a77jjf4w', 'last of us 2', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26192 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19syzsptdkwgx', 'The blood of dawnwalker', NULL, 0, '2026-11-22 03:06:26', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 282831 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz04regbwpw', 'Cyberpunk', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1877 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz09kax25pe', 'cyberpunk 2077', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1877 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz051qqp3z9', 'The Darkness', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 10164 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz05rudi2jm', 'Gta 3', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 730 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz09kax25pe', 'Fallout new vegas', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 16 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0mny7v0bn', 'Fallout New Vegas', NULL, 0, '2026-11-22 03:06:26', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 16 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz09kax25pe', 'fallout 4', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9630 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz8542p7zvk', 'Fallout 4', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9630 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz09kax25pe', 'sifu', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 144022 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Sifu', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 144022 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0aecnc6ea', 'Ghost of Yotei', NULL, 0, '2026-11-22 03:06:26', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 317627 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Assassin’s Creed 2, 3 and Origins', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Assassin’s Creed 2, 3 and Origins', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1266 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Assassin’s Creed 2, 3 and Origins', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 28540 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Tsushima', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 75235 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Mafia 3', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11492 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szc2tr6155x', 'Mafia 3', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11492 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Shadow of Mordor', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3025 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0bst9zrds', 'Watch_Dogs', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1121 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz4qhifnexv', 'Watch_Dogs 1', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1121 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0een8fj36', 'Kingdom Come Deliverance 1 and 2', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4843 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0gazaxilg', 'Kingdom Come Deliverance', NULL, 0, '2026-11-22 03:06:26', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4843 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0een8fj36', 'Kingdom Come Deliverance 1 and 2', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 298526 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0xvl4xroh', 'Kingdom Come Deliverance (both 1 and 2)', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 298526 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0gazaxilg', 'Metal Gear Rising: Revengeance', NULL, 0, '2026-11-22 03:06:26', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 378 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0gazaxilg', 'Red Dead Revolver', NULL, 0, '2026-11-22 03:06:26', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1969 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0srd6iu00', 'red dead revolver', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1969 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz1aao1xt2b', 'MGS5', NULL, 0, '2026-11-22 03:06:26', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0mlfdsxnp', 'Borderlands 2', NULL, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1011 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz0mlfdsxnp', 'Vice City', NULL, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 733 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz13orcl7q9', 'Desperados 2: Cooper’s Revenge', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7261 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz15swbf528', 'God Hand', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8803 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz1e26fmvz5', 'Asuras Wrath', NULL, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5495 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz1oms1o8kj', 'Max Payne', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz1vk8e4l7p', 'Punisher?', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18294 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz23kygd4ys', 'No More Heroes 2', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2273 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz2loqv1tgl', 'Prototype 1,2', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 570 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz2loqv1tgl', 'Prototype 1,2', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2988 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz2loqv1tgl', 'Dying Light 1,2,TB', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3042 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz2loqv1tgl', 'Dying Light 1,2,TB', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 102584 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz2loqv1tgl', 'TB', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 314252 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6boys4zts', 'Darksiders 1', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1270 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz73ubhyvs1', 'Intravenous 1', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 144379 AND p."reddit_post_id" = '1y1wofs'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5606tuptt', 'Dragon Age: Origins', NULL, 0, '2026-11-22 03:06:26', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 76 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5y12m83sx', 'Dragon age Origins', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 76 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz56a83624l', 'Diablo', NULL, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 125 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5daiqyon7', 'Pathfinder: Wrath of the Righteous', NULL, 0, '2026-11-22 03:06:26', 71
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127254 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz8bwcdrv44', 'Pathfinder: Wrath of the Righteous', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127254 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5h0id4wn5', 'warhammer 40k darktide', NULL, 0, '2026-11-22 03:06:26', 46
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 135998 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6hjjwqaf9', 'Darktide', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 135998 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6w5xiotvm', 'Vermintide 2', NULL, 0, '2026-11-22 03:06:26', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 55189 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5mjaezw3n', 'Dragons Dogma', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3968 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5pyddvpdt', 'WH40K Rogue Trader', NULL, 0, '2026-11-22 03:06:26', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 203259 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6bkat85l0', 'Warhammer 40k roguetrader', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 203259 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz5u49q0thh', 'bioshock', NULL, 0, '2026-11-22 03:06:26', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 20 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz68uueu9tw', 'Cyberpunk 2077', NULL, 0, '2026-11-22 03:06:26', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1877 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz9zajes8cl', 'Kotor 2', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 118 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6lw0eitdx', 'Dark Messiah of Might and Magic', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2369 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6msnfib0i', 'Noita', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 52006 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz7gpnyxe0y', 'Noita', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 52006 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz6tp6dkj7m', 'Soul sacrifice', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19912 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz72lt3v58i', 'Witchfire', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 76880 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz72lt3v58i', 'No Rest for the Wicked', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 279627 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz78y73w8qt', 'Pathfinder KM', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 36929 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz78y73w8qt', 'Age of Wonders 4', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 232571 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz78y73w8qt', 'BG3', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 119171 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz78y73w8qt', 'Divinity 1', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5082 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz8x655db9f', 'Divinity: Original Sin 2', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11800 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz78y73w8qt', 'Divinity 1 and 2', NULL, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11800 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz7liegwdad', 'The necromancer tales', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 167734 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz8ndktb0ap', 'Sacrifice', NULL, 0, '2026-11-22 03:06:26', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 853 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz900zlm81t', 'Tainted grail fall of avalon', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127697 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz9ndt7fbk5', 'Dawn of Magic', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11024 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sz9ns97jcxu', 'Grim Dawn', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1907 AND p."reddit_post_id" = '1y1z54w'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szc1jqgmwxw', 'Trackmania', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 133807 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sznr15j6bsz', 'Trackmania', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 133807 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szcdz2grnlv', 'Burnout paradise', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 620 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szf6595avr7', 'Split Second', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2150 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjufgdlx6p', 'Underground', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 96 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjufgdlx6p', 'Burnout 3', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5761 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjufgdlx6p', 'Death Rally', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 665 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjufgdlx6p', 'Screamer', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7140 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjufgdlx6p', 'Blur', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3235 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sznr15j6bsz', 'Need for Speed Most Wanted (2012)', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3193 AND p."reddit_post_id" = '1y22rkz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szhmgyfobdx', 'Dark Cloud', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1214 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szhmhixlbj4', 'hogwarts legacy', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 136625 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szhphk98rkw', 'Sonic adventure battle 2', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7858 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szhtx6769wi', 'Sonic Adventure 2 Battle', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7858 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjtqmxwqed', 'Sonic Adventure 1 and 2', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7860 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqybk81eat', 'Bobo Bay', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 258663 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szhxrwve6cj', 'Enshrouded', NULL, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 248643 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szi3hbc29wg', 'Dead Rising', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4797 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szx9w743wdf', 'Dead Rising 1, 2, and Off the Record', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 496 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szx9w743wdf', 'Dead Rising 1, 2, and Off the Record', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5924 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szi4upx0jad', 'hollow knight', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14593 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szi5hijwmu9', 'ys 8', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 27304 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szicgp5kvqc', 'Fortnite', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1905 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szo0ma5cs68', 'Fortnite', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1905 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szicqckph2c', 'Bloodborne', NULL, 0, '2026-11-22 03:06:26', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7334 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szidb0vga79', 'Dragon Quest VII', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1818 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szifzydctr7', 'Katamari Damacy', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6453 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szijma4e0m9', 'Dark Souls', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2155 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szj2xwlxdb9', 'Lego Star Wars the Complete Saga', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2682 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szj53hqmyle', 'Suikoden', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1447 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szsnk33zf6s', 'Eiyuden Chronicle: Hundred Heroes', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 137451 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjhdy3wq03', 'Viva Piñata!', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7236 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szjuj7ybwdf', 'Metal Gear Solid 5 - Phantom Pain', NULL, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szk2igy83ok', 'Digimon World', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8614 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szk2igy83ok', 'Dragon Quest Builders 1 and 2', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 24069 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szk2igy83ok', 'Dragon Quest Builders 1 and 2', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 54548 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szkyhrv6k68', 'Kirby forgotten land', NULL, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 172427 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szkyuax3hy8', 'Spellforce 3', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17583 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szm1nv2frfp', 'Freedom fighters', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 719 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szoa60ztoyp', 'Enter the Gungeon', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11182 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpiqzteduq', 'Fantasy Life!', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6770 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpxzvtwzvp', 'Batman Arkham knight', NULL, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5503 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szr6erf5i8z', 'Brave Fencer Musashi', NULL, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1810 AND p."reddit_post_id" = '1y25qnn'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szoc27ys7sw', 'Rise of piracy', 0.6, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 154973 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szop6ulwcjp', 'Ahoy', 0.5, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 153516 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpc81npy84', 'Ultimate Admiral: Age of Sail', 0.9, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 118323 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szsnx8fhuo2', 'Total War Napoleon', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 442 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpbeheqcn6', 'Assassins Creed: Rogue', 0.8, 0, '2026-11-22 03:06:26', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7570 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpc81npy84', 'Ultimate General: American Revolution', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 277111 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szrfdzdnrls', 'Sea Dogs', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2932 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szrfdzdnrls', 'Pirates of the Caribbean', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5982 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szrfdzdnrls', 'Age of Sail II', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9428 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szs2i5cvw5f', 'Empire total war', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 441 AND p."reddit_post_id" = '1y290h6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szp4s9s2omd', 'Warthunder', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2165 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szp6u1vlt0h', 'GUNNER, HEAT, PC!', 0.9, 0, '2026-11-22 03:06:26', 21
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 146417 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpjc4q7w9x', 'Arma 3', 0.9, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1881 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpqjslzehv', 'Easy Red 2!', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 166920 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpuy6fpgyt', 'Sprocket', 0.8, 0, '2026-11-22 03:06:26', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 89538 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq1mkxnns5', 'Call to Arms - Gates of Hell: Ostfront', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 211196 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq5dqq45y8', 'World of Tanks', 0.7, 0, '2026-11-22 03:06:26', -2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1184 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq5jg30nc2', 'Steel Armor: Blaze of War', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9468 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq5jg30nc2', 'Panzer Elite', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 46994 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq5jg30nc2', 'Panzer Front', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 22008 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqb5zx3xgk', 'graviteam tactics mius front', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18173 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqqnwffokk', 'M1 Tank Platoon 2', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 36902 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqtsbcoi03', 'Steel Fury', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 21219 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szr8rr2144i', 'Armored Warfare', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 15853 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szs79q8jpr8', 'Red Orechestra', 0.7, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9409 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szty7rpgysg', 'Arma Reforger', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 201789 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq0sh5pmw4', 'Squad ''44 / Post Scriptum', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 81141 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szptsckf4m9', 'hell let loose', 0.8, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 32365 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szyml1c1gde', 'IRON NEST: Heavy Turret Simulator', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 377917 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpot0iurkx', 'spearhead 2', 0.6, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 420105 AND p."reddit_post_id" = '1y29hw8'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpq8w671aa', 'Avowed', 0.9, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 135994 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szps4qv5g74', 'Arx Fatalis', 0.9, 0, '2026-11-22 03:06:26', 15
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 602 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpuhomls8y', 'Dragon''s dogma''s', 0.8, 0, '2026-11-22 03:06:26', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3968 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqor52bfb6', 'Dragon''s Dogma 2', 0.9, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 115060 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpx3zjlqgz', 'Lichdom Battlemage', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7443 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szpx3zjlqgz', 'Noita', 0.9, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 52006 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq5tcv9vsx', 'Magicka 2', 0.9, 0, '2026-11-22 03:06:26', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9807 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq9hijvl8k', 'Outward', 0.9, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 22778 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szq9hijvl8k', 'V Rising', 0.9, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 148228 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqgin1gkec', 'Bioshock', 0.8, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 20 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqgin1gkec', 'Prey 2017', 0.9, 0, '2026-11-22 03:06:26', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19531 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqkqjv5lq8', 'Tactical breach wizards', 0.8, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 86286 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szqor52bfb6', 'Darktide', 0.8, 0, '2026-11-22 03:06:26', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 135998 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szr74oo85z9', 'Fictorum', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19604 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szrmsdf36tf', 'Dark Messiah of Might and Magic', 0.9, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2369 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szrn5cy30oy', 'Fable', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 521 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szruu7ly0jm', 'Tainted Grail: Fall of Avalon', 0.9, 0, '2026-11-22 03:06:26', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127697 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szsja1hx45d', 'Mages of mystralia', 0.9, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18869 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szsmguqwls4', 'Codex Lost', 0.9, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 235597 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szsug7hnbr9', 'Pathfinder kingmaker', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 36929 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szsug7hnbr9', 'Wrath of the righteous', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127254 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sztgabnigqo', 'Two worlds 2', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7223 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szth8tr9sn8', 'Tyranny', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18398 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sztrm754yf5', 'Immortals of Aevium', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 228531 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szwjphvnakg', 'Grim Dawn', 0.8, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1907 AND p."reddit_post_id" = '1y29rnl'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szr7pl1vvmt', 'Tomb Raider reboot trilogy', 0.8, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1164 AND p."reddit_post_id" = '1y2afn3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szrlkzyaxnk', 'Uncharted trilogy + 4 + spinoff', 0.7, 0, '2026-11-22 03:06:26', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7331 AND p."reddit_post_id" = '1y2afn3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szyd4xl8rmo', 'I''d recommend the Legendary Edition. All 3 games in one', 0.9, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 140839 AND p."reddit_post_id" = '1y2afn3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19szwshxkbo4k', 'Literally done in Saints Row Gat Out of Hell', 0.9, 0, '2026-11-22 03:06:26', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7708 AND p."reddit_post_id" = '1y2afn3'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
