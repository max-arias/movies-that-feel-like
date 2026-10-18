-- 0263_seed_20261018T124441Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-18T12:45:15.275520+00:00
-- Run started: 2026-10-18T12:44:41.796623+00:00
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
SELECT p.id, 'teleportation', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ifr9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ifr9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ifr9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'superpowers', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ifr9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feel-good', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ikwb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ikwb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'countryside', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ikwb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gentle', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ikwb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wholesome', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ikwb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'found footage', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x222qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x222qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'demonic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x222qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x222qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x222qp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'loneliness', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7wade'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outsider', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7wade'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7wade'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'misunderstood', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7wade'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7wade'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cryptid', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bigfoot', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'forest', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folklore', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retrofuturism', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atomic age', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '50s suburbia', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'general', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x829j1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '80s corporate', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x83ew4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'workplace comedy', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x83ew4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambition', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x83ew4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'american neorealism', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychosis', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual vibe', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85c6k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85c6k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'counterculture', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85clb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85clb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reggae', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85clb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'satirical', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85clb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stoner', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85clb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x869hr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x869hr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'theatrical', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x869hr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8bzhn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'investigation', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8bzhn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8bzhn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspense', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8bzhn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8bzhn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8do2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'orientalist', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8do2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8do2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8do2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8do2q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'biopunk', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dim', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8evzf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8evzf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8evzf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fjf4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fjf4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fjf4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fjf4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fktp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'holiday', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fktp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family-tradition', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fktp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'casual', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fwxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'social', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fwxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decision-making', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fwxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gv4d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gv4d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibe', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gv4d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gw14'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gw14'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential dread', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gw14'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gw14'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gw14'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grim', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sinister', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tyrannical', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'floral', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'idyllic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'raw', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ix07'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'harrowing', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ix07'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heavy', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ix07'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ix07'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ix07'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic comedy', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wholesome', 'extraction', '2026-10-18 12:45:15'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
