-- 0014_seed_20260715T164645Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-07-15T16:46:47.223210+00:00
-- Run started: 2026-07-15T16:46:45.317577+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every INSERT is INSERT OR IGNORE, keyed by the
-- table's natural unique constraint.  Wrangler's migration
-- tracking normally prevents re-apply; the OR IGNORE is
-- defense in depth for partial / interrupted re-runs.
--
-- Chunk: 03_evidence (3/5)
-- Tables: recommendation_evidence.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5252, 2563, 243, 'oxkyzae', 'October skies', NULL, 0, '2026-07-15 16:46:47', 12);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5253, 2622, 243, 'oxl9frj', 'Stand and Deliver', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5254, 2623, 243, 'oxkz6la', 'Pi', NULL, 0, '2026-07-15 16:46:47', 29);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5255, 2624, 243, 'oxkzcvt', 'The Man Who Knew Infinity', NULL, 0, '2026-07-15 16:46:47', 5);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5256, 2383, 243, 'oxkzda7', 'Beautiful Mind', NULL, 0, '2026-07-15 16:46:47', 29);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5257, 2615, 243, 'oxkzdrq', 'oppenheimer', NULL, 0, '2026-07-15 16:46:47', 25);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5258, 2625, 243, 'oxl0j8h', 'The imitation game', NULL, 0, '2026-07-15 16:46:47', 12);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5259, 2626, 243, 'oxl1cqh', 'Good Will Hunting', NULL, 0, '2026-07-15 16:46:47', 14);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5260, 2627, 243, 'oxl1d01', 'Longitude', NULL, 0, '2026-07-15 16:46:47', 2);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5261, 2628, 243, 'oxl1wle', '21', NULL, 0, '2026-07-15 16:46:47', 5);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5262, 2629, 243, 'oxl38p2', 'Hidden Figures', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5263, 2630, 243, 'oxl4ba5', 'Proof', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5264, 2631, 243, 'oxl52py', 'Prime', 0.5, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5265, 2396, 243, 'oxlanio', 'Apollo 13', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5266, 2632, 243, 'oxlbl2d', 'Incendies', 0.4, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5267, 2633, 243, 'oxld0gc', 'The accountant', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5268, 2634, 243, 'oxldabb', 'Moneyball', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5269, 2635, 243, 'oxm2vmc', 'Rounders', NULL, 0, '2026-07-15 16:46:47', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5270, 2636, 243, 'oxmi1pq', 'The Number 23', NULL, 0, '2026-07-15 16:46:47', 2);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5271, 2637, 243, 'oxoderj', 'The Right Stuff', NULL, 0, '2026-07-15 16:46:47', 2);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5272, 2638, 243, 'oxoderj', 'Fat Man and Little Boy', NULL, 0, '2026-07-15 16:46:47', 2);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (5273, 2639, 243, 'oxoj8lm', 'The Theory of Everything', NULL, 0, '2026-07-15 16:46:47', 2);
