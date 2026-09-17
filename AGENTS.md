## Agent skills

## Testing

- Do not create or update automated tests, test fixtures, or test-only tooling unless the user explicitly requests them.

### Issue tracker

Issues for `max-arias/movies-that-feel-like` live in GitHub Issues; external PRs are not a triage surface. See `docs/agents/issue-tracker.md`.

### Triage labels

Use the default five-label vocabulary: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, and `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

This is a single-context repo with one root `CONTEXT.md` and `docs/adr/`. See `docs/agents/domain.md`.

## Data access

- Use Drizzle ORM (`drizzle-orm/d1`) for all typed D1 queries in the Astro app.
- The site is hybrid: Astro `output: "server"` with prerendered `/`, feed pages 2–5, tag feeds for tags with at least ten displayable posts (and their whole pagination) and `/tags`; the `[...feed]` catch-all and post details render on demand. All routes read `apps/astro/src/lib/db` through the `DB` binding. Production builds export D1 once into an isolated local database and prerender against it; never query remote D1 per rendered page or commit a corpus snapshot. See `docs/operations.md` for deployment and freshness.
- The legacy `/?tag=…&page=…` redirect belongs to the Worker entry (`apps/astro/src/worker-entry.ts` calling `legacyRootRedirect` from `apps/astro/src/lib/feed-routes.ts`), not to Astro middleware: a prerendered `/` is answered by the asset store and never reaches a route or middleware. It only works while `assets.run_worker_first: ["/"]` is set in `apps/astro/wrangler.jsonc`, and the production build checks that the generated config kept it.
- `apps/astro/astro.config.mjs` must keep returning a plain object. Astro 7 invokes a function config only for the `server` field, so `defineConfig(({ command }) => …)` is silently ignored and produces an `output: "static"` build with no adapter.
- A post is displayable only while it owns at least one image with `deleted_at IS NULL`. Database triggers maintain `is_displayable`, tag counts and the published-post total; queries consume those values instead of recomputing them. Static pages reflect the last deployment; redeploy after image-liveness writes. Keep this rule centralized in the schema migration.
- SQL migrations in `packages/db/migrations/` are the authoritative schema, applied by Wrangler (`npm run db:migrate`). Do not adopt Drizzle Kit migrations.
- The Drizzle schema in `packages/db/schema.ts` is a typed mirror of the migrations; `packages/db/validate-schema.ts` checks parity as part of `npm run check`. Update both in the same change.
- Do not use `db.transaction()` on D1 — it throws because D1 does not support SQL transactions. Use `db.batch()` for multi-statement writes.
- The `d1-http` driver is runtime-prohibited (it is REST + token, for Kit CLI only). Use `drizzle-orm/d1` against the `env.DB` binding.
- Generated data migrations must be id-free upserts keyed on natural keys and must fail loudly; never copy run-local row ids into D1, and never seed with `INSERT OR IGNORE`. That is what silently dropped the image rows of 83 posts.
- Local development and verification use local D1 only. Remote reads are restricted to intentional operations and the deployment export, not development servers or render loops.

### CSS framework migrations

Do not treat arbitrary-value utilities (especially `var()` wrappers) as a Tailwind migration. Before converting bespoke CSS, research the target framework version, define semantic design tokens in its native theme system, and map styles to named static utilities. The completion criterion must be the requested stylesheet elimination, verified by a source search and relevant build/runtime checks; retain custom CSS only when the user explicitly accepts an exception.

## Deployment

- Production deploys go through `.github/workflows/deploy-production.yml` (push to `main`, manual dispatch, and an explicit call from the import workflow). Cloudflare Workers Builds must stay disconnected for this Worker: a plain push-triggered build has no D1 snapshot and would deploy a site with no posts.
- Never deploy a plain `astro build`. Build production with `node scripts/build-production.mjs --snapshot <d1-export.sql>` (or `D1_SNAPSHOT=… npm run cf:deploy:prod`), which restores a data-only `wrangler d1 export … --no-schema` into an isolated state directory, verifies the corpus and ledger, and prerenders with `BUILD_D1_STATE_DIR`.
- Deploy only the generated `apps/astro/dist/server/wrangler.json` (the adapter writes `main`, the assets directory and the bindings). Do not hand-edit or hand-assemble it.
- Both production workflows hold the same concurrency group on their **jobs**. Do not move it to the workflow level: a called workflow's group would already be held by the calling run and its deploy job would deadlock behind it.
- Do not run production-mutating commands (`wrangler deploy`, `d1 migrations apply --remote`, `d1 export --remote`) or deploy the Worker from an agent session; the user owns that.

## Pipeline runs

- Do not run pipeline stages locally to verify a change. They call live providers (OpenCode Go, TMDB, Twitch) with real credentials and spend real usage limits. Verify pipeline changes with the scheduled `.github/workflows/import-reddit.yml` run, or with `--dry-run` and the unit tests.
- OpenCode Go rejects requests that do not identify themselves: every call needs a client user agent and an `x-opencode-session` header, which `pipeline.extract` sends. The extraction model is `EXTRACTION_MODEL` at the top of `.github/workflows/import-reddit.yml`; every invocation in a run must name the same model or the extraction cache keys stop matching.
