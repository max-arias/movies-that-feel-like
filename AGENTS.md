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
- The site renders every route on demand from D1 through the `DB` binding: `output: "server"` plus the Cloudflare adapter, no prerendered pages and no build-time snapshot. Query D1 at request time via `apps/astro/src/lib/db`; do not reintroduce a build-time data file.
- A post is displayable only while it owns at least one image with `deleted_at IS NULL`. The feed, the tag counts, the pagination counts, and the post detail route (404) all use that one predicate. Change it in one place, not per call site.
- SQL migrations in `packages/db/migrations/` are the authoritative schema, applied by Wrangler (`npm run db:migrate`). Do not adopt Drizzle Kit migrations.
- The Drizzle schema in `packages/db/schema.ts` is a typed mirror of the migrations; `packages/db/validate-schema.ts` enforces parity in CI. Update both in the same change.
- Do not use `db.transaction()` on D1 — it throws because D1 does not support SQL transactions. Use `db.batch()` for multi-statement writes.
- The `d1-http` driver is runtime-prohibited (it is REST + token, for Kit CLI only). Use `drizzle-orm/d1` against the `env.DB` binding.
- Generated data migrations must be id-free upserts keyed on natural keys and must fail loudly; never copy run-local row ids into D1, and never seed with `INSERT OR IGNORE`. That is what silently dropped the image rows of 83 posts.

### CSS framework migrations

Do not treat arbitrary-value utilities (especially `var()` wrappers) as a Tailwind migration. Before converting bespoke CSS, research the target framework version, define semantic design tokens in its native theme system, and map styles to named static utilities. The completion criterion must be the requested stylesheet elimination, verified by a source search and relevant build/runtime checks; retain custom CSS only when the user explicitly accepts an exception.

## Pipeline runs

- Do not run pipeline stages locally to verify a change. They call live providers (OpenCode Go, TMDB, Twitch) with real credentials and spend real usage limits. Verify pipeline changes with the scheduled `.github/workflows/import-reddit.yml` run, or with `--dry-run` and the unit tests.
- OpenCode Go rejects requests that do not identify themselves: every call needs a client user agent and an `x-opencode-session` header, which `pipeline.extract` sends. The extraction model is `EXTRACTION_MODEL` at the top of `.github/workflows/import-reddit.yml`; every invocation in a run must name the same model or the extraction cache keys stop matching.
