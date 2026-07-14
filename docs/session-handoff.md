# Movies That Feel Like — Session Handoff

## Purpose

This repo is a hobby project inspired by `r/MoviesThatFeelLike`: import Reddit posts/images/comments, extract movie/series recommendations from comments, canonicalize them via TMDB, and present a browseable Cloudflare-hosted site where posts are linked through shared recommendations.

Do not include or print API keys. The user has local env vars in shell config for OpenCode Go and TMDB.

## Existing project docs

Read these first instead of reconstructing decisions from scratch:

- `CONTEXT.md` — domain glossary.
- `docs/architecture-plan.md` — architecture and staged pipeline plan.
- `docs/adr/0001-cloudflare-native-storage-and-deployment.md` — Cloudflare-native storage/deploy decision.
- `docs/adr/0002-local-python-pipeline-with-instructor-and-gemini.md` — local Python pipeline + Instructor/Gemini decision.

## Current architecture

Monorepo layout:

```txt
/
  apps/
    astro/       # Astro + Cloudflare Pages/Workers runtime UI
    pipeline/    # Python pipeline managed by uv, invoked through npm scripts
  packages/
    db/          # D1 migrations/schema
  data/          # ignored local raw/intermediate/cache artifacts
  docs/
```

Cloudflare/local runtime:

- Astro uses `@astrojs/cloudflare` in server mode.
- Wrangler config is `apps/astro/wrangler.jsonc`.
- D1 binding is named `DB`.
- Local D1 is populated via Wrangler local D1 state, not by reading `data/app.db` from Astro.
- The pipeline still writes `data/app.db` as an intermediate SQLite database and can emit SQL for local D1 loading.

## Pipeline stages implemented

All are invoked from root npm scripts.

1. `npm run pipeline:fetch`
   - Uses Arctic Shift via `arcshiftwrap`.
   - Fetches Reddit posts and optional comment trees.
   - Writes raw artifacts under `data/raw/`.
   - Supports `--limit`, `--skip-comments`, date args.

2. `npm run pipeline:normalize`
   - Reads latest raw artifact.
   - Normalizes posts and image records.
   - Important: keeps only source/original image URLs, not every Reddit preview resolution.
   - Writes `data/working/normalized/*.json`.

3. `npm run pipeline:cache-assets`
   - Best-effort downloads normalized source images.
   - Writes files under `data/assets/reddit/{reddit_post_id}/`.
   - Writes asset manifest under `data/working/assets-cache-*.json`.
   - Preserves fallback hotlink/source URL.

4. `npm run pipeline:extract`
   - Uses Instructor + OpenCode Go with the default `deepseek-v4-flash` model for structured Pydantic extraction.
   - User-facing env var is `OPENCODE_GO_API_KEY`; the default base URL is `https://opencode.ai/zen/go/v1`.
   - Extracts concrete movie/series recommendations, evidence comments, vibe summary, and tags.
   - Has retry/backoff flags: `--max-attempts`, `--backoff-seconds`, `--backoff-multiplier`.
   - Dry-run: `npm run pipeline:extract -- --dry-run --limit 1`.
   - Writes `data/working/extraction-*.json`.

5. `npm run pipeline:enrich`
   - Uses TMDB `/search/multi` and external IDs.
   - Env: `TMDB_ACCESS_TOKEN` preferred, `TMDB_API_KEY` fallback.
   - Dedupes extracted candidates and resolves canonical movie/TV records.
   - Writes `data/working/enrichment-*.json`.

6. `npm run pipeline:load`
   - Merges normalized/assets/extraction/enrichment artifacts.
   - Loads local SQLite `data/app.db` and can emit D1 SQL with `--sql-out`.
   - Publishability requires usable image, vibe summary, at least one enriched recommendation match, and permalink.

7. `npm run seed`
   - Convenience command for local dev.
   - Runs `db:migrate` and `db:load-local`.
   - Populates Wrangler local D1 from current artifacts.

8. `npm run dev`
   - Runs the Astro site from the root workspace.

## Current sample state

Current local sample is one Reddit post from 2026:

