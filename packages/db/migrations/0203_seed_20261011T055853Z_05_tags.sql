-- 0203_seed_20261011T055853Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-11T05:59:18.770116+00:00
-- Run started: 2026-10-11T05:58:53.633384+00:00
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
SELECT p.id, 'inquisitive', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seeking', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vague', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28ojl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x29qcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cheesy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x29qcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'over-the-top', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x29qcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult classic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x29qcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cringe', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x29qcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2be3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2be3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sorrowful', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2be3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'somber', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2be3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neutral', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2djms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deleted', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2djms'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futuristic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2g8xs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'speculative', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2g8xs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2g8xs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2h3wb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colorful', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2h3wb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2h3wb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2i711'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2i711'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poignant', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2i711'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beautiful', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2i711'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'youthful', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2in7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'party', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2in7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'energetic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2in7s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'social anxiety', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'loneliness', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unrequited love', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2jn5a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2jn5a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2jn5a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'techno-thriller', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2kovz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2kovz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'speculative', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2kovz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ai', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2kovz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vampires', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban fantasy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adrenaline', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-energy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fast-paced', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2m1o9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2m1o9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2m1o9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2m1o9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2m1o9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nby4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nmun'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tearjerker', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nmun'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family-friendly', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nmun'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nmun'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poignant', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2nmun'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'inquisitive', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pk7e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'general', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pk7e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pk7e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic horror', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foggy', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'somber', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woods', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2qsy1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploratory', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2qsy1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obscure', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2qsy1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reverence', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2sv34'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'admiring', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2sv34'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'masterpiece', 'extraction', '2026-10-11 05:59:18'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2sv34'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
