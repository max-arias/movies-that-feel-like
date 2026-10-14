-- 0222_seed_20261014T233039Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-14T23:31:09.774649+00:00
-- Run started: 2026-10-14T23:30:39.869607+00:00
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
SELECT p.id, 'https://preview.redd.it/xyu4odi8jxuh1.jpg?width=1320&format=pjpg&auto=webp&s=99cd0b9ef8186c4dd4236cba55602098bff40103', 'https://preview.redd.it/xyu4odi8jxuh1.jpg?width=960&crop=smart&auto=webp&s=084429bc2fa8d4c95a9723a90176b1a221ec1eea', 960, 539, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hrjgxfi8jxuh1.jpg?width=1170&format=pjpg&auto=webp&s=4d7112588d022d085ad78192271f0a95270a39c0', 'https://preview.redd.it/hrjgxfi8jxuh1.jpg?width=960&crop=smart&auto=webp&s=06e37c337a2034943bd253cfbccef28c6f22f808', 960, 793, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qk7ieei8jxuh1.jpg?width=1033&format=pjpg&auto=webp&s=94d46997342a5f5a0efed2709a395bfaf1aa9cc1', 'https://preview.redd.it/qk7ieei8jxuh1.jpg?width=960&crop=smart&auto=webp&s=31352fc9a4ac63e31dbef57705e681435aadd2e8', 960, 530, 2, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/d8fcfei8jxuh1.jpg?width=1282&format=pjpg&auto=webp&s=6e6a00fd91ee6f1302f2c36a9d9e20f95dbbf79b', 'https://preview.redd.it/d8fcfei8jxuh1.jpg?width=960&crop=smart&auto=webp&s=14e7fb9b01bbcdba2cea5db6b43e78ce48bedc4a', 960, 536, 3, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zqti4fi8jxuh1.jpg?width=1080&format=pjpg&auto=webp&s=ce23effa2fdd97ad00667bebd22330111a7c16d9', 'https://preview.redd.it/zqti4fi8jxuh1.jpg?width=960&crop=smart&auto=webp&s=f0ce072afd61d7a17529490d4adc2e43a10d9bf7', 960, 1224, 4, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pkmrcfi8jxuh1.jpg?width=1200&format=pjpg&auto=webp&s=b5beead5f5edf8285dbec6220abe4813daa566c9', 'https://preview.redd.it/pkmrcfi8jxuh1.jpg?width=960&crop=smart&auto=webp&s=0b4b6257cc5327d31d58b767f35a927b1c468795', 960, 540, 5, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3npfe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gv6cdnas8yuh1.jpg?width=540&format=pjpg&auto=webp&s=fdbae9d72a48906ecf181dd9980c5926db95662f', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j75r3las8yuh1.jpg?width=500&format=pjpg&auto=webp&s=1d9519d3ed6b6e45b442b77f9a47c7a4dc1ff8c6', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3qhsr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/68mw9xhahyuh1.jpg?width=736&format=pjpg&auto=webp&s=f4f8c74f9ff2bf6a6fd4d837205984f7a38611da', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gvnqnstahyuh1.jpg?width=736&format=pjpg&auto=webp&s=b6cfd48920a41a87dab4704ea0f9db00ca253117', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/leajzy4bhyuh1.jpg?width=736&format=pjpg&auto=webp&s=8a839090b9a909d2c908326657040e7fe3d656db', NULL, NULL, NULL, 2, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j9zizo8bhyuh1.jpg?width=736&format=pjpg&auto=webp&s=0dd5479fb9e8076d645c8338188b9573c86d999c', NULL, NULL, NULL, 3, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/k5d7jgcbhyuh1.jpg?width=736&format=pjpg&auto=webp&s=f4f2486d725c0070fb88f3703089a591fa823076', NULL, NULL, NULL, 4, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3re94'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/njnx6zlj5zuh1.jpeg', 'https://preview.redd.it/njnx6zlj5zuh1.jpeg?width=960&crop=smart&auto=webp&s=7a7973bbd4912859cf8359eef5a0e60adb52029a', 960, 829, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3tswq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ntd5ecb5m4vh1.jpg?width=1200&format=pjpg&auto=webp&s=22872aa8a99612860338c8ab254762664b69cf70', 'https://preview.redd.it/ntd5ecb5m4vh1.jpg?width=960&crop=smart&auto=webp&s=026f8e25eb69903d49b5b8a36aaa504abf9745fe', 960, 551, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/oyba6bb5m4vh1.jpg?width=500&format=pjpg&auto=webp&s=926650826abd1d193ad6ae882f8f13f630d8b6ee', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2f1qnbb5m4vh1.jpg?width=750&format=pjpg&auto=webp&s=4c22f572cba176199ca01c215e5729e107be1c8b', NULL, NULL, NULL, 2, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hloltbb5m4vh1.jpg?width=1200&format=pjpg&auto=webp&s=bb102dff642e3e002fc67c4294c26df3f8d47376', 'https://preview.redd.it/hloltbb5m4vh1.jpg?width=960&crop=smart&auto=webp&s=88bf4a68b3cdf3f9d500d07d0e7f44f9b6a7b44b', 960, 1383, 3, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/82fkpcb5m4vh1.jpg?width=828&format=pjpg&auto=webp&s=709e18ad2bc82460953ae4669bd1e5f23687b7a3', NULL, NULL, NULL, 4, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ymxm6pb5m4vh1.jpg?width=735&format=pjpg&auto=webp&s=0913a6cc29d6299a98e9cfb6776ea14780c97f62', NULL, NULL, NULL, 5, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dhcmzjb5m4vh1.jpg?width=460&format=pjpg&auto=webp&s=a68f2f08b0dd2a6e015a6a78ba7cb97ca81539b5', NULL, NULL, NULL, 6, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wty1mob5m4vh1.jpg?width=640&format=pjpg&auto=webp&s=50e408a0b33716c7f04b3288f7742d12ec41de99', NULL, NULL, NULL, 7, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2ydumbb5m4vh1.jpg?width=1200&format=pjpg&auto=webp&s=194e65260348e85759cace47ecb0ff4dcc615a21', 'https://preview.redd.it/2ydumbb5m4vh1.jpg?width=960&crop=smart&auto=webp&s=14eac2780dd7728653da0429c86cb549ae40802f', 960, 960, 8, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3ml'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3b8t5p66m4vh1.jpg?width=1021&format=pjpg&auto=webp&s=369c756635bd033640a4716b507567ccde7996f1', 'https://preview.redd.it/3b8t5p66m4vh1.jpg?width=960&crop=smart&auto=webp&s=53c886ea08a38e66ed680625db42d891dd686d64', 960, 1146, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/glzwnn96m4vh1.jpg?width=1079&format=pjpg&auto=webp&s=1126eb96f7bee317f53b4126d7b69691e508a0f8', 'https://preview.redd.it/glzwnn96m4vh1.jpg?width=960&crop=smart&auto=webp&s=5438519919ed2bb391b0309c496019d697c2f455', 960, 1089, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u2s2u6b6m4vh1.jpg?width=900&format=pjpg&auto=webp&s=c172eeb05a955a09686934ac42614b5c5f5cc4db', NULL, NULL, NULL, 2, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/b3wbgmc6m4vh1.jpg?width=1019&format=pjpg&auto=webp&s=dd1883201425af0c641e95c7a6669ff2f06348e7', 'https://preview.redd.it/b3wbgmc6m4vh1.jpg?width=960&crop=smart&auto=webp&s=5d6883eb5942d222137fd3b145440531eb4f5eb7', 960, 1270, 3, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3dnxh1f6m4vh1.jpg?width=706&format=pjpg&auto=webp&s=4ebf5eee975cbfde1c6986e7cd8b012a654e1a2d', NULL, NULL, NULL, 4, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5cfb0tg6m4vh1.jpg?width=1079&format=pjpg&auto=webp&s=310dc1e5be8f459d234ba0d766c29bf375f283b3', 'https://preview.redd.it/5cfb0tg6m4vh1.jpg?width=960&crop=smart&auto=webp&s=9f4521d211ce412b7843d454506d2d55330c94f6', 960, 980, 5, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4i3rc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qxdhkcl9arrh1.jpeg', 'https://preview.redd.it/qxdhkcl9arrh1.jpeg?width=960&crop=smart&auto=webp&s=99425602f4614b0e258ae251cfbb94a076d9c133', 960, 720, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4imrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/z0a42fff75vh1.jpg?width=455&format=pjpg&auto=webp&s=be3db407d2fd2d79801637a6bdd14226b22f4379', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/69xom9sf75vh1.png?width=188&format=png&auto=webp&s=56de62b8c92c1a4a636a2f8aa0821acb25cfc8b9', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/je2sblti75vh1.jpg?width=465&format=pjpg&auto=webp&s=2c0c5c6d189dac040e6c9a4e42497446d1556067', NULL, NULL, NULL, 2, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/b96gya0m75vh1.jpg?width=259&format=pjpg&auto=webp&s=97274354b72f32ae2336fcb41759061887a1e2f9', NULL, NULL, NULL, 3, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cj5s8fgt75vh1.jpg?width=669&format=pjpg&auto=webp&s=a67fefc2bc2a5421549f80c48600a4dbadd4bedc', NULL, NULL, NULL, 4, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lny0h5r685vh1.jpg?width=600&format=pjpg&auto=webp&s=7e15ae6ca962f3e2353efde3cce4a7a92589fb55', NULL, NULL, NULL, 5, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4knim'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sl7uraeci5vh1.jpg?width=868&format=pjpg&auto=webp&s=ea90b3d388cefea4ea2ad0a91cdbdcd0b700eca7', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/py21bblci5vh1.jpg?width=416&format=pjpg&auto=webp&s=9312c5b4158e6421c92b120281af9f1f263985dd', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4lrip'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/beqhg3iks5vh1.jpg?width=736&format=pjpg&auto=webp&s=c08094d3d8831ca98cfebefe7bc7e1efd98c9810', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1530rqkks5vh1.jpg?width=682&format=pjpg&auto=webp&s=7464c71d42beb48f530d784d84ac1635380189c5', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wph79amks5vh1.jpg?width=736&format=pjpg&auto=webp&s=849b105027762f35b3e8b8e093f8889e24f59e2d', NULL, NULL, NULL, 2, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4muvc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/GsPIACVFpmi4O1welmzMBVZMGmTK23WzjQBgGLHr0aU.jpeg?auto=webp&s=90953e886b2f4d88253b910fcbd2a0cdac2301b8', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4n6ft'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ix2ilnu7s7vh1.jpeg', 'https://preview.redd.it/ix2ilnu7s7vh1.jpeg?width=960&crop=smart&auto=webp&s=d5f976020b77521b65ff7b53fa8c1cdc3e79ef42', 960, 628, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4tcq2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7c3stwklz7vh1.jpg?width=338&format=pjpg&auto=webp&s=828a326e53683decaf92fcbe28dd8105235f9e45', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kksai7nlz7vh1.jpg?width=736&format=pjpg&auto=webp&s=286d61a074fb5b4e7bb38938a4c02eb203408542', NULL, NULL, NULL, 1, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4u3y1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gsuoq8evz8vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4yqh4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s9mbj8v179vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-14 23:31:09', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zsx8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
