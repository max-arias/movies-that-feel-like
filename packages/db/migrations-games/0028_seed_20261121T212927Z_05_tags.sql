-- 0028_seed_20261121T212927Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T21:29:28.117207+00:00
-- Run started: 2026-11-21T21:29:27.796707+00:00
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
SELECT p.id, 'turn-based', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melee', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'realistic', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1i8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fleet combat', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1i8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'solo', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1i8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'capital ships', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1i8h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi horror', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'derelict', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moral weight', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy3klb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tension', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy3klb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy3klb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical shooter', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy3klb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'consequence', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy3klb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frost magic', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy4n1s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'power fantasy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy4n1s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'elemental combat', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy4n1s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anime-inspired', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy4n1s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vehicular combat', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heavy metal', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'MOBA', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dead game', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high-octane', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '16-bit', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy53vf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy53vf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'secret-hunting', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy53vf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy53vf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy53vf'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aerial combat', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dead game', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sky pirates', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'purge', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anarchy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychopaths', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'multiplayer', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy6o99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stealth', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy6o99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hunter', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy6o99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disguise', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy6o99'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wizard', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'library', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alchemy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naval', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8wed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'steam', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8wed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'simulation', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8wed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreadnought', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8wed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sword-and-sorcery', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brutal', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'barbarian', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'buddy-cop', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'co-op', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'star-wars', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hiking', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaf7l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-world', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaf7l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaf7l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scavenging', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'improvised', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'puzzle', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xycby7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xycby7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xycby7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xycby7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gun-fu', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xych8q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xych8q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'martial arts', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xych8q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xych8q'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'superweapons', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vehicles', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'overkill', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vh52'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventuring', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vh52'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'skill trees', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vh52'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dungeons', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vh52'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0wncu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0wncu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'character customization', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0wncu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snow', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y14eeu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wilderness', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y14eeu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y14eeu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y14eeu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y14eeu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'zombie', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15kis'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pandemic', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15kis'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15kis'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tension', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15kis'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'environmental storytelling', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15kis'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival horror', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d6tg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ordinary protagonist', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d6tg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d6tg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unscathed', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d6tg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1elqy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fixer', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1elqy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mercenary', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1elqy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deal-making', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1elqy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1enb1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1enb1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1enb1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster', 'extraction', '2026-11-21 21:29:28'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1enb1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
