## Agent skills

### Issue tracker

Issues for `max-arias/movies-that-feel-like` live in GitHub Issues; external PRs are not a triage surface. See `docs/agents/issue-tracker.md`.

### Triage labels

Use the default five-label vocabulary: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, and `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

This is a single-context repo with one root `CONTEXT.md` and `docs/adr/`. See `docs/agents/domain.md`.

## Data access

- Use Drizzle ORM (`drizzle-orm/d1`) for all typed D1 queries in the Astro app.
- SQL migrations in `packages/db/migrations/` are the authoritative schema, applied by Wrangler (`npm run db:migrate`). Do not adopt Drizzle Kit migrations.
- The Drizzle schema in `packages/db/schema.ts` is a typed mirror of the migrations; `packages/db/validate-schema.ts` enforces parity in CI. Update both in the same change.
- Do not use `db.transaction()` on D1 — it throws because D1 does not support SQL transactions. Use `db.batch()` for multi-statement writes.
- The `d1-http` driver is runtime-prohibited (it is REST + token, for Kit CLI only). Use `drizzle-orm/d1` against the `env.DB` binding.

### CSS framework migrations

Do not treat arbitrary-value utilities (especially `var()` wrappers) as a Tailwind migration. Before converting bespoke CSS, research the target framework version, define semantic design tokens in its native theme system, and map styles to named static utilities. The completion criterion must be the requested stylesheet elimination, verified by a source search and relevant build/runtime checks; retain custom CSS only when the user explicitly accepts an exception.
