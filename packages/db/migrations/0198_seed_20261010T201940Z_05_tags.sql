-- 0198_seed_20261010T201940Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-10T20:20:08.436206+00:00
-- Run started: 2026-10-10T20:19:40.422137+00:00
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
SELECT p.id, 'creepy-stop-motion', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1in26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fantasy', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1in26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1in26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'macabre', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1in26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal-horror', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1in26'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outsider-perspective', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1lsap'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'americana', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1lsap'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'satire', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1lsap'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'culture-clash', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1lsap'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic-action', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sword-and-sorcery', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky-crew', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi-fantasy', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy-fun', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'european', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'old-world', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairytale', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'talky', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pza6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neurotic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pza6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'queer-romance', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pza6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dramedy', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pza6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pza6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hypnotic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunting', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chill', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'otherworldly', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'asylum', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychiatric hospital', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mental confinement', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoia', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1t3pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1t3pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1t3pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon aesthetic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1t3pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban longing', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1t3pu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban decay', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1970s NYC', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'early 80s', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'asphalt noir', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'essential viewing', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwb9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie recommendations', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwb9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'must-watch', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwb9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'universal classics', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwb9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wholesome', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwpw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwpw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwpw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pastoral', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwpw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1uwpw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1v3o1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1v3o1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xeg3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-octane', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xeg3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fun', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xeg3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adrenaline', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xeg3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'girls-night', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xeg3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xjdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xjdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dramatic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xjdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disaster', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xjdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intimate', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1xjdm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'war', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-10-10 20:20:08'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
