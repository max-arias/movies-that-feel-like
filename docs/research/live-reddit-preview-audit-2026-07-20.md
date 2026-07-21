# Live Reddit Preview Audit

## Method

Audited the live site at https://movies-that-feel-like.max-c82.workers.dev/ on 2026-07-20 using agent-browser Chromium at a 1280×577 viewport and DPR 1. Visited 31 current Imported Vibe Post routes and observed 143 post-page hero images. Homepage cards were approximately 444×444 CSS pixels. Every post hero was approximately 802×451 CSS pixels, making it the current largest rendered context.

All observed post imagery was Reddit-originated. TMDB recommendation posters are separate and out of scope for this migration.

## Findings

Reddit URLs must never be synthesized or mutated. For each image, select the smallest authoritative, provider-supplied Reddit preview or resolution whose intrinsic width is at least 802px. Qualifying observed widths included 836, 897, 960, 987, 1024, and 1036px, among others.

Some posts had only observed widths below 802px, including posts `1v0n4xs` and `1v1timr`. Original-only `i.redd.it` routes must use their exact original URL when no metadata preview list is available.

## Limitations

Direct Reddit metadata endpoints were blocked. The live page does not expose `media_metadata.resolutions`, and many lazy-loaded slides had `naturalWidth` 0. Therefore, the live audit cannot prove the exact smallest candidate for every historic row. It must not infer a candidate by changing Reddit query parameters.

## Agreed Contract

This migration applies only to Imported Vibe Post images.

- Repurpose `imported_post_images` by replacing the cache-oriented `url`, `remote_url`, `cache_key`, and `cache_status` columns with required `source_url` and nullable `preview_url` columns.
- Continue using `sort_order`.
- At import, choose only a provider-supplied preview meeting the 802px intrinsic-width threshold.
- If no authoritative preview list or no qualifying preview exists, set `preview_url` to `NULL`.
- Astro uses `preview_url ?? source_url`.
- Do not add client retries or candidate history.

## Backfill

Re-fetch historical posts during backfill to populate `source_url`/`preview_url` pairs. If a re-fetch fails, preserve the existing current URL as `source_url`, set `preview_url` to `NULL`, and continue the backfill rather than stopping the migration.