- Reddit post ID: `1q0v5c5`
- Local D1 has 1 publishable post, 1 image, 5 recommendations, 5 evidence links, 5 tags.
- Successful extracted/enriched recommendations include Pulp Fiction, U Turn, The Dukes of Hazzard, Armageddon, Cry-Baby.

Known working commands from root:

```bash
source "$HOME/.bashrc"
source "$HOME/.local/bin/env"
npm run seed
npm run dev
```

Useful inspection commands:

```bash
npm run pipeline:inspect
apps/astro/node_modules/.bin/wrangler d1 execute movies-that-feel-like --local --command "SELECT COUNT(*) AS count FROM imported_vibe_posts" --config apps/astro/wrangler.jsonc
```

## Current UI state

Astro UI exists and builds:

- `apps/astro/src/pages/index.astro` — feed from D1.
- `apps/astro/src/pages/posts/[id].astro` — post detail.
- `apps/astro/src/pages/recommendations/[id].astro` — recommendation detail.
- `apps/astro/src/lib/db.ts` — D1 query helpers.
- `apps/astro/src/layouts/Layout.astro` and `src/styles/global.css` — Tailwind 4 + daisyUI 5 styling.

Design is intentionally minimal/tracer-bullet level.

## Important caveats / gotchas

- Do not print env var values. The user accidentally pasted a key earlier; do not repeat it.
- `.bashrc` env vars were moved to the top; non-interactive sourcing now exposes `OPENCODE_GO_API_KEY` and `TMDB_ACCESS_TOKEN`.
- Wrangler local D1 lives under `apps/astro/.wrangler/state/...`, not `data/app.db`.
- `data/` is ignored and contains local artifacts only.
- `npm run dev` already works from repo root; it delegates to `apps/astro` workspace.
- `npx wrangler` did not resolve reliably from root in this environment. Scripts use `apps/astro/node_modules/.bin/wrangler`.
- Build currently emits Cloudflare adapter notes/warnings (e.g. sessions/KV note, sharp runtime warning), but build succeeds.

## Image pipeline lessons learned

These are the operational gotchas the next agent is most likely to trip over.
Source-of-truth code is `apps/pipeline/src/pipeline/normalize.py::_collect_images`
and `apps/pipeline/src/pipeline/load.py::_has_usable_image`.

### 1. Reddit crossposts carry no image data of their own

`r/MoviesThatFeelLike` posts are often crossposts of image posts from
other subs. The crosspost row in the Arctic Shift archive has
`media: null`, `gallery_data: null`, `media_metadata: null`, `preview: null`,
and an empty `media` block — even when the original post is a 20-image
gallery. All the real image URLs live under
`post["crosspost_parent_list"][0]` (the embedded copy of the parent post
in the archive). The normalizer must fall back to that field when the
post itself yields nothing. Without this, every crosspost renders with
an empty image panel.

### 2. The loader's "has usable image" check was too optimistic

