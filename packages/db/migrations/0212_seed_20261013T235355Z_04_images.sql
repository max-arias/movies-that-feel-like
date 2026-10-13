-- 0212_seed_20261013T235355Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-13T23:54:24.365423+00:00
-- Run started: 2026-10-13T23:53:55.347463+00:00
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
-- Chunk: 04_images (4/5)
-- Tables: imported_post_images.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iwnehb8u40vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3wy4i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/me3awsqf22vh1.jpg?width=736&format=pjpg&auto=webp&s=fd8d6494ab130a10eb112c09aff0c153a8677640', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tdv3ejyf22vh1.jpg?width=433&format=pjpg&auto=webp&s=2fea6cd5475a95d74f273c257e75526c9b5a3798', NULL, NULL, NULL, 1, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nb6giv0g22vh1.jpg?width=433&format=pjpg&auto=webp&s=8e4b3169dcec0916cd3f8f615a1af54d345a6ac0', NULL, NULL, NULL, 2, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zmgcxx4g22vh1.jpg?width=736&format=pjpg&auto=webp&s=6aa6624c9828d9b220f8da2d120a909231c349bc', NULL, NULL, NULL, 3, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t7ijkvag22vh1.jpg?width=736&format=pjpg&auto=webp&s=5082fe62a68c935033b6a99a8b1d57c83ce71dc6', NULL, NULL, NULL, 4, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/m9wsnodg22vh1.jpg?width=736&format=pjpg&auto=webp&s=c49dd3d5197e7e417d89c1c0cce66cf140074a84', NULL, NULL, NULL, 5, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/obgc8tjg22vh1.jpg?width=702&format=pjpg&auto=webp&s=52d2c6b019ec3ee1a658fd30331fcb90f285f53e', NULL, NULL, NULL, 6, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x450mc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mubyah1f32vh1.jpg?width=736&format=pjpg&auto=webp&s=878343d8a227d1d21b1523d03a47e337519f5703', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ff87cl6f32vh1.jpg?width=585&format=pjpg&auto=webp&s=b2ae66ac7d8954970ca6810af01ab18816586f09', NULL, NULL, NULL, 1, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0k8dmfbf32vh1.jpg?width=735&format=pjpg&auto=webp&s=68d15303322e4e8b00ba6bd9b7f7723a2bd75f19', NULL, NULL, NULL, 2, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sau8rnef32vh1.jpg?width=640&format=pjpg&auto=webp&s=789058425840611dbb4eccab9df8232b82e7a3e8', NULL, NULL, NULL, 3, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vtx17mjf32vh1.jpg?width=736&format=pjpg&auto=webp&s=c388a622998e545f1e0621b8d5a3f5dcee6fd4f9', NULL, NULL, NULL, 4, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ndn4skmf32vh1.jpg?width=735&format=pjpg&auto=webp&s=161ff30ace2de56c6230c75c664a2e2c42a97253', NULL, NULL, NULL, 5, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x455rp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8uuhuexo32vh1.jpg?width=1206&format=pjpg&auto=webp&s=3f19c87e527391cf8e789458f5bb2bb19b56c3c5', 'https://preview.redd.it/8uuhuexo32vh1.jpg?width=960&crop=smart&auto=webp&s=0679b94ec297a0d74b6226c993edc12548155e68', 960, 1717, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gt9vnexo32vh1.jpg?width=1206&format=pjpg&auto=webp&s=ef4a1f83b0aa7e846e6dc1e1c23ea1c5c4e3e9d1', 'https://preview.redd.it/gt9vnexo32vh1.jpg?width=960&crop=smart&auto=webp&s=02224d666c61ba51e1977356ed1457de284698e4', 960, 1473, 1, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4575p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vs5e4aztu2vh1.jpg?width=500&format=pjpg&auto=webp&s=9390b9adce5b1fe6982ca0ac64ec645ba0b65fe4', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wcv0c9ztu2vh1.jpg?width=792&format=pjpg&auto=webp&s=39791aab6a167ee7821c3c446e3693a59019ae30', NULL, NULL, NULL, 1, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ev1t38ztu2vh1.jpg?width=738&format=pjpg&auto=webp&s=e5d391e939b8ce87a227476bb647f79b048241db', NULL, NULL, NULL, 2, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rs0sb8ztu2vh1.jpg?width=280&format=pjpg&auto=webp&s=3675e707c9b9569d063ff4a57cd422ee6d9b744f', NULL, NULL, NULL, 3, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49bwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/28l9fmmvw2vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49nl0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vz6wwgtit9lh1.png', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x49skw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tfpogv2qv3vh1.jpg?width=1400&format=pjpg&auto=webp&s=249cb3906673353205f74fd4fbce1379ee8bef36', 'https://preview.redd.it/tfpogv2qv3vh1.jpg?width=960&crop=smart&auto=webp&s=d8568b56d7c823e75c218a4bec05a36ae9e6ceda', 960, 720, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ydjgiv2qv3vh1.jpg?width=827&format=pjpg&auto=webp&s=debe9895fc40a9be4cad3f996035cfa2eac3fa36', NULL, NULL, NULL, 1, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0sd9203qv3vh1.jpg?width=515&format=pjpg&auto=webp&s=01afb675b83f462d618579c7e03ae34cceb326a7', NULL, NULL, NULL, 2, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6kp5kz2qv3vh1.jpg?width=640&format=pjpg&auto=webp&s=25432a8f16c4e64fabc31cfcc339e01c5abff3b3', NULL, NULL, NULL, 3, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8uujlz2qv3vh1.png?width=489&format=png&auto=webp&s=583cbd0789eb59f56eceefb5950053b14337ce75', NULL, NULL, NULL, 4, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/louy203qv3vh1.jpg?width=482&format=pjpg&auto=webp&s=1640ce40ffda0c5acee22435a856411baa92639f', NULL, NULL, NULL, 5, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4ewbs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9egah1yv04vh1.jpg?width=904&format=pjpg&auto=webp&s=83475ad6fde029bce7574843c08d56a0703716a1', NULL, NULL, NULL, 0, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t76lv1yv04vh1.jpg?width=1200&format=pjpg&auto=webp&s=b20e122515a59813fab07e996de851fb9f83a1bd', 'https://preview.redd.it/t76lv1yv04vh1.jpg?width=960&crop=smart&auto=webp&s=e5873e2b27879b47e313aba03c44b76bf4783e94', 960, 683, 1, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zcmtw1yv04vh1.jpg?width=660&format=pjpg&auto=webp&s=139ddf786c6e57a3dc33a60c9f9483dfa3a45868', NULL, NULL, NULL, 2, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0ijn62yv04vh1.jpg?width=735&format=pjpg&auto=webp&s=a0b784a62bc9d0de06f2bc954bd1af8ef05532f0', NULL, NULL, NULL, 3, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mz1gk2yv04vh1.jpg?width=1142&format=pjpg&auto=webp&s=135f210b278a9dea8c7daafed0d65079f79107a0', 'https://preview.redd.it/mz1gk2yv04vh1.jpg?width=960&crop=smart&auto=webp&s=f9240d959d7fca6d1d4ef3f8d1194d59e909f8c0', 960, 1008, 4, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2f0gg1yv04vh1.jpg?width=750&format=pjpg&auto=webp&s=e43204d8e1c62d26ad8a9f639b03dc993b4cdcb2', NULL, NULL, NULL, 5, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/85m1p1yv04vh1.jpg?width=1200&format=pjpg&auto=webp&s=a9cd56fe4fd7f72fcb1b1b890567a6570b6de6b5', 'https://preview.redd.it/85m1p1yv04vh1.jpg?width=960&crop=smart&auto=webp&s=79e907255f9fa0f401fc285c2e72e749578ce65a', 960, 960, 6, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mzw8q1yv04vh1.jpg?width=640&format=pjpg&auto=webp&s=e5dc153a8c747a97c504a673c70765b63fd4b18e', NULL, NULL, NULL, 7, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1ercr1yv04vh1.jpg?width=828&format=pjpg&auto=webp&s=7ed5b7b7fbdd8ba022661b9dc92236a7ead97c44', NULL, NULL, NULL, 8, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/d4nfy1yv04vh1.jpg?width=1200&format=pjpg&auto=webp&s=4d8815062c69986e4185a9d8d7924ba4131b132b', 'https://preview.redd.it/d4nfy1yv04vh1.jpg?width=960&crop=smart&auto=webp&s=0137f53d0ab8dc8ef996504d107258d779dffd64', 960, 1220, 9, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/uxku42yv04vh1.jpg?width=1200&format=pjpg&auto=webp&s=64b14d070e7ca44cc88f9995348a1adc103cb094', 'https://preview.redd.it/uxku42yv04vh1.jpg?width=960&crop=smart&auto=webp&s=682dc424e76ff77831d63ea73a839093582c2c88', 960, 1280, 10, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t0gyq1yv04vh1.jpg?width=973&format=pjpg&auto=webp&s=1a15dfdee75fcafe5848e64d1442b867383daa1e', 'https://preview.redd.it/t0gyq1yv04vh1.jpg?width=960&crop=smart&auto=webp&s=4207950fb0ca2dee66cb473517efbc07b2232613', 960, 1037, 11, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/w8co22yv04vh1.jpg?width=1199&format=pjpg&auto=webp&s=27e31c58df0e44493108d1adc0f7a8b1b3e0e3c6', 'https://preview.redd.it/w8co22yv04vh1.jpg?width=960&crop=smart&auto=webp&s=1d6547493cc55224013df0b8612516632fb4e799', 960, 1068, 12, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vtdgu1yv04vh1.jpg?width=400&format=pjpg&auto=webp&s=07359f178876d3db25adb14439130a57c42bffbf', NULL, NULL, NULL, 13, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/73iju2yv04vh1.jpg?width=1200&format=pjpg&auto=webp&s=06785c0e8453c9c0e82dbca90d5ceb9e2a443088', 'https://preview.redd.it/73iju2yv04vh1.jpg?width=960&crop=smart&auto=webp&s=7267a9d1105923cad7cd80dd1f8f0f4c9a8fb238', 960, 1236, 14, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/i4jrb2yv04vh1.jpg?width=1199&format=pjpg&auto=webp&s=2b8e0fc43ca22f79bc14f807d2e01329b2a27880', 'https://preview.redd.it/i4jrb2yv04vh1.jpg?width=960&crop=smart&auto=webp&s=f5092f239e593afc8e646607afd328196ef59170', 960, 927, 15, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mwokc2yv04vh1.jpg?width=409&format=pjpg&auto=webp&s=0fe9aaff957f7b03d630b7b72fffb22fb3e60fba', NULL, NULL, NULL, 16, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l04913yv04vh1.jpg?width=540&format=pjpg&auto=webp&s=711ccc91591c789997ebb78d1d289696db8eed38', NULL, NULL, NULL, 17, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dkdee2yv04vh1.jpg?width=1080&format=pjpg&auto=webp&s=91497cb0d1ae314ec61bb7698fca3cb55bdcaac4', 'https://preview.redd.it/dkdee2yv04vh1.jpg?width=960&crop=smart&auto=webp&s=e20a9880707f38d44c6adc6cf9d8141c5b2d6f92', 960, 956, 18, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7a2t92yv04vh1.jpg?width=735&format=pjpg&auto=webp&s=5e935ad3888959543f88c68781004f02847bebdd', NULL, NULL, NULL, 19, '2026-10-13 23:54:24', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fh7i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
