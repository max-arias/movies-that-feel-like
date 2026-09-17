# Movies That Feel Like

A small Cloudflare-native site inspired by [`r/MoviesThatFeelLike`](https://www.reddit.com/r/MoviesThatFeelLike/).

People post images to Reddit asking for movies or series with the same feeling. This project imports those Reddit posts, processes the recommendation discussion, resolves suggested titles through TMDB, and turns the result into a browseable discovery site.

The first version is intentionally read-only: users browse imported Reddit data rather than creating new submissions.

## What the site does

- Imports posts, images, and comments from `r/MoviesThatFeelLike`.
- Keeps raw/intermediate artifacts locally so pipeline stages can be retried without refetching.
- Extracts concrete movie/series recommendations from Reddit comments with an LLM on OpenCode Go (the scheduled import runs `deepseek-v4.1-flash`).
- Generates a short text-only vibe summary and tags from the post title/text/comments.
- Resolves recommendations to canonical TMDB movie/TV records.
- Links posts together through shared canonical recommendations.
- Drops any post whose images Reddit has deleted, and re-checks image reachability with an on-demand probe.
- Serves the web app through Astro on Cloudflare: the first five feed pages, tag feeds with at least ten displayable posts (and their whole pagination) and the complete tag index are prerendered; the long tail of tags, deep feed pages and post details render on demand from D1. Legacy `/?tag=…&page=…` URLs are redirected at the Worker boundary.

The pipeline does **not** analyze images with an LLM. It relies on the humans in the Reddit comments to interpret the image vibe.

## Repo layout

```txt
/
  apps/
    astro/       # Astro hybrid static/SSR on Cloudflare Workers
    pipeline/    # Python import/extract/enrich/load pipeline
  packages/
    db/          # D1 schema and migrations
  data/          # ignored local artifacts/cache
  docs/          # architecture notes, ADRs, handoff
  CONTEXT.md     # domain glossary
```

## Main concepts

- **Imported Vibe Post** — a read-only Reddit post with one or more images and its recommendation discussion.
- **Recommendation** — a canonical movie or series suggested in comments.
- **Shared Recommendation Link** — a connection between posts that mention the same canonical Recommendation.
- **Vibe Summary** — a generated short description of the feeling expressed by the post, derived from title/text/comments.

See `CONTEXT.md` for the glossary.

## Tech stack

- Astro
- Cloudflare Workers runtime and static assets (hybrid rendering from D1)
- Cloudflare D1 via Wrangler local dev
- GitHub Actions for the production deploy (snapshot-backed build, then `wrangler deploy`); Cloudflare Workers Builds stays disconnected
- Tailwind CSS 4 + daisyUI 5
- Python pipeline managed with `uv`
- Arctic Shift / `arcshiftwrap` for Reddit archive data
- Instructor + Pydantic + OpenCode Go for structured extraction (pipeline default `mimo-v2.5`; the import runs `deepseek-v4.1-flash`)
- TMDB API for media enrichment

## Required local environment

The pipeline expects these env vars when running the extraction/enrichment stages:

```bash
OPENCODE_GO_API_KEY=...
TMDB_ACCESS_TOKEN=...
```

`TMDB_API_KEY` is also supported as a fallback for TMDB, but `TMDB_ACCESS_TOKEN` is preferred.

Do not commit secrets. Local data under `data/` is ignored.

## Install

From repo root:

```bash
npm install
```

The Python pipeline uses `uv`; the npm scripts call `uv` inside `apps/pipeline`.

## Local development

If artifacts already exist, seed Wrangler local D1 and run the site:

```bash
npm run seed
npm run dev
```

`npm run seed` loads the latest processed pipeline artifacts into Wrangler's local D1 storage and applies the D1 migrations. Development and verification read that local D1 only — the adapter sets `remoteBindings: false`, so neither the dev server nor a prerender can reach production D1 or KV.

## Production build and deploy

The prerendered pages read D1 at build time, so the production build restores an
export of the production corpus into an isolated local database, prerenders
against that, and only then deploys:

```bash
npm run d1:export:prod -- --output /tmp/d1-corpus.sql
D1_SNAPSHOT=/tmp/d1-corpus.sql npm run cf:deploy:prod
```

`scripts/build-production.mjs` applies the tracked migrations into an isolated
state directory, imports the data-only snapshot (dropping the summary triggers
around the import so the exported summary rows land verbatim), verifies the
restored corpus and migration ledger, builds with `BUILD_D1_STATE_DIR`, and
refuses to emit an empty site — or to run under Cloudflare Workers Builds, whose
plain push-triggered build has no snapshot.
`.github/workflows/deploy-production.yml` runs the same sequence for pushes to
`main` that touch the app, packages, scripts, `package.json` or the lockfile, and
it is called explicitly by the import workflow, because the release
commit is pushed with `GITHUB_TOKEN`, which creates no push events.

Prerendered pages change only on deployment, so redeploy after image-liveness
writes. Token scopes, the production environment and the Workers Builds
disconnect are documented in `docs/operations.md`.

## Pipeline workflow

To ingest the latest already-downloaded raw artifact without fetching new data,
load the local environment and run the fetch-free pipeline command:

```bash
source "$HOME/.bashrc"
source "$HOME/.local/bin/env"
npm run pipeline:ingest
```

The stages consume the latest artifacts already present under `data/`; the
command runs normalize, extraction, enrichment, and local D1 seeding in that
order. It does not run `pipeline:fetch`.

A small end-to-end sample looks like this:

```bash
npm run pipeline:fetch -- --limit 10
npm run pipeline:normalize
npm run pipeline:extract -- --limit 10
npm run pipeline:enrich -- --limit 50
npm run seed
npm run dev
```

Extraction uses OpenCode Go; the pipeline default model is `mimo-v2.5`, and the
scheduled import runs `deepseek-v4.1-flash` (`EXTRACTION_MODEL` in
`.github/workflows/import-reddit.yml`). Select either explicitly with
`--model`, and set `OPENCODE_GO_API_KEY` before running `pipeline:extract`. Go
requires each request to identify this client and carry a session id, which the
pipeline sends automatically; the model, mode, and endpoint are part of each
cache key, so changing the model invalidates cached extractions rather than
reusing a different model's output.
Extraction is resumable: completed posts are fsynced to an append-only JSONL
checkpoint in `data/working/checkpoints/`. The default bounded concurrency is 3
and request starts are limited to 6 RPM; tune with `--concurrency` and
`--rate-limit-rpm`. A final extraction artifact is emitted only when every
target post has a terminal success or error outcome.

Image reachability is maintained separately from extraction. Reddit answers a
deleted gallery image with a 1048-byte placeholder PNG, so a dead image still
loads; `pipeline:check-images` probes the stored URLs and records which ones are
dead, and `pipeline:refetch-images` re-derives rows for posts that lost them.
A post is displayable only while it owns at least one image that is not known to
be deleted. Database triggers keep displayability and counts current; static
pages reflect the last deployment, so redeploy after liveness writes.
`docs/operations.md` has the production commands and deployment prerequisites.

Useful inspection:

```bash
npm run pipeline:inspect
apps/astro/node_modules/.bin/wrangler d1 execute movies-that-feel-like --local --command "SELECT COUNT(*) AS count FROM imported_vibe_posts" --config apps/astro/wrangler.jsonc
```

## Important docs

- `docs/architecture-plan.md` — architecture and pipeline plan.
- `docs/operations.md` — rendering and deployment architecture, production
  Reddit import configuration, scheduling, recovery, failure triage, the
  snapshot-backed Worker build, D1 summary triggers, and the required Cloudflare
  setup.
- `docs/adr/0001-cloudflare-native-storage-and-deployment.md` — Cloudflare-native decision.
- `docs/adr/0002-local-python-pipeline-with-instructor-and-gemini.md` — Python pipeline and Gemini decision.
- `docs/adr/0003-drizzle-d1-data-access.md` — Drizzle over D1 and the hybrid-rendering amendment: local export-backed builds, SSR fallbacks and materialized counts.

## Current state

The repo has a working tracer bullet, and the import workflow is scheduled twice
a week:

- fetch Reddit sample data
- normalize/copy source images
- extract recommendations and vibe summaries
- enrich recommendations through TMDB
- load into local SQLite and Wrangler local D1
- prerender the hot feed/tag routes; render long-tail filters and post details on demand
- drop posts whose images Reddit has deleted

The production deploy is the GitHub Actions workflow described above and in
`docs/operations.md`; that document lists the operator setup it requires (Cloudflare
token scopes, the `production` environment, and disconnecting Cloudflare Workers
Builds). This repository does not record whether a given deployment has run.

## Next likely work

- Process and inspect a 10–25 post sample.
- Review extraction quality and recommendation ranking.
- Decide publish thresholds for noisy recommendations.
- Add R2-backed image serving instead of hotlink display — the durable fix for
  deleted source images, which no amount of re-checking can undo.