The old `_has_usable_asset([])` returned `True` ("no signal, do not
block"). That meant any post with a vibe summary + at least one enriched
recommendation match was marked `publishable` even if the normalizer
produced zero images. The post detail page would then render an
"empty" gallery placeholder. The current check is
`_has_usable_image(asset_list, normalized_image_count)` and returns
`False` whenever `normalized_image_count == 0`, regardless of asset
state. The asset-state optimism is preserved for the
"images exist but cache-assets stage was not run yet" case.

### 3. "no usable images" in `error_info` conflates two causes

The loader's reason string does not distinguish them, but operationally
they are very different:

- **No source**: 0 images in the normalized record. Sub-types seen in
  the 100-post sample:
  - **Text-only self-posts** (`is_self: true`, no media). These are
    not vibe posts at all — they have no image vibe to discuss.
  - **Galleries with `media_metadata` items at `status: "unprocessed"`**.
    The archive lists the item but `s` and `p` are absent, so the
    normalizer's `status != "valid" and e != "Image"` filter skips it.
    Reddit's image processor never generated variants for these.
  - **Galleries with no `media_metadata` at all** in the archive, only
    a `thumbnail` URL. Nothing to extract.
  No way to recover these from the current data — would need to
  re-fetch the parent post from a live Reddit endpoint, which Arctic
  Shift's archive does not cover.

- **Cache failure**: normalized has 1–20 image URLs but every
  `httpx.get` to `preview.redd.it` / `i.redd.it` returned 404 (or other
  HTTP error). The URLs are valid in the archive but the CDN has since
  dropped them. ~15% of the 100-post sample falls in this bucket.
  Recovery options: re-run cache-assets later (CDN may have
  re-served), switch the normalizer to the smaller `media_metadata.s.u`
  source URL instead of the largest preview variant, or fall back to
  the post `thumbnail` URL.

When triaging skipped posts, check `data/working/normalized/...json`
to see the per-post `images[]` length. `0` means no source, `>0` with
0 cached assets means cache failure.

### 4. The UI hotlinks `source_url`, not the local cache

`apps/astro/src/lib/db.ts` returns the original `source_url` as
`img.url` and the post page renders that directly. The `cache_path`
on disk is only stored in `imported_post_images.cache_key` and is
**not** exposed to the browser. So a "cache fail" in the asset
manifest is not just a pipeline artifact — the image will not load
in the user's browser either. The cache step is essentially a
preflight check, not a fallback serving path.

### 5. `media_metadata` items with `status: "unprocessed"` look like data but contain none

The normalizer's filter
`item.get("status") != "valid" and item.get("e") != "Image"`
correctly skips them, but it's easy to miss this in raw-data
exploration: the keys exist, the post looks like it has images, but
every value is `{"status": "unprocessed"}` with no `s` or `p` field.
No code change available; just be aware that
`is_gallery: true` does not guarantee a usable image.

## Suggested next steps

1. Process a slightly larger sample, e.g. 10–25 posts:

   ```bash
   npm run pipeline:fetch -- --limit 10
   npm run pipeline:normalize
   npm run pipeline:cache-assets
   npm run pipeline:extract -- --limit 10
   npm run pipeline:enrich -- --limit 50
   npm run seed
   npm run dev
   ```

2. Review extraction quality:
   - Are recommendations too broad? The one-post sample extracted 38 recommendations, then enrichment limited to 5.
   - Consider ranking/publish threshold before loading all recommendations.
   - Consider requiring evidence count or confidence threshold.

3. Improve loader/enrichment linkage:
   - Ensure all enriched matches for all candidates are loaded, not just a limited subset.
   - Add stronger candidate matching when LLM media type/year differs from TMDB result.

4. Decide asset serving strategy:
   - Currently UI displays source/hotlink URLs.
   - Later: upload cached images to R2 and serve via Cloudflare route/public URL.
   - See "Image pipeline lessons learned" above — the 15% cache-failure rate
     on `preview.redd.it` URLs suggests switching to a more stable URL
     source (e.g. `media_metadata.s.u` smaller variants, or post
     `thumbnail`) before serving anything from R2. Re-run cache-assets
     against a fresh fetch first to see if it's a transient CDN issue.

5. Add remote Cloudflare resources:
   - Create real D1 database and replace placeholder `database_id`.
   - Create R2 bucket for raw artifacts/images.
   - Add deployment workflow.

6. UI iteration:
   - Once there are 25–50 posts, use real data to refine feed/recommendation pages.
   - Add browse/search/filter by recommendation title/tags.

7. Add a short README with setup commands:
   - install deps
   - env vars required
   - run pipeline sample
   - seed local D1
   - run dev

## Suggested skills for the next agent

- `cloudflare` — for D1/R2/Pages architecture and Cloudflare product decisions.
- `wrangler` — before changing Wrangler config, D1 migrations, local dev, or deployment scripts.
- `daisyui`, `daisyui-usage`, `daisyui-colors` — before editing Astro HTML/UI classes.
- `impeccable` or `frontend-design` — when polishing the visual design beyond the tracer bullet.
- `diagnosing-bugs` — if pipeline/API/build failures appear.
- `code-review` — before merging or publishing, especially after larger generated changes.
- `handoff` — if another session handoff is needed.
