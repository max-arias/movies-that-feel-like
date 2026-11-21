-- 0027_seed_20261121T212927Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T21:29:28.116698+00:00
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
-- Chunk: 04_images (4/5)
-- Tables: imported_post_images.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3t7lad2p202i1.jpeg', 'https://preview.redd.it/3t7lad2p202i1.jpeg?width=960&auto=webp&s=5f4befdcab5177f343148ae8a4b29d388be8ee3c', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxtlnr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/93kcp8jj812i1.png', 'https://preview.redd.it/93kcp8jj812i1.png?width=960&auto=webp&s=7e17cd4bc1b62f08ce809492b414d11b6c8dc771', 960, 549, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qlt7mgsk812i1.jpeg', 'https://preview.redd.it/qlt7mgsk812i1.jpeg?width=960&auto=webp&s=f750cbc8997c694a09e77a1290859ed426b7fdd0', 960, 720, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ra10w0xk812i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/37odzbdl812i1.jpeg', 'https://preview.redd.it/37odzbdl812i1.jpeg?width=960&auto=webp&s=2f9d19df7736db29f80d2d10de6bfb9a8cc15ee4', 960, 742, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ka9beeol812i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6afs48rl812i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxzx86'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n6whkzzrk12i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u7ax534sk12i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/us1ubr5sk12i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1prr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8vdvosnun12i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy25ge'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://www.gameskinny.com/wp-content/uploads/2024/03/Marvel-Strike-Force-Gameplay-Screenshot.jpg?w=1200', 'https://external-preview.redd.it/445kzNq_ElE5vEavwvSpUhP2vnewYHzvyA8__BRchuw.jpeg?width=960&auto=webp&s=001c535762d3edf708d7d234b4f8f630623f98ef', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy25zh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/ZXdxMThpbjV5MTJpMRwSJPMdPb6g0JUnZ4zUW2fQqRe5F1fmpxTGZQ-a2aKp.jpeg?format=pjpg&auto=webp&s=aa13425e6db3da59aafa1c8d4887fb750433448c', 'https://external-preview.redd.it/ZXdxMThpbjV5MTJpMRwSJPMdPb6g0JUnZ4zUW2fQqRe5F1fmpxTGZQ-a2aKp.jpeg?width=960&format=pjpg&auto=webp&s=fff81cd1bee08dbab3ea7cc5cd763c9815f5509e', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy3klb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hfhn5fp7622i1.jpeg', 'https://preview.redd.it/hfhn5fp7622i1.jpeg?width=960&auto=webp&s=cc797505ea3cc9cfb2e6eff123de4db5cd6a3e39', 960, 468, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy4n1s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y5shqz1o922i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xwjtbz4o922i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ybfev67o922i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy5306'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wl70xsiea22i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yj5xhnlea22i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7yo20unea22i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy56df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5dbibblwg22i1.jpeg', 'https://preview.redd.it/5dbibblwg22i1.jpeg?width=960&auto=webp&s=9c501c2c8bd943c97abd90507af4a9d9bfab9e90', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qvvu6idxg22i1.jpeg', 'https://preview.redd.it/qvvu6idxg22i1.jpeg?width=960&auto=webp&s=05b1fd576f60e96b0ae05a67e0ddaaff8e0c961a', 960, 641, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8ndsuyuxg22i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a66kma7yg22i1.jpeg', 'https://preview.redd.it/a66kma7yg22i1.jpeg?width=960&auto=webp&s=b1df5c1444134780dd1caf6590ff05da2126da6d', 960, 540, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9tgf2phyg22i1.png', 'https://preview.redd.it/9tgf2phyg22i1.png?width=960&auto=webp&s=d9f7c0660f8cbe8e30588a5b06f81cb9f606a59b', 960, 538, 4, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy66e4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oerverp2q22i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u9ud2bq2q22i1.jpeg', 'https://preview.redd.it/u9ud2bq2q22i1.jpeg?width=960&auto=webp&s=dccd9a8b4338bfc256cc29dfa1c0f7f0e80d85a3', 960, 1192, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mb1s79q2q22i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r0g54aq2q22i1.jpeg', 'https://preview.redd.it/r0g54aq2q22i1.jpeg?width=960&auto=webp&s=5ed9f484513fd252c2e3550a6c618d11b61403e1', 960, 1280, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy74tb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lyo5qbxz432i1.png', 'https://preview.redd.it/lyo5qbxz432i1.png?width=960&auto=webp&s=f6ee32dad0ebbe0193ecd13a8eab9f9d5b4a1a8f', 960, 498, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy8wed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7qmp7niac32i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7k66vmiac32i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/11cdt5jac32i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9i5njsiac32i1.jpeg', 'https://preview.redd.it/9i5njsiac32i1.jpeg?width=960&auto=webp&s=15de825ce1519b7b0672ff4a33cf35d6300f278c', 960, 1242, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mjsfmniac32i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy9trg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/awpgqzw5f32i1.jpeg', 'https://preview.redd.it/awpgqzw5f32i1.jpeg?width=960&auto=webp&s=80ffa2ec45c311d010226a222570172613061587', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gob2nuw5f32i1.jpeg', 'https://preview.redd.it/gob2nuw5f32i1.jpeg?width=960&auto=webp&s=db59f02704e580922911027284402b77dea4683a', 960, 626, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vwtjhtw5f32i1.jpeg', 'https://preview.redd.it/vwtjhtw5f32i1.jpeg?width=960&auto=webp&s=db85beac66c7b2a40e498f029570cb9a677df561', 960, 540, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z35gk3x5f32i1.jpeg', 'https://preview.redd.it/z35gk3x5f32i1.jpeg?width=960&auto=webp&s=8fea10c65ed63cf55d510cac2335948f3c3ac668', 960, 541, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e7ucdrw5f32i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/drfrcvw5f32i1.jpeg', 'https://preview.redd.it/drfrcvw5f32i1.jpeg?width=960&auto=webp&s=1564cf08ae84b8daf8097885c2e4265da13a5004', 960, 960, 5, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/amu910x5f32i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya1uz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iyxm6pvag32i1.jpeg', 'https://preview.redd.it/iyxm6pvag32i1.jpeg?width=960&auto=webp&s=a91a14df7cdf9916cd4bbf388bdc5c7a45b0b47a', 960, 1452, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z45oalvag32i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qxzdtnvag32i1.jpeg', 'https://preview.redd.it/qxzdtnvag32i1.jpeg?width=960&auto=webp&s=425c658634f11dd0fce3fb1fe022edb1b471d18f', 960, 1452, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/50hyilvag32i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ozys3mvag32i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8eyktkvag32i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pmwhelvag32i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya6bx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y80fshfki32i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaf7l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mrkeu5iki32i1.jpeg', 'https://preview.redd.it/mrkeu5iki32i1.jpeg?width=960&auto=webp&s=5052c5a32a84681d77e977a40dac5ab139d4743b', 960, 539, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaf7l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w6usa5ygu32i1.jpeg', 'https://cf.preview.redd.it/w6usa5ygu32i1.jpeg?width=960&auto=webp&s=77c43277ed3b2799874fa441f6ce4ac3bb5719e9', 960, 480, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hxk1ja0hu32i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k7mtvu1hu32i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/81hag23hu32i1.jpeg', 'https://cf.preview.redd.it/81hag23hu32i1.jpeg?width=960&auto=webp&s=6db4d9aac4bae1cac0abc2079f8e75bb88fc850e', 960, 405, 3, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xybon2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/ejkwczhhMGQyNDJpMXylC09DYeGTvxqKJtMgzBUUWU6CAGjvPHfL_18h6mdZ.png?format=pjpg&auto=webp&s=bdb8bf5a75a97d26e39f1c69d569228895310e4e', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xych8q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ctxw1exggo2i1.jpeg', 'https://cf.preview.redd.it/ctxw1exggo2i1.jpeg?width=960&auto=webp&s=2f8ae1e473a594110842973d4fc5db5daab7161e', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f1kd7exggo2i1.jpeg', 'https://cf.preview.redd.it/f1kd7exggo2i1.jpeg?width=960&auto=webp&s=163f747b95a55ef167aa50e9265d404b5c9b3b41', 960, 540, 1, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2dcdxexggo2i1.jpeg', 'https://cf.preview.redd.it/2dcdxexggo2i1.jpeg?width=960&auto=webp&s=23d5525529ed4c9277f7f527c3ca70519ddafa7f', 960, 502, 2, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rron'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kzgtznusfp2i1.jpeg', 'https://preview.redd.it/kzgtznusfp2i1.jpeg?width=960&auto=webp&s=c7fa131e71083ed90a1f72692e1ca07861e74188', 960, 540, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vh52'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jfddtq3esp2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0wncu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5mfqtsyxyr2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y14eeu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wdb88ngr7s2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15kis'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ptps1l15pt2i1.png', 'https://preview.redd.it/ptps1l15pt2i1.png?width=960&auto=webp&s=a60ccee6f33441ea91447769a43412bbdb302952', 960, 964, 0, '2026-11-21 21:29:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d6tg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
