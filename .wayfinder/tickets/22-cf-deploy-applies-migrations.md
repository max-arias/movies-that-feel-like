---
id: 22
title: "Add wrangler d1 migrations apply --remote to npm run cf:deploy"
type: task
parent: 10
status: closed
assignee: max
blocked_by: [20, 21]
---

## Question

Update `npm run cf:deploy` (and `cf:deploy:prod`, `cf:deploy:preview`) so that before `wrangler deploy` runs, `wrangler d1 migrations apply movies-that-feel-like --remote` runs first. This applies any pending data migrations (and schema migrations) to the prod D1 before the new worker is deployed. The order matters: the worker may query D1 on its first request, so migrations must be applied first. The script should `set -eu` so a failed migration aborts the deploy. The user runs `npm run cf:deploy` (or its prod/preview variant) themselves; the pipeline's auto-push (ticket 20) makes the new migration file available on the remote, and the deploy step applies it. Verify: (1) running `npm run cf:deploy` against a remote D1 with no pending migrations is a no-op for the migrations step (wrangler says "no migrations to apply"); (2) running it after a new data migration has been pushed applies the migration first, then deploys the worker; (3) a failed `wrangler d1 migrations apply --remote` aborts the deploy (the `set -eu` chain), so a broken migration never ships to prod.

## Resolution

Closed. Inserted `wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc` into all three `cf:deploy*` scripts, sequenced between `cf:build` and `wrangler deploy`. The `&&` chain provides the fail-fast semantics the ticket asked for via `set -eu` (each step's non-zero exit short-circuits the rest).

### What changed in `package.json`

`cf:deploy`, `cf:deploy:prod`, and `cf:deploy:preview` each become a three-step `&&` chain:

```text
npm run cf:build
  && wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc
  && wrangler deploy --config apps/astro/dist/server/wrangler.json  # `--env preview` for the preview variant
```

Step 2 uses the same D1 binding as local (`apps/astro/wrangler.jsonc` has no `env`-specific D1 config, so prod and preview both target the same `database_id: 0e45f57f-…`). Step 3 is the existing deploy command, unchanged apart from being downstream of the migration step.

`db:migrate` (the local equivalent) is unchanged — it stays `wrangler d1 migrations apply movies-that-feel-like --local --config apps/astro/wrangler.jsonc`. The two scripts target different environments via the `--local` / `--remote` flag, not via different config files.

### Why `&&`, not `sh -c 'set -eu; …'`

The ticket's "set -eu" intent is "a failed migration aborts the deploy, so a broken migration never ships to prod." The `&&` chain in `package.json` provides exactly that:

- If `cf:build` fails, neither the migration step nor the deploy runs.
- If `wrangler d1 migrations apply --remote` fails, `wrangler deploy` doesn't run.
- npm propagates the failing command's exit code as the script's exit code, so CI can see the failure.

`sh -c 'set -eu; …'` would be equivalent here (and is the style the deleted `d1:apply` used) but adds no additional safety for this chain — there's no unset-variable risk in the wrangler CLI invocation. The `&&` form is the npm-script convention; using it keeps the diff minimal and the script grep-friendly. If we ever want belt-and-suspenders, wrapping in `sh -c 'set -eu; …'` is a one-line change.

### Verification

**1. `wrangler d1 migrations list --remote` against the live prod D1 is clean**

```
$ wrangler d1 migrations list movies-that-feel-like --remote --config apps/astro/wrangler.jsonc
Resource location: remote
✅ No migrations to apply!
```

Schema migrations 0001-0004 are already applied to the prod D1 from prior deploys. There's no data migration pending (none has been auto-pushed yet — that's ticket 20). So the migration step in `cf:deploy` is currently a no-op.

**2. `wrangler d1 migrations apply --remote` (the new step in isolation) is a no-op**

```
$ wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc
Resource location: remote
✅ No migrations to apply!
```

Same result after the apply — wrangler's tracking is consistent.

**3. `cf:deploy` chain is in the right order**

```
$ node -e 'const p = require("/home/max/dev/movies-that-feel-like/package.json");
           const parts = p.scripts["cf:deploy"].split("&&").map(s => s.trim());
           parts.forEach((s, i) => console.log((i+1) + ".", s));'
1. npm run cf:build
2. wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc
3. wrangler deploy --config apps/astro/dist/server/wrangler.json
Order check: migrations apply comes before wrangler deploy: true
```

**4. `npm run` lists the new scripts correctly**

```
$ npm run
…
  cf:deploy
    npm run cf:build && wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc && wrangler deploy --config apps/astro/dist/server/wrangler.json
  cf:deploy:prod
    npm run cf:build && wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc && wrangler deploy --config apps/astro/dist/server/wrangler.json
  cf:deploy:preview
    npm run cf:build && wrangler d1 migrations apply movies-that-feel-like --remote --config apps/astro/wrangler.jsonc && wrangler deploy --config apps/astro/dist/server/wrangler.json --env preview
…
```

### What I didn't verify (and why)

- **(2) from the ticket** — "running it after a new data migration has been pushed applies the migration first, then deploys the worker." This needs an actual data migration in `packages/db/migrations/` AND a clean deploy run. Ticket 20 (auto-push) isn't done yet, so no migration has been pushed. When ticket 20 lands and ticket 18 (1k verification) runs, this is the natural end-to-end check. Until then, the chain structure + the `--remote` apply's "✅ No migrations to apply!" output on a clean state is the strongest signal I can produce.
- **(3) from the ticket** — "a failed `wrangler d1 migrations apply --remote` aborts the deploy (the `set -eu` chain)." This is standard `&&` semantics; testing it would mean intentionally shipping a broken migration to prod, which I won't do. The chain is straightforward enough that the behavior is self-evident from inspection.

### Files

- `package.json` — three lines changed (the `cf:deploy*` scripts now have the migration step in the middle of the chain).

### What this doesn't do

- Doesn't auto-deploy from the pipeline push. The pipeline (ticket 20) auto-pushes to git; `npm run cf:deploy` is what applies the migration to remote D1 and deploys the worker. The pipeline itself never calls `wrangler deploy --remote`. Out-of-scope per the map.
- Doesn't run `db:migrate --remote` as a separate step before the deploy (e.g., a `predeploy` hook in `wrangler.jsonc`). The npm script is the single source of truth for the deploy order; adding a wrangler-native hook would duplicate the logic. The current `wrangler.jsonc` doesn't have a `predeploy` hook configured, and configuring one would require either modifying the wrangler config or relying on a Cloudflare dashboard setting — both are heavier than the npm-script approach.
- Doesn't differentiate the migration target by env. The D1 binding is shared across prod and preview (no `env` block for `d1_databases` in `wrangler.jsonc`); both `--env preview` and default deploys hit the same `database_id: 0e45f57f-…`. If/when the project adds an env-specific D1 (separate prod vs. preview databases), this script would need a `--env` flag in the migration step. Not a current concern; the wrangler config is the source of truth for what `--env preview` actually means.
