-- 0038_seed_20260729T024006Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-07-29T02:40:10.858076+00:00
-- Run started: 2026-07-29T02:40:06.560790+00:00
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

INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12708, 291, 543, 'p0cg9z7', 'I Saw The TV Glow', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12709, 291, 543, 'p0djgfn', 'I Saw The TV Glow', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12710, 4549, 543, 'p0cgu73', 'The Midnight Gospel', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12711, 1221, 543, 'p0d5ps9', 'Paprika', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12712, 1028, 543, 'p0d5u41', 'Perfect Blue', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12713, 5015, 543, 'p0dla75', 'the night is short, walk on girl', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12714, 5026, 544, 'p0d8uc0', 'Redline', NULL, 0, '2026-07-29 02:40:10', 1);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12715, 5026, 544, 'p0d98jw', 'LOVE Redline', NULL, 0, '2026-07-29 02:40:10', 2);
INSERT OR IGNORE INTO "recommendation_evidence" ("id", "recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score") VALUES (12716, 3031, 544, 'p0ddwmw', 'Dorohedoro', NULL, 0, '2026-07-29 02:40:10', 1);
