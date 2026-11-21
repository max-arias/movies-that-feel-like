-- 0419_seed_20261121T032831Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T03:29:05.705204+00:00
-- Run started: 2026-11-21T03:28:31.132963+00:00
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
SELECT p.id, 'dark fairytale', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zpw7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Coraline-like', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zpw7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zpw7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'international animation', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zpw7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zr66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zr66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zr66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sinister', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zr66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Central/Eastern European', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zr66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fan-casting', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10du0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'James Bond', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10du0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'speculative', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10du0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desert', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-baked', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vast', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spiritual', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y11meb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y11meb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hot', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13wht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13wht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unclear', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13wht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13yci'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13yci'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13yci'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightlife', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'road-trip', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16dvo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contextless', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16dvo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decisive', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1a03p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contextless', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1a03p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inaccessible', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ajnd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'data-focused', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ajnd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'conflict-driven', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ensemble', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beach', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'childhood', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vague', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beach', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'childhood', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ethereal', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dust bowl', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1hfvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hardship', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1hfvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Americana', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1hfvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Depression-era', 'extraction', '2026-11-21 03:29:05'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1hfvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
