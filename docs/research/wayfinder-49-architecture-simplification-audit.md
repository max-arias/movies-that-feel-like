# Wayfinder #49 — architecture simplification audit

## Scope and conclusion

This report synthesizes the completed explorer module map and oracle review of
the repository's web app, Python pipeline, database package, artifacts, and
deployment boundary. It assesses simplification opportunities without proposing
a rewrite. Evidence is cited as `file:line`; recommendations are roadmap work.
**No source, application, configuration, schema, or migration changes were
made.**

The architecture is already usefully small. Retain the top-level boundaries
`apps/astro`, `apps/pipeline`, and `packages/db`; simplify contracts at their
seams rather than introducing a new platform or framework. The highest-value
sequence is characterization tests, an explicit static-build catalog boundary,
a pure load plan, and narrow artifact/candidate contracts.

## Current module map and boundary assessment

| Boundary | Evidence | Finding |
|---|---|---|
| Web/catalog | `README.md:21-32`; `apps/astro/src/lib/db/index.ts:1-16`; `apps/astro/src/lib/db/queries.ts` | Astro owns presentation and D1 reads; keep it separate from Python ingestion. |
| Pipeline stages | `docs/architecture-plan.md:65-92`; `apps/pipeline/package.json:5-11` | Fetch, normalize, extract, enrich, load, and inspect are recognizable CLI stages; preserve stage seams. |
| DB contract | `AGENTS.md:15-21`; `packages/db/schema.ts:1-231`; `packages/db/migrations/` | SQL migrations remain authoritative and Drizzle is the typed read mirror; do not create a second migration system. |
| Artifact boundary | `apps/pipeline/src/pipeline/artifacts.py:17-49`; `README.md:100-121` | Atomic JSON artifacts and append-only checkpoints already support retry; formalize the contract instead of replacing it. |
| Local load/deploy | `docs/session-handoff.md:33-40,77-85`; `apps/astro/scripts/verify-static-artifact.mjs:5-17` | Local SQLite is an intermediate planner/source for D1 SQL, while the web output is static; make both facts explicit. |

## Prioritized recommendations

### P0 — establish truth before restructuring

1. **Add characterization tests first.** Capture current output for fetch /
   normalize / extract dry-run / enrich dry-run / load / inspect, including
   publishability and retry cases. The existing pipeline tests are concentrated
   in `apps/pipeline/tests/`, while Astro has no corresponding runtime test
   suite (`apps/astro/package.json:5-10`; quality gap summarized in
   `docs/research/wayfinder-51-quality-operations-workflow-audit.md:24-29`).
   Tests must preserve the existing public routes, artifact shapes, generated
   SQL ordering, and idempotent Reddit-post behavior before any cleanup.

2. **Declare the static build catalog boundary.** `astro.config.mjs:5-10`
   selects `output: "static"`; the generated deploy config removes `main` and
   selects `./client` (`apps/astro/scripts/generate-deploy-config.mjs:5-12`),
   and the verifier checks representative static output
   (`apps/astro/scripts/verify-static-artifact.mjs:5-17`). Make the catalog
   contract explicit: Astro consumes a read-only, publishable D1 snapshot at
   build time; it is not an SSR application or an ingestion runtime. Reconcile
   this with the ADRs before changing routing or bindings.

3. **Separate a pure load plan from effects.** The current loader merges
   normalized, extraction, and enrichment artifacts and writes SQLite
   (`apps/pipeline/src/pipeline/load.py:128-158,205-315`), while it also emits
   ordered data migration chunks (`load.py:20-50`). Refactor conceptually into
   a pure plan: validated inputs -> deterministic rows/operations -> separate
   SQLite application and migration SQL emission. Keep file writes, SQLite
   writes, and D1 migration application outside the planner. A plan should be
   inspectable, diffable, deterministic, and safe to rerun.

4. **Make #50's data identity the prerequisite.** The current candidate key is
   a normalized title/year/media-type string (`apps/pipeline/src/pipeline/enrich.py:90-139`),
   and the loader performs provider-ID lookups in application code
   (`apps/pipeline/src/pipeline/load.py:318-458`). Adopt the #50 decision for
   shared candidate identity, evidence uniqueness, provider provenance, and
   refresh semantics before making the load plan or adapter contracts stable.
   The plan must carry identity and provenance, not infer them from display
   titles.

