# Wayfinder #51 — quality and operations workflow audit

## Scope and method

This is a repository-state audit of pull-request quality gates, deployment,
migrations, schema/tooling consistency, documentation, observability, and
operator onboarding. Evidence was checked in the files cited below; absence of
a workflow or test is reported as an absence in the repository, not as proof
that no external process exists. This document proposes roadmap work only; it
does **not** claim that source changes were made.

## Findings and prioritized recommendations

### High priority

1. **Add a required PR quality workflow.** The only GitHub workflow is the
   scheduled/manual import (`.github/workflows/import-reddit.yml:1-215`); there
   is no PR-triggered build/check/test gate. The root `check` command is
   `validate-schema` followed by `astro check` (`package.json:13`), but nothing
   requires it before merge. Add a least-privilege PR workflow that installs
   the pinned lockfiles, runs Python tests, schema validation, Astro checks,
   static build verification, and Worker-runtime tests.

2. **Make tests executable and symmetric.** Python tests exist under
   `apps/pipeline/tests/`, but no Astro/Worker test suite or test script is
   present (`apps/astro/package.json:5-10`), and the import workflow does not
   run the pipeline tests. Wire both lanes into the same required check; add
   request-level tests against a Miniflare/workerd-compatible D1 binding rather
   than treating a successful static build as runtime coverage.

3. **Resolve deployment-model drift and environment bindings.** The ADR says
   “Astro on Cloudflare Pages” and describes a future Cloudflare deployment
   (`docs/adr/0001-cloudflare-native-storage-and-deployment.md:1-3`), while
   `apps/astro/astro.config.mjs:5-10` selects `output: "static"` and
   `scripts/generate-deploy-config.mjs:5-10` deliberately emits an asset-only
   `dist/wrangler.json`; `verify-static-artifact.mjs:5-17` verifies that model.
   Reconcile the ADR and README with the actual static asset deployment, or
   intentionally move to a Worker. Define separate, explicit `preview` and
   `production` Wrangler environments, each with its own D1 binding/database
   identity (and KV/R2 bindings as applicable), and assert that the selected
   environment is the one being deployed.

4. **Decouple migration generation, review, and apply from deployment.** The
   normal import generates SQL in `packages/db/migrations` (`import-reddit.yml:169-198`),
   uploads it for review, and the separate `apply_only` path applies committed
   migrations remotely (`import-reddit.yml:200-215`; `docs/operations.md:47-69`).
   Conversely, `package.json:9-12` applies remote D1 migrations inside
   `cf:build`, coupling a build/deploy to a destructive remote write. Make
   migration apply an explicit, protected release step after review, with
   preview migrations targeting preview D1 only; never allow a preview build
   or an unqualified deploy to mutate production.

5. **Strengthen remote D1 safety and artifact review.** Preserve the existing
   pending-migration guard (`import-reddit.yml:61-86`), but add environment/name
   assertions, an explicit dry-run plan, SQL and load-artifact inspection,
   migration count/checksum evidence, and a human approval boundary before
   remote apply. Production credentials must be unavailable to preview jobs;
   use separate D1 IDs and least-privilege tokens. Keep secrets in environment
   secret stores only, never logs or uploaded artifacts, consistent with
   `docs/operations.md:10-22`.

### Medium priority

6. **Replace fragile schema validation with a durable CI contract.**
   `packages/db/validate-schema.ts:34-45` reads Drizzle's internal
   `drizzle:Columns` symbol, and `:50-61` shells out to `npx wrangler` against
   local D1. It compares columns only (`:68-105`), not types, nullability,
   defaults, indexes, foreign keys, or migration ordering. It also relies on a
   pre-migrated local database (`:1-6`). Pin the executable, provision a clean
   local D1 from migrations, validate the complete contract, and fail CI on
   drift. Keep `packages/db/schema.ts` and SQL migrations updated together as
   required by `AGENTS.md:17-20`.

7. **Normalize the JavaScript toolchain.** The repository pins Bun in
   `package.json:5` and uses `bun install --frozen-lockfile` in the import
   workflow (`import-reddit.yml:56-60`), but scripts invoke `npm`, `npx`, and
   package-local tooling (`package.json:7-23`; `validate-schema.ts:51`). Make
   one package-manager invocation policy explicit, pin Node/Bun/Wrangler in CI,
   and ensure local and CI commands resolve the same Wrangler binary.

