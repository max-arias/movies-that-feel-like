# Movies That Feel Like — Session Handoff

## Purpose

This repo is a hobby project inspired by `r/MoviesThatFeelLike`: import Reddit posts/images/comments, extract movie/series recommendations from comments, canonicalize them via TMDB, and present a browseable Cloudflare-hosted site where posts are linked through shared recommendations.

Do not include or print API keys. The user has local env vars in shell config for Gemini and TMDB.

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
   - Uses Instructor + Gemini structured Pydantic extraction.
   - User-facing env var is `GEMINI_API_KEY` only. Internally it maps to what the Google SDK needs.
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
- `.bashrc` env vars were moved to the top; non-interactive sourcing now exposes `GEMINI_API_KEY` and `TMDB_ACCESS_TOKEN`.
- Wrangler local D1 lives under `apps/astro/.wrangler/state/...`, not `data/app.db`.
- `data/` is ignored and contains local artifacts only.
- `npm run dev` already works from repo root; it delegates to `apps/astro` workspace.
- `npx wrangler` did not resolve reliably from root in this environment. Scripts use `apps/astro/node_modules/.bin/wrangler`.
- Build currently emits Cloudflare adapter notes/warnings (e.g. sessions/KV note, sharp runtime warning), but build succeeds.

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