### P1 — simplify and harden seams

5. **Validate a narrow artifact boundary.** Keep atomic JSON writing
   (`apps/pipeline/src/pipeline/artifacts.py:17-33`) and explicit extraction
   completeness checks (`:36-44`), then validate only the fields each consumer
   needs: source artifact ID/hash, stage, schema/version, input lineage,
   status, and terminal counts. Do not build a universal artifact envelope or
   generic repository. The #50 lifecycle decision should supply run IDs and
   provenance; #51 should make these checks required in CI and review.

6. **Put provider-specific behavior behind narrow enrichment adapters.** The
   enrichment module already separates candidate collection from TMDB/IGDB
   resolution (`apps/pipeline/src/pipeline/enrich.py:95-139` and
   `:175-189`), and its cache keys successful resolutions by candidate key
   (`apps/pipeline/src/pipeline/enrich_cache.py:41-90`). Define a small provider
   adapter result containing canonical ID, media type, fields, provider/source
   version, and failure classification. Keep candidate aggregation and
   publishability provider-neutral; do not introduce a broad service layer.

7. **Assign checkpoint ownership to extraction.** Extraction owns its run lock,
   append-only checkpoint, fsync, and resume selection
   (`apps/pipeline/src/pipeline/extract.py:575-642`); preserve that ownership.
   The orchestrator should pass an input identity and consume a final terminal
   artifact, not inspect checkpoint internals. Enrichment's provider cache is a
   different concern (`enrich_cache.py:62-75,126-155`) and should not become a
   shared checkpoint mechanism. #51 should test lock, interruption, resume,
   and final-artifact behavior.

8. **Remove dead code only after characterization tests.** The repository has
   documented drift and future-state references, including the deployment/ADR
   conflict (`docs/adr/0001-cloudflare-native-storage-and-deployment.md:1-3`;
   `docs/research/wayfinder-51-quality-operations-workflow-audit.md:31-41`).
   Delete a module, field, route, or compatibility path only after a test or
   source-usage audit proves it is unreachable and the relevant ADR/docs are
   updated. In particular, do not remove lifecycle tables, cache fields, or
   adapters solely because the current happy path does not query them; #50
   must decide whether their contracts are live.

### P2 — performance and maintenance guardrails

9. **Keep query/data access boring and measurable.** Retain Drizzle for typed
   Astro D1 reads and Wrangler for migrations (`AGENTS.md:17-21`). Validate
   query plans and indexes as #50 requires; preserve the documented batched
   query intent and D1 variable/subrequest constraints
   (`docs/adr/0003-drizzle-d1-data-access.md:322-454`). Simplification means
   fewer hidden effects, not fewer explicit checks.

10. **Make CI and deployment sequencing enforce the boundaries.** #51 should
    run characterization, artifact, load-plan, schema, and static-build checks
    on pull requests, with migration apply isolated from builds. The deploy
    verifier already proves a narrow static catalog (`verify-static-artifact.mjs:8-17`);
    extend evidence rather than introducing a new deployment subsystem.

11. **Treat UI work as a consumer of stable contracts.** #52's styling/UI
    maintainability work should follow the static catalog and load-plan
    decisions, consume the existing Astro query API, and avoid coupling visual
    changes to pipeline/database refactors. This keeps #52 independently
    reviewable and prevents presentation code from becoming an accidental
    integration boundary.

## ADR conflicts requiring an explicit decision

- **ADR 0001 versus actual deployment:** ADR 0001 describes Astro on Cloudflare
  Pages with D1/R2 (`docs/adr/0001-cloudflare-native-storage-and-deployment.md:1-3`),
  but the current build emits an asset-only static deployment. Amend it to
  state the static catalog model, or supersede it with a decision for a Worker;
  do not silently treat static output as SSR.
