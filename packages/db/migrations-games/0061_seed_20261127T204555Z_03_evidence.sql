-- 0061_seed_20261127T204555Z_03_evidence.sql: data seed from pipeline:load run.
-- Generated:  2026-11-27T20:45:57.262904+00:00
-- Run started: 2026-11-27T20:45:55.711652+00:00
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
SELECT r.id, p.id, '19sp326ciy6as', 'Far Cry Blood Dragon is an ode to 80''s Sci Fi action', 0.85, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2001 AND p."reddit_post_id" = '1xxahlz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sp5gkkh0n6q', 'Quantum Break and MGS5 play out episodically like action TV shows', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3750 AND p."reddit_post_id" = '1xxahlz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sp5gkkh0n6q', 'MGS5 play out episodically like action TV shows, and MGS5 is set in the 80s', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1xxahlz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19sp9v79k3rl0', 'honestly check out cyberpunk 77', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1877 AND p."reddit_post_id" = '1xxahlz'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t70e0qv15no', 'The Sims?', 0.8, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 223 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t70tzblgjxc', 'Yeah pretty sure that’s just The Sims', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 223 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t70tk526cbn', 'sims 4 but with challenges', 0.7, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3212 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t70tzblgjxc', 'Heck Stardew Valley', 0.6, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17000 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t70yo01m9cw', 'Landlords Super', 0.8, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 121388 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7127tg2nz4', '"Papers Please" is about being a guy you get angry at when they take too long to check passports at the airport', 0.85, 0, '2026-11-27 20:45:57', 22
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2935 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t72kn9twcth', 'Gothic is an absolute slog of a fantasy title that treats you like the fantasy equivalent of a minimum wage retail employee', 0.6, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2261 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t71c5x3sa8z', 'QWOP - Running simulator', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8814 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t71yz00qe3p', 'try Bum Simulator', 0.8, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 101320 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7b3au135ya', 'Viscera Cleanup Detail', 0.75, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6009 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'PowerWash Simulator Franchise', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 138590 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'Crime Scene Cleaner', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 115830 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'A Game About Digging A Hole', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 325554 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'The Convenience Store', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 129292 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'Emily is Away Series', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14762 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'Say No! More', 0.65, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 126120 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vcd9bmg2p', 'Depression Quest', 0.5, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 10238 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t71sp382r51', 'Or Paralives.', 0.5, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 126547 AND p."reddit_post_id" = '1y5nv83'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t75q02e58kg', 'Dark pictures anthology: House of Ashes', 0.9, 0, '2026-11-27 20:45:57', 15
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 140617 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7fe6o09x9h', 'The Dark Pictures Anthology: House of Ashes is a good pick if you want to lean into the ancient akkadian horror', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 140617 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t75qz8qo3ab', 'Call of Duty Black Ops 2 has a mission like the 3rd pic', 0.7, 0, '2026-11-27 20:45:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1122 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t760kphvelc', 'Metal Gear Solid V takes place largely during the Soviet invasion of Afghanistan', 0.95, 0, '2026-11-27 20:45:57', 151
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t75wzzf8t5t', 'some parts of afghanistan in mgs5 are like this', 0.95, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7cqre2dwo0', 'Metal Gear Solid V', 0.95, 0, '2026-11-27 20:45:57', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7cr6u01d41', 'Metal Gear Solid: Peacewalker', 0.75, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 382 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t75xpx71cit', 'Far Cry 4', 0.9, 0, '2026-11-27 20:45:57', 190
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6801 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7b3qeus8md', 'Far Cry 4', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6801 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8lpypect5w', 'Maybe Far Cry 2', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 361 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t76eti2pl0l', 'Uncharted Lost Legacy is what these photos especially reminds me of', 0.8, 0, '2026-11-27 20:45:57', 49
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26193 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t76tc0837he', '100% image 2 is uncharted 2', 0.7, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 565 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t76h9x2tn6q', 'Indiana Jones and the Great Circle', 0.85, 0, '2026-11-27 20:45:57', 42
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 142415 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7flj99bvdw', 'Indiana Jones game does too', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 142415 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t76q4euhvoh', 'Arma 3 with some units is a good one', 0.8, 0, '2026-11-27 20:45:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1881 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7lzjqeus9v', 'Arma 3 can really be whatever you want it to be', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1881 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t76wtu07f6r', 'Halo 2', 0.8, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 986 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7bemvq7cf4', 'Reminds me a bit of certain levels from Halo 2', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 986 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t770cyjf7vp', 'Rising Storm 2: Vietnam has a map that is exactly that first photo', 0.85, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18166 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7flj99bvdw', 'Tomb raider games 2013 do this', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1164 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t76pouw0b6p', 'Serious Sam', 0.6, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 198137 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ds20jv8o1', 'Serious Sam has tons of sightseeing', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 198137 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t793q6wxo6d', 'Gray Zone Warfare seems to be moving in this direction', 0.75, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 275070 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t77dp3bt0v5', 'High Fleet. Not magical but you get hard scifi seeming flying battleships against a backdrop of ancient lands', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 157439 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7dxo7xpqqt', 'Came here to say Highfleet', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 157439 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t77dp3bt0v5', 'Curious Expedition', 0.65, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19319 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t77u45rllsx', 'eye divine cybermancy', 0.65, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6230 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t78h138ny5g', 'Metal Slug', 0.6, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1404 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7chctpl38i', 'The 1994-1996 Marathon games are exactly this vibe', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8709 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ab286rg6c', 'Spec Ops: The Line', 0.4, 0, '2026-11-27 20:45:57', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1377 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t769gby53tx', 'Somehow, The Long Dark does.', 0.4, 0, '2026-11-27 20:45:57', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8347 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7gcsa7yrvk', 'i would recommend Tom Clancy''s Ghost Recon Wildlands', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11171 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7geh8q0dya', 'Just Cause 2', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 558 AND p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7cq2ccadoh', 'have you played Control?', 0.9, 0, '2026-11-27 20:45:57', 42
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 103329 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d398qbvt1', '**Metro** 2033, 2034, and Exodus', 0.8, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 495 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d398qbvt1', '**Metro** 2033, 2034, and Exodus', 0.7, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 539 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d398qbvt1', '**Metro** 2033, 2034, and Exodus', 0.8, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 37016 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7cu8qfpi9x', 'Desolate', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 51578 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7cuhh1o43o', 'Fallout 3', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 15 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7cuhh1o43o', 'Fallout 4 is vibrant', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9630 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d2jchh41s', 'Prey (2017).', 0.9, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19531 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d398qbvt1', 'Dishonored', 0.8, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 533 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d3i40umyt', 'Atomfall', 0.9, 0, '2026-11-27 20:45:57', 18
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 305159 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d455umabk', 'SCP 5K', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 132594 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d455umabk', 'Stalker 2', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 101440 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d61hzm669', 'Alan Wake 1 and 2', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1062 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7d61hzm669', 'Alan Wake 1 and 2', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 185246 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7dt2zw8vy8', 'You are Empty', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 54651 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7eyzxw383l', 'Lies of P', 0.9, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 148241 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7gmfoxkmgw', 'Pacific drive', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 217592 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7hoh7ny1mq', 'Hail to the Rainbow', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 239786 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7hzeq3l6mc', 'Industria', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 128948 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jq0u1yz7p', 'Once Human', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 204538 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7knmhesp1c', 'We happy few', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9182 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ntcdmmldu', 'Active Matter', 0.7, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 322158 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7t35o3xlts', 'Twisted Tower', 0.7, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 269507 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ywpashsqq', 'Crow Country', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 273522 AND p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7gxuf99f4y', 'Witcher series', 0.7, 0, '2026-11-27 20:45:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1942 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7gxuf99f4y', 'Kingdom come deliverence series', 0.7, 0, '2026-11-27 20:45:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4843 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7h7m9r4jc0', 'Pathologic', 0.7, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8074 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7hcdvd0cth', 'KOTOR 2, 1 to a lesser extent', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 118 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7hcdvd0cth', 'KOTOR 2, 1 to a lesser extent', 0.6, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 116 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7hcdvd0cth', 'Dishonored', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 533 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7hukwuxotd', 'The Blood of Dawnwalker', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 282831 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i7ucx01r8', 'Deus Ex Human Revolution', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 43 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i7ucx01r8', 'Mankind Divided', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9498 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i7ucx01r8', 'Telltale''s Batman Series', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14746 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i7ucx01r8', 'The Wolf Among Us', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2993 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ra3cgvu1s', 'Oxenfree', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14587 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7uo6pqsli9', 'Mass Effect 3', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 75 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7yukj03274', 'Fallout New Vegas', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 16 AND p."reddit_post_id" = '1y5uptx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jdzxy7grp', 'new Expanse game by Owlcat', 0.6, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 347869 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i4zjupcps', 'Call of Duty Infinity Warfare', 0.9, 0, '2026-11-27 20:45:57', 21
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18968 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i7zbhzyjo', 'Starfield can do this.', 0.8, 0, '2026-11-27 20:45:57', 38
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 96437 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i7zbhzyjo', 'Squadron 42 promises such.', 0.7, 0, '2026-11-27 20:45:57', 38
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19128 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gkyrfvhr4', 'Also star citizen.', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1595 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i95njjpgi', 'Battlefront 2 (classic)', 0.9, 0, '2026-11-27 20:45:57', 39
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 142 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i9c0yyysl', 'Jump Space', 0.8, 0, '2026-11-27 20:45:57', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 130421 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7i9tq8kejk', 'Angels Fall First!', 0.9, 0, '2026-11-27 20:45:57', 15
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17279 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7iaurrly1w', 'FTL.', 0.9, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3075 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jedwc1ack', 'Void War, FTL''s grimdark cousin.', 0.8, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 291212 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ihk7mah0i', 'Space Hulk: Deathwing', 0.9, 0, '2026-11-27 20:45:57', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6879 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7mv4qmqduq', 'Warframe has railjack, where you can board crewships and take control', 0.8, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2903 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ilqm3g1ib', 'Battlefield 2142', 0.9, 0, '2026-11-27 20:45:57', 39
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 349 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7iufpo9g9u', 'Titanfall 2', 0.9, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17447 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7iun2tqfmo', 'Heat Signature.', 0.9, 0, '2026-11-27 20:45:57', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 10160 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7j572l5rc3', 'Space engineers', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3239 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7j596zsy3l', 'Microsoft Outwars', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 57676 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7j9p5qgq74', 'star wars: republic commando (2005)', 0.9, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 148 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jbkrtrq8y', 'Duskers', 0.8, 0, '2026-11-27 20:45:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 16707 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jfl1m58yt', 'Skin Deep', 0.7, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 111061 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jl20bnush', 'QUASIMORPH', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 216947 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7jsh7wvr1c', 'Void Bastards', 0.9, 0, '2026-11-27 20:45:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 111846 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7k34ugqoiq', 'RipOut.', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 150433 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7kblforeld', 'Marauders', 0.9, 0, '2026-11-27 20:45:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 132995 AND p."reddit_post_id" = '1y5v83v'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7mj7jltbdu', 'The Wolf Among us', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2993 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7mj7jltbdu', 'Vampire The Masquerade Bloodlines', 0.9, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7mrquqlrds', 'Troubleshooter.', 0.7, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 80002 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7mym5zfxsz', 'Final Fantasy games fit the bill to varying degrees, see FFVII for example', 0.7, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 427 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7mym5zfxsz', 'Rimworld is probably not what you''re looking for, but technically it has magic mixed in with future tech as a base manager game', 0.5, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9789 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7o66bo4t0h', 'Split Fiction', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 325594 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7pkh0jen6r', 'Tactical breach wizards is very close to the vibes of Shadowrun.', 0.9, 0, '2026-11-27 20:45:57', 21
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 86286 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7rbgda5pt0', 'Shadow Warrior 2?', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11064 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7rbl1vjzz5', 'Destiny 2', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 25657 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7rbl1vjzz5', 'Warframe', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2903 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7rgcx9ji78', 'crimson desert', 0.5, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 125633 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7rgzss2e3m', 'Xenoblade Chronicles', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2364 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7rgzss2e3m', 'Stellar Blade', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 117170 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7sf0jnjqhw', 'Elex 1 and 2', 0.8, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11567 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7sf0jnjqhw', 'Elex 1 and 2', 0.8, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 55147 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7tt22azt2d', 'Jak and daxter 
Especially 2 and 3', 0.6, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1529 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7tt22azt2d', 'Jak and daxter 
Especially 2 and 3', 0.6, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1530 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7vl1xebhlw', 'hellgate london', 0.7, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 325 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t80xeqmp141', 'Project Warlock (boomer shooter)', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 105738 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t80xeqmp141', 'Outriders (co op RPG shooter)', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 102058 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ib6qu6q5f', 'There is this one, if crpg is a no-go at the moment. https://en.wikipedia.org/wiki/Shadowrun_%282007_video_game%29', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7643 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8k9kiqbbaa', 'Phantasy Star Online fits this', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 21968 AND p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7osb1jz077', 'steam version of Mud and Blood', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 153415 AND p."reddit_post_id" = '1y5x3j1'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7x6e5wsmpu', 'Mount & Blade Bannerlord', 0.95, 0, '2026-11-27 20:45:57', 33
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9608 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7zt4hz6ku8', 'Mount and blade banner lord', 0.95, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9608 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7x6xbq06bp', 'Total War', 0.8, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 438 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7x98l2exab', 'Total War Series, perhaps?', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 438 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7x89b6j8xw', 'Not HUUUGE battles, but Chivalry 2. It’s both hilarious and badass.', 0.9, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 119342 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7yfjpvhr0h', 'Chivalry 2 is basically battlefield with knights and archers.', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 119342 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7xkaovc2dc', 'Shadow of War. While they are not the ONLY thing that happens in the game, it''s what the rest of the game is building up to', 0.9, 0, '2026-11-27 20:45:57', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 27421 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ybeo9lo1v', 'Dynasty Warrior Origins.', 0.85, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 303808 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7ybeo9lo1v', 'EDF.', 0.6, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 46666 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7z4ly2owsi', 'Easy Red 2', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 166920 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7zb57lwrus', 'Kingdoms Under fire.', 0.75, 0, '2026-11-27 20:45:57', 10
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18112 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t81q14ykh6t', 'Kingdom under fire', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18112 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7zqehaddz4', 'Ultimate Epic Battle Simulator 2', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 164250 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7zqfgqfim9', 'there''s an old warriors-series game called Bladestorm: The Hundred Years War that has a lot of the warriors game''s mechanics but with a much bigger focus on commanding a squad', 0.85, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6919 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t80nexyp72d', 'if you have a pc modded Star Wars Battlefront 2 (2005) is a blast.', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 142 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t81sx43eupv', 'You might really like the Forever Winter, youre not in either army ... it feels like youre stuck in the middle of a world ending war each run', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 287871 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8222ixcw00', 'StarCraft', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 230 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t84swwy33eq', 'Ninety nine nights?', 0.65, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7094 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t85iizdi2h1', 'ravenfield has that big battle, low-poly thing you''re apparently (?) going for', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26481 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t863vtvmxhc', 'gates of hell ostfront. WW2 RTS with direct control.', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 211196 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t86gkb24ykk', 'Planetside 2 (years ago. Sadly, the player base has all but ceased to be).', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1265 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t86gkb24ykk', 'Hell Let Loose can feel like this at times.', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 32365 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t86nwd282rn', 'Total War Warhammer 3 (+1+2 serve as DLC today)', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 143114 AND p."reddit_post_id" = '1y60w1a'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t7zjdkzgxsy', 'but Everhood was also an incredible experience to me.', 0.9, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 132083 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t886yx2ra5d', 'i also second everhood.', 0.9, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 132083 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t804g0zbuht', 'I think prob undertale and deltarune, they both kinda capture what omori gave to me atleast just in a more jokey way. If u want it a tad bit darker i think undertale is prob a bit more your lane', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 12517 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t804g0zbuht', 'but if you don’t mind a lot more whimsy then deltarune is def my fave of the 2.', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 171233 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t813nvx7xgl', 'If you''re done with those, LISA. it''s...well it''s as weird and fucked up as omori, if in a different way', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8492 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nin8rbsww', 'how about.. lisa the painful ..??', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8492 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t86i6tzi8f8', 'The closest I could think of in terms of vibe are those RPG-maker esque games, like Ib.', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 50467 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8e9ainoops', 'Omori had pieces of Yume Nikki, Mother 3, and Persona 2 innocent sin to me.', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18689 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t94bwub4zz5', 'Yume Nikki and by the way, that''s what inspired Omori', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18689 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8e9ainoops', 'Omori had pieces of Yume Nikki, Mother 3, and Persona 2 innocent sin to me.', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3683 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8eccjafs4l', 'mais je dirais mother 3. C''est un rpg ecrit par Shugaso itoi.', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3683 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8e9ainoops', 'Persona 2 especially had a cast that felt like omori''s friend group', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11453 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jpiy0r3fm', 'OneShot?', 0.7, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 23181 AND p."reddit_post_id" = '1y61r9d'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t97jurxbu00', 'Dawn of the monsters is a kaiju beat them up game.', 0.4, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 120562 AND p."reddit_post_id" = '1y62nu9'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t81y9oidfdu', 'The Monster Rancher series is kinda close to what you are looking for. It''s definitely a monster tamer but you have to feed the right food and get to know your monsters behavioral needs other wise they''ll act up or even die early.', 0.85, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4104 AND p."reddit_post_id" = '1y62tr6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8sxgirhmw2', 'Digimon World 1? It has battles like Pokemon but you can only **suggest** your Digimon what to do . You have to feed your Digimon, train it, bring it to toilet, etc. Depend on how you take care your Digimon, they will evolve into different Digimon.', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8614 AND p."reddit_post_id" = '1y62tr6'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t81t779err9', 'Arc Raiders', 0.9, 0, '2026-11-27 20:45:57', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 185258 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t81uw15e4ua', 'Hunt Showdown', 0.95, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7291 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8e2rfvxsec', 'Rust', 0.95, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3277 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t822u52yfic', 'PUBG', 0.95, 0, '2026-11-27 20:45:57', 12
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 27789 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t82p749pwcl', 'Let it Die', 0.9, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18854 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t82p749pwcl', 'Duskbloods', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 338104 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t834qmf7apv', 'Marathon', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 250630 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t86ee7w64n4', 'H1Z1', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6188 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t879yjf1x50', 'The Culling', 0.9, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17252 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8erzrnymf8', 'Escape from Tarkov', 0.9, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 15536 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8tic5hbitc', 'The Finals', 0.95, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 158985 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9dba7wmzgg', 'ARK survival of the fittest', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 24412 AND p."reddit_post_id" = '1y6355f'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t84z3y2ph8h', 'War of the monsters', 0.95, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3208 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t889dtgbtdw', 'Rampage', 0.75, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3055 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8anqf79g8z', 'Monster hunter', 0.7, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2269 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'Gigabash', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 136977 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'Destroy all Monsters Melee', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3935 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'Ultraman Fighting Evolution', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 78940 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'Ultra Kaiju Monster Rancher', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 206833 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'Dawn of the Monsters', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 120562 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'King of the Monsters', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6800 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8dg4z8so75', 'Primal Rage', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4271 AND p."reddit_post_id" = '1y64d6k'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8e6bl5f17o', 'Serial Experiments Lain ps1', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 76448 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8eqxae104g', 'The Enigma Machine', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 112483 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8eqxae104g', 'Mothered', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 192700 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8eqxae104g', 'Echostasis', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 155512 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8et9wzfoir', 'Yume Nikki', 0.95, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 18689 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jomn9rp41', 'Yume 2kki', 0.8, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 80668 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8k22hezco5', 'The Looking Glass', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 166569 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8k22hezco5', 'Dreaming Mary', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 58386 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8etcq82j1g', 'Disillusion', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 148887 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8etcq82j1g', 'Disillusion ST', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 276494 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ewlnj7ppc', 'Needy streamer overload', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 146564 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ggi28jqhv', 'baroque for ps2', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 147807 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8giidpyuow', 'Hylics', 0.9, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11599 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gr28hgkio', 'Mama’s Sleeping Angels', 0.8, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 321991 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8iq4vzxiw0', 'Ib', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 50467 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8s56jlok4g', 'Paradise Killer', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 127816 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8x7tvhhdr5', 'AI the Somnium Files', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 104971 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8zldussxk1', 'Fatom betula', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 133175 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8zm4dmhntu', 'Yomawari', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11589 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8zmono2bxh', 'Ena dream bbq', 0.85, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 172496 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t90ww1rw4bk', 'Cruelty squad', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 142076 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t92z89stazm', 'Deadeye deepfake simulacrum', 0.85, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 156161 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t935x7h8fdw', 'Yuppie Psycho', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26565 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t95rxfzbba9', 'Lobotomy Corporation', 0.9, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 30002 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t95rxfzbba9', 'library of ruina', 0.9, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 131760 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t95vfm2oick', 'Catherine Full Body', 0.95, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 78497 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9jhaq32wo1', 'Ad Nauseam - The Wrong Side', 0.8, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 304201 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9qhhiwlsrl', 'IDET', 0.75, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 324299 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19ta0basg5rz5', 'Endacopia', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 225604 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19ta0basg5rz5', 'Milk outside a bag of milk outside a bag of milk', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 159720 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19ta0basg5rz5', 'Mouthwashing', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 264410 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19ta0basg5rz5', 'Inscryption', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 139090 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19ta0basg5rz5', 'oneshot', 0.85, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 23181 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19ta18r2juaqo', 'Hylics 2', 0.9, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 98469 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ewod9qorm', 'you and me and her', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 133256 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ewod9qorm', 'NOexistenceN of you and me', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 325916 AND p."reddit_post_id" = '1y69f49'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gbcaymmpv', 'MechWarrior 5 Mercenaries', 0.95, 0, '2026-11-27 20:45:57', 35
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26227 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gbn0kgccj', 'Metal Gear Solid V: The Phantom Pain', 0.95, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h5hmd5d34', 'Jagged Alliance 3', 0.95, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 72767 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ge1imdax1', 'Project Wingman', 0.95, 0, '2026-11-27 20:45:57', 45
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 56859 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8geqh5leo1', 'WarDogs', 0.6, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 388285 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gez30hytg', 'Menace', 0.85, 0, '2026-11-27 20:45:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8064 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gj1q6wj2d', 'Army of Two', 0.95, 0, '2026-11-27 20:45:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 996 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gs1rp7gxw', 'Armored Core 6', 0.95, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 228542 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gnm68r91e', 'Mercenaries......', 0.95, 0, '2026-11-27 20:45:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2683 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h22z8vcsi', 'playground of destruction (hell yeah)', 0.95, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2683 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8grrjx5o5g', 'Quasimorph.', 0.9, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 216947 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8goz15raf4', 'Star Wars Zero company.', 0.8, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 340113 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gt16uvfk1', 'Ghost Recon wildlands', 0.95, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11171 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h5hmd5d34', 'Fallout Tactics', 0.95, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h5hmd5d34', 'XCOM 2', 0.95, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 10919 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h5rhdpu9s', 'Mount and Blade Warband', 0.95, 0, '2026-11-27 20:45:57', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2025 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h5rhdpu9s', 'E5 Brigade', 0.6, 0, '2026-11-27 20:45:57', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 10065 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h5rhdpu9s', '7.62 High Calibre', 0.9, 0, '2026-11-27 20:45:57', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 36344 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ind59e0ed', 'Battle Brothers', 0.95, 0, '2026-11-27 20:45:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14394 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jglll911c', 'Wartales', 0.95, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 152257 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ssejjsnsz', 'Mount and Blade Bannerlord', 0.95, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9608 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gif60o1oi', 'Rimworld', 0.8, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9789 AND p."reddit_post_id" = '1y6atxv'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8gyafjonr6', 'Drone Sector', NULL, 0, '2026-11-27 20:45:57', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 329148 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h0dho3fib', 'Cleared hot', NULL, 0, '2026-11-27 20:45:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 189246 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8hjk68d5j9', 'Wings of Prey', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 20973 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h6afhqfd0', 'Carrier Command 2', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 151902 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8h71i0mbt0', 'Arma 3 is highly moddable', NULL, 0, '2026-11-27 20:45:57', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1881 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8higq9u3b4', 'Nuclear Option', NULL, 0, '2026-11-27 20:45:57', 108
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 226030 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8hlyulivk0', 'Ace Combat : Assault Horizon', NULL, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 531 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8hsyby9e0y', 'Comanche 4 from 2001', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4203 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8itqdqx9oh', 'VtolVr is a shout', NULL, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 47128 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ixitvhyrm', 'G-Rebels is fun', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 319482 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jeal9guv8', 'Project Wingman', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 56859 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8iqac4p5qd', 'Ghost Recon Wildlands actually has great chopper controls', NULL, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11171 AND p."reddit_post_id" = '1y6b57q'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jsgqgoair', 'Detroit: Become Human', NULL, 0, '2026-11-27 20:45:57', 48
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14362 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jsi2ahav5', 'Ready or not?', NULL, 0, '2026-11-27 20:45:57', 84
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 28489 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jsno90rb6', 'Cyberpunk fits', NULL, 0, '2026-11-27 20:45:57', 143
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1877 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jsvujb3uq', 'The division 1 and 2', NULL, 0, '2026-11-27 20:45:57', 30
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 217209 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jsvujb3uq', 'The division 1 and 2', NULL, 0, '2026-11-27 20:45:57', 30
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 90099 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8jugtcfzut', 'Frontline Fuels of War', NULL, 0, '2026-11-27 20:45:57', 16
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6997 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8k3kxms56q', 'Colony Ship', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 129128 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8k4yo2r1og', 'Far Cry 5', NULL, 0, '2026-11-27 20:45:57', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 28552 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kc604quyo', 'Ghost Recon: Wildlands', NULL, 0, '2026-11-27 20:45:57', 20
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11171 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kfolwh45g', 'Last of Us', NULL, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1009 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kkvq95a2q', 'Borderlands and Borderlands 2', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 498 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kkvq95a2q', 'Borderlands and Borderlands 2', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1011 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8koyyg732d', 'Norco is pretty close', NULL, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 129097 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'project zomboid', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3189 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'highfleet', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 157439 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'hammerfight', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9666 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'into the dead our darkest days', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 230366 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'dark future blood red states', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 35251 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'death skid marks', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17897 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'airships conquer the skies', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 35934 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'barotrauma', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 27344 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'Rome 2 total war', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2359 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'total war pharaoh', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 250531 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'mewgenics', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8042 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'xenonauts 1 and 2', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8508 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'xenonauts 1 and 2', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19408 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'assassin''s Creed unity', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 5606 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'armored core rubicon', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 228542 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'brigador and brigador killers', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 13361 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'brigador and brigador killers', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 119625 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'dark wood and metro last light', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 17032 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'dark wood and metro last light', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 539 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'black powder red earth', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 92764 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kqt6j19vm', 'this war of mine', NULL, 0, '2026-11-27 20:45:57', 24
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 7706 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kreqnzhoh', 'easy red 2', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 166920 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mfz4grbk4', 'you might like Operator', NULL, 0, '2026-11-27 20:45:57', 7
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 250827 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8lq0f3l3cz', 'GTA 6', NULL, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 52189 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8rwe1dty68', 'GTA IV would be more accurate', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 731 AND p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8l05gjomzk', 'Alpha Protocol', NULL, 0, '2026-11-27 20:45:57', 8
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2539 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8l765rvy3n', 'Deus Ex could fit this trope', NULL, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 41 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8l7229mt0i', 'I suggest Human Revolution', NULL, 0, '2026-11-27 20:45:57', 19
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 43 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nmtee2rfm', 'the sequel Mankind Divided', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9498 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mdseuy0kg', 'Nobody wants to die', NULL, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 290911 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8miidbzdcy', 'Timesplitters', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2142 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nmtee2rfm', 'Cloudpunk might also be worth a look', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 111837 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8rj5l6t5yc', 'Perfect Dark', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1463 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8wpua353s2', 'The first Control game is exactly like this', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 103329 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8wpua353s2', 'Watchdogs is another good one', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1121 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9136sob3ac', 'Invisible, Inc. might fit your criteria', NULL, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 6044 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t99m7is8e3m', 'Tom Clancy''s Splinter Cell: Blacklist', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1305 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9er7nfouw5', 'Syphon filter may fit the bill', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 4115 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t99m7is8e3m', 'Metal Gear Solid V: Phantom Pain', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1985 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8kzc9c5ye9', '007 first light potentially fits', NULL, 0, '2026-11-27 20:45:57', 14
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 141114 AND p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8lulo1iqwy', 'Battle Brothers', NULL, 0, '2026-11-27 20:45:57', 25
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14394 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8lze84i479', 'Wartales', NULL, 0, '2026-11-27 20:45:57', 17
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 152257 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t94t7dvlzgk', 'Warband', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2025 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8lxuuyivgg', 'Thief', NULL, 0, '2026-11-27 20:45:57', 39
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mhoj0wn9e', 'Original Mount and Blade', NULL, 0, '2026-11-27 20:45:57', 28
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2021 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mhoj0wn9e', 'Stoneshard', NULL, 0, '2026-11-27 20:45:57', 28
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 28649 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8o78er8dl0', 'Mordheim: City of the Damned', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 8209 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8yk13corlw', 'crusader kings 3', NULL, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 124954 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t90jvp20a81', 'Bannerlord', NULL, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9608 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t977f0vb7i9', 'Morrowind', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 56 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m709oq283', 'Cyberpunk', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1877 AND p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8lyfmrduio', 'Star Trek: Bridge Commander', NULL, 0, '2026-11-27 20:45:57', 34
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9571 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8oulthfuth', 'Empty Epsilon', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 125379 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m04igaklh', 'No Man''s Sky', NULL, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3225 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m10hc9dxc', 'Home world 1', NULL, 0, '2026-11-27 20:45:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 749 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m10hc9dxc', 'home world deserts of kharak', NULL, 0, '2026-11-27 20:45:57', 13
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 15444 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m12lao8g3', 'Sea Power: NCMA', NULL, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 217518 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m4tl34ipw', 'Star Citizen', NULL, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1595 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m53j82fgh', 'Pulsar: Lost Colony', NULL, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 16687 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m55qutwar', 'X4: Foundations', NULL, 0, '2026-11-27 20:45:57', 82
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 55123 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8m9vjbv16q', 'Halo Wars', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 988 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ma70jkceb', 'Elite Dangerous', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2955 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mewrbeytc', 'I-War', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 40820 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8w7anf5dj7', 'Star Trek: Bridge Crew', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 19519 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mj1am1uio', 'Iron Nest', NULL, 0, '2026-11-27 20:45:57', 41
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 377917 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mkr0uyuv7', 'Silica', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 247621 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mntegoyx1', 'From the depths', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 9632 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mohxe1ww0', 'uboat', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 32283 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mzqao23lu', 'Starfield with mods', NULL, 0, '2026-11-27 20:45:57', -1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 96437 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8n20hv0og4', 'Radio Commander Vietnam', NULL, 0, '2026-11-27 20:45:57', 26
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 107875 AND p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mccyohiit', 'Sly Cooper, namely the 2nd and 3rd games', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1799 AND p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mccyohiit', 'Sly Cooper, namely the 2nd and 3rd games', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1800 AND p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mcxd4mqki', 'Gtav multiplayer', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 1020 AND p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8mcxd4mqki', 'Payday 2', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2058 AND p."reddit_post_id" = '1y6dkqa'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nk694kc01', 'Dune', NULL, 0, '2026-11-27 20:45:57', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 85 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nk694kc01', 'Dune II', NULL, 0, '2026-11-27 20:45:57', 11
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 86 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8np8knieo3', 'Destroy All Humans!', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2651 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nrwct3g78', 'No Man''s Sky', NULL, 0, '2026-11-27 20:45:57', 6
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 3225 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ntqvmzwld', 'Fallout', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 13 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ntqvmzwld', 'Stubbs the zombie', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 79 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8nzag5y7yc', 'The Invincible', NULL, 0, '2026-11-27 20:45:57', 27
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 138906 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8obezym20w', 'Outer Wilds', NULL, 0, '2026-11-27 20:45:57', 5
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11737 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8o4rszn64j', 'The Outer Worlds', NULL, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 113114 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8o6utmd4g0', 'Free Stars: Ur Quan Masters', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 46575 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8obnvpd5fk', 'System Shock', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 23 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8ok69h0f5w', 'timesplitters games', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 2142 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t96c4g8ew1s', 'Retrospace', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 231488 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8p2t5ohl8g', 'Fallout New Vegas', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 16 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8p7e3051a8', 'The Dig', NULL, 0, '2026-11-27 20:45:57', 4
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 207 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8pxl2i6z7l', 'Starfield', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 96437 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8qms9zcsed', 'Bears in Space', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 158064 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8udj9o9lmp', 'Journey to the Savage Planet', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 113108 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8udj9o9lmp', '60 Parsecs!', NULL, 0, '2026-11-27 20:45:57', 2
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 11710 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8v5cqn8fya', 'Atomic Heart', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 76747 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8v5cqn8fya', 'Atomfall', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 305159 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8v5cqn8fya', 'Headlander', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 15857 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8xoxtjltxg', 'Surviving Mars', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 28574 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t960b5kj6wx', 'The Bureau: XCOM Declassified', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 244 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t960b5kj6wx', 'I am not a monster', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 116567 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t96o3x09k1t', 'Outcast series', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 827 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9cruf4y8xx', 'OG XCOM', NULL, 0, '2026-11-27 20:45:57', 0
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 24 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9hv1tn4lol', 'TerraNova Strike Force Centauri', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 70 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t9mfy2cencz', 'The Deadly Tower of Monsters', NULL, 0, '2026-11-27 20:45:57', 1
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 14740 AND p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8qhd0iuvs3', 'WARLANDER', NULL, 0, '2026-11-27 20:45:57', 9
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 215835 AND p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8wkku5dpb6', 'Enlisted', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 26431 AND p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
INSERT INTO "recommendation_evidence" ("recommendation_id", "imported_vibe_post_id", "evidence_comment_id", "extracted_text", "confidence", "is_primary", "created_at", "evidence_comment_score")
SELECT r.id, p.id, '19t8wh0d0w0h1', 'Highguard', NULL, 0, '2026-11-27 20:45:57', 3
FROM recommendations r, imported_vibe_posts p
WHERE r.media_type = 'game' AND r.igdb_id = 381250 AND p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(recommendation_id, imported_vibe_post_id, evidence_comment_id) DO UPDATE SET "extracted_text"=excluded."extracted_text", "confidence"=excluded."confidence", "is_primary"=excluded."is_primary", "evidence_comment_score"=excluded."evidence_comment_score";