8. **Add per-environment observability and deployment verification.** Current
   operations document status/error triage and artifact files
   (`docs/operations.md:79-93`), but there is no deployment health check,
   request/error/latency signal, migration-apply metric, alert, or preview vs
   production separation. Emit structured, secret-free run/deploy identifiers;
   retain pipeline summaries; and verify each environment with a smoke request
   plus a read-only D1 query. Configure separate Workers Logs/metrics and
   alert ownership for preview and production.

9. **Test the Worker runtime, not only static output.** Static artifact checks
   prove `dist/client` exists, but do not exercise bindings, D1 queries, or
   Cloudflare runtime behavior (`verify-static-artifact.mjs:5-17`). Add
   `unstable_dev`/Miniflare or the current Cloudflare Vitest integration test
   coverage for the deployed handler, D1 reads, missing-binding failure, and
   preview/production binding selection. Cloudflare-specific APIs and limits
   are version-sensitive: check them against the repository's pinned Wrangler
   (`package.json:26`, currently `^4.83.0`) before implementation.

### Low priority

10. **Close documentation drift and improve onboarding.** README claims and
    future-state items remain mixed with current behavior (`README.md:44-66`,
    `:130-156`); the handoff still says to add deployment and real resources
    (`docs/session-handoff.md:241-253`), while operations documents a remote
    production import. Publish one short runbook covering install, exact
    Node/Bun/uv/Wrangler versions, local D1 seed, preview deploy, production
    approval, rollback/recovery, and secret setup. Link every command to its
    owning workflow and mark future work explicitly.

11. **Make narrow deployment checks a release evidence bundle.** Existing
    checks cover `index.html`, a static posts directory, and two prerender flags
    (`verify-static-artifact.mjs:8-17`), but not representative post and
    recommendation routes, response status/content, asset integrity, headers,
    binding identity, or migration state. Add a bounded preview smoke suite and
    publish its URL, selected environment, artifact manifest, migration status,
    and test results as roadmap evidence.

## Worker guidance links

Use the current official guidance, but verify every version-sensitive detail
against the pinned Wrangler version before implementation:

- [Wrangler environments and deployment](https://developers.cloudflare.com/workers/wrangler/environments/)
- [Wrangler configuration](https://developers.cloudflare.com/workers/wrangler/configuration/)
- [D1 migrations](https://developers.cloudflare.com/d1/reference/migrations/)
- [D1 local development and testing](https://developers.cloudflare.com/d1/build-with-d1/local-development/)
- [Workers bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/)
- [Workers secrets](https://developers.cloudflare.com/workers/configuration/secrets/)
- [Workers Logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/)
- [Workers testing with Vitest](https://developers.cloudflare.com/workers/testing/vitest-integration/)
- [Wrangler deploy options](https://developers.cloudflare.com/workers/wrangler/commands/#deploy)

## Roadmap-ready acceptance evidence

A #51 implementation is ready to close only when the roadmap item links all of
the following artifacts from a passing PR/release run:

- A required PR check runs JS checks/build, Python tests, schema validation, and
  Worker-runtime tests; both the web and pipeline lanes are visibly executed.
- A clean temporary local D1 is migrated from `packages/db/migrations`, and
  validation fails on a deliberate schema drift fixture while passing on the
  committed schema; the check does not depend on a developer's existing state.
- Preview and production deploys show distinct Wrangler environment names,
  D1/KV/R2 binding IDs, and credentials; a preview job cannot read or write
  production D1. The evidence includes a read-only identity check.
- A migration plan/dry-run artifact lists SQL, checksums, target environment,
  and pending `d1_migrations`; a reviewer inspects the SQL and load summary
  before approval. Applying is a separate protected action, and rollback or
  recovery steps are documented and exercised.
- Secrets appear only in environment secret stores; logs and uploaded artifacts
  contain no values. Production and preview have separate observability
  destinations, with a run/deploy ID, error signal, smoke-check result, and
  owner/alert path.
- A preview smoke run proves representative feed, post, and recommendation
  responses, static asset/headers integrity, and the expected binding. The
  release bundle records the exact Node/Bun/uv/Wrangler versions and pins any
  Cloudflare behavior whose semantics were checked against pinned Wrangler.
- README, operations docs, ADR, and workflow names agree on static-vs-Worker
  deployment, migration ownership, environment setup, and recovery; the PR
  includes links to this evidence and explicitly states that no source changes
  are implied by this audit.