- **ADR 0002 versus current provider/tooling:** ADR 0002 names Gemini as the
  first LLM provider (`docs/adr/0002-local-python-pipeline-with-instructor-and-gemini.md:1`),
  while README/current extraction guidance names OpenCode Go and
  `deepseek-v4-flash` (`README.md:11-17,44-53`; `extract.py:500-528`). Amend
  ADR 0002 to record the provider adapter/current default and fallback policy,
  or supersede it with a provider-neutral extraction decision.
- **ADR 0003 versus runtime/deployment claims:** ADR 0003 describes Astro 7
  SSR and `output: "server"` (`docs/adr/0003-drizzle-d1-data-access.md:9-15`),
  while the current config is static. Amend the ADR to describe build-time
  catalog reads, or make a deliberate superseding SSR decision. Do not change
  return shapes or introduce SSR as an architectural “fix” without that ADR
  decision.
- **ADR 0003 schema-validation promise:** It says validation runs in CI and
  catches migration drift (`docs/adr/0003-drizzle-d1-data-access.md:456-529`),
  but current validation is column-name-only and relies on local D1
  (`packages/db/validate-schema.ts:30-61,68-105`). #50 defines the stronger
  data contract; #51 makes its evidence a required gate. Amend the acceptance
  language rather than creating an alternate schema source.

## Sequencing dependencies

1. **#50 first:** decide canonical identity, evidence/provenance, import versus
   refresh semantics, lifecycle/artifact ownership, migration isolation, and
   query/index contracts. #49's pure load plan and adapter result cannot be
   stable before these identities exist.
2. **#49 boundary work:** add characterization fixtures, document static build
   catalog behavior, define the pure plan and narrow artifact/provider seams,
   and assign checkpoint ownership. Keep changes test-led and local to current
   modules.
3. **#51 quality/operations:** turn #49/#50 contracts into required PR checks,
   clean-D1 validation, migration review/isolation, static preview verification,
   and runtime/deployment evidence. #51 should not be used to bless an
   unresolved ADR conflict.
4. **#52 styling/UI:** proceed after the static catalog and query contract are
   characterized. It may consume stable data and route fixtures, but should not
   own pipeline, migration, or deployment architecture decisions.

## Explicit non-recommendations

This audit does **not** recommend:

- rewriting the monorepo, pipeline, Astro app, or database package;
- replacing the three top-level boundaries with a single application or a new
  services/workspaces taxonomy;
- adopting a workflow engine, orchestration platform, or distributed queue;
- adding generic repositories, a universal service/container layer, or a
  universal artifact envelope;
- generating TypeScript types or migrations from a second schema source;
- returning to SSR as a default or using SSR to mask static-catalog ambiguity;
- replacing Wrangler SQL migrations with Drizzle Kit migrations;
- moving extraction checkpoints into a shared global store;
- deleting lifecycle data, caches, adapters, or “unused” code before tests and
  an explicit #50 contract decision.

## Roadmap-ready acceptance evidence

Close #49 only when the roadmap item links a passing evidence bundle containing:

- characterization tests for each pipeline stage, current Astro catalog routes,
  artifact shapes, load idempotency, and extraction interruption/resume;
- a documented static-build catalog contract and build artifact manifest proving
  the expected routes/data boundary without an SSR return;
- a pure load plan fixture whose output is deterministic, separately applied to
  SQLite and separately emitted as ordered migration SQL, with no D1/network
  side effects in the planner;
- #50-approved shared candidate identity, provenance, refresh semantics, and
  narrow artifact-boundary validation represented in tests and fixtures;
- provider adapter contract tests for TMDB/IGDB success, ambiguity, cache hit,
  stale/forced refresh, and provider failure without leaking provider logic into
  candidate aggregation;
- checkpoint tests proving extraction owns locking, append-only fsync, resume,
  and final terminal-artifact publication;
- a source-usage/dead-code report showing each removed item is unreachable and
  covered by characterization tests, with no unreviewed lifecycle deletion;
- #50, #51, and #52 dependency links, plus an amended or superseding ADR for
  every deployment/provider/SSR conflict identified above;
- explicit record that this audit made no source changes and that no rewrite,
  workflow engine, generic repository, type generation, or SSR return was
  adopted as part of #49.
