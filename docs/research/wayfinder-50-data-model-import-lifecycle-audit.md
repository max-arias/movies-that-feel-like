# Wayfinder #50 — data model and import lifecycle audit

## Scope and conclusion

This audit covers the durable D1 contract, its Drizzle mirror, pipeline
artifacts, import identity/retry semantics, and the query/index assumptions that
bound the public site. It synthesizes the completed repository review with the
repository's D1 guidance. Evidence is cited as `file:line`; recommendations
are roadmap work. **No source, application, configuration, schema, or
migration changes were made.**

The central risk is that the database currently stores useful output, but not a
fully explicit history of *which source, enrichment provider, extraction run,
and refresh policy* produced it. That makes retries and backfills operationally
possible but semantically ambiguous.

## Prioritized recommendations

### P0 — correctness and data safety

1. **Make evidence identity unambiguous.**
   `recommendation_evidence` has a nullable `evidence_comment_id`
   (`packages/db/migrations/0001_initial.sql:89-101`; mirror
   `packages/db/schema.ts:118-147`). SQLite permits multiple `NULL` values in a
   UNIQUE constraint, so the current key does not prevent duplicate
   recommendation/post evidence when a comment ID is absent. Decide whether
   missing IDs are invalid (make the ID non-null) or represent a distinct
   deterministic source occurrence, then enforce and test that choice at the DB
   level.

2. **Add DB-level canonical Recommendation identity.**
   Recommendations have provider IDs and media type, but only non-unique
   indexes (`schema.ts:76-114`). The loader currently searches by
   `tmdb_id + media_type` or `igdb_id + media_type` in application code
   (`apps/pipeline/src/pipeline/load.py:318-409`), leaving duplicate canonical
   rows possible under retries, races, or null provider IDs. Define the
   identity rules for each Media Enrichment Source, enforce them with suitable
   unique/partial indexes and checks, and preserve unresolved candidates as a
   separate explicitly identified state.

3. **Harden table-rebuild migrations and isolate migration classes.**
   Rebuilds disable foreign keys, drop/recreate tables, and re-enable them
   (`packages/db/migrations/0003_games.sql:8-54` and
   `0028_imported_post_images_source_urls.sql:4-45`), but do not visibly run
   `PRAGMA foreign_key_check` afterward. Require pre/post orphan checks,
   schema/index verification, and an abort if foreign keys cannot be restored.
   Keep authoritative DDL migrations separate from generated content/data
   migrations: the loader explicitly emits user-facing data tables as ordered
   seed SQL (`apps/pipeline/src/pipeline/load.py:20-50`), while Wrangler applies
   everything in `packages/db/migrations`. This is a migration-history and
   rollback boundary, not merely a filename convention.

4. **Define import identity versus refresh/backfill semantics.**
   The domain contract says an existing Reddit ID is never reprocessed
   (`CONTEXT.md:8-11`), while production import excludes every existing ID
   before fetch/normalize (`docs/operations.md:31-37`) and calls failed work
   eligible for a later refresh (`docs/operations.md:39-45`). Image history is
   separately described as a targeted re-fetch/backfill that must not reset
   rows (`docs/operations.md:52-61`). Choose and document two explicit modes:
   immutable Incremental Import for new IDs, and authenticated/versioned
   Refresh/Backfill for selected IDs. Each mode needs an idempotency key,
   overwrite policy, provenance, and a dry-run preview.

### P1 — lifecycle and provenance

5. **Make stage retryability first-class.**
   The schema contains `processing_runs` and `pipeline_artifacts` with status,
   timestamps, checksums, and foreign keys (`packages/db/migrations/0001_initial.sql:124-162`;
   mirror `schema.ts:177-231`), but the current load path operates on local
   artifacts and writes user data; it does not establish a durable run/artifact
   lifecycle for each stage. Define stage input/output contracts, immutable
   artifact IDs/checksums, retry versus resume behavior, attempt number, and
   terminal outcomes. A retry must not duplicate posts, recommendations, links,
   or evidence, and a partial stage must be distinguishable from a successful
   refresh.

6. **Capture provenance for scores, providers, and summaries.**
   `evidence_score` is a mutable aggregate on the Recommendation row
   (`schema.ts:95-106`), while evidence stores comment score and extraction
   confidence (`schema.ts:128-147`; loader `:461-503`). This loses the formula,
   calculation run, and source snapshot behind a changing rank. Store or
   version score inputs/calculations. Likewise, the schema has TMDB/IGDB IDs but
   no explicit Media Enrichment Source/version identity; enrichment chooses
   TMDB/IGDB and emits a candidate key (`apps/pipeline/src/pipeline/enrich.py:90-139`).
   Vibe summaries are stored as one mutable text field with no model/prompt,
   source artifact, or generation run (`load.py:205-272`). Add provenance
   sufficient to reproduce or explain each canonical match, score, and summary.

7. **Make Shared Recommendation Links explicit or explicitly derived.**
   There is no link table: cross-post navigation is implicitly derived by
   joining `recommendation_evidence` to the same Recommendation. The query plan
   documents that join (`docs/adr/0003-drizzle-d1-data-access.md:301-318`), and
   the loader inserts evidence links (`load.py:461-503`). State this as a
   materialized/derived invariant, including whether ambiguous or unresolved
   recommendations may link posts; add a uniqueness and deletion policy if a
   first-class link is needed.

8. **Use lifecycle tables or remove their implied contract.**
   `processing_runs` and `pipeline_artifacts` look like an audit trail and
   reference store, but the current inspection path only reports their tables
   (`apps/pipeline/src/pipeline/inspect.py:175-189`) while artifacts remain
   filesystem JSON. Either wire them into every stage and define retention,
   lineage, and cleanup, or document them as reserved/not-yet-live rather than
   promising operational history.

### P2 — validation and performance guardrails

9. **Validate the complete schema contract, not only column names.**
   `validate-schema.ts` uses an internal Drizzle `Columns` symbol and shells out
   to `npx wrangler` (`packages/db/validate-schema.ts:30-61`), then compares only
   column-name sets (`:68-105`). It does not verify nullability, SQL types,
   defaults, checks, foreign keys, indexes, unique constraints, migration
   order, or data-table/generated-migration separation. Build a clean local D1,
   apply all migrations, compare those properties against the intended contract,
   run `foreign_key_check`, and include deliberate drift fixtures in CI.

10. **Validate query plans against indexes and D1 budgets.**
    The ADR records the former `getPublishedPosts` cost as `1 + N×3`, 61
    subrequests at 20 posts, and proposes four batched queries
    (`docs/adr/0003-drizzle-d1-data-access.md:322-430`). It also calls out the
    D1/SQLite bind-variable limit and chunking requirement
    (`:432-454`). Treat those as tested contracts: use `EXPLAIN QUERY PLAN`
    fixtures for publishable-post ordering, evidence joins, post/recommendation
    lookups, and image/tag foreign-key lookups; verify the intended indexes are
    used; test >99 IDs and realistic row counts; and record query/subrequest
    budgets. Do not infer index use from an index declaration alone.

11. **Use D1 batch semantics correctly.**
    D1 does not support application transactions through Drizzle; repository
    guidance explicitly prohibits `db.transaction()` and requires `db.batch()`
    for multi-statement writes (`AGENTS.md:17-21`; ADR
    `docs/adr/0003-drizzle-d1-data-access.md:531-537`). Define batch boundaries
    for a single import unit, keep migration application under Wrangler, and
    make retries idempotent. A batch is not a substitute for a cross-request
    transaction or a license to mix schema DDL and generated content writes.

## Official D1 and Drizzle guidance

- [D1 database limits](https://developers.cloudflare.com/d1/platform/limits/)
- [D1 migrations](https://developers.cloudflare.com/d1/reference/migrations/)
- [D1 local development](https://developers.cloudflare.com/d1/build-with-d1/local-development/)
- [D1 querying and batch statements](https://developers.cloudflare.com/d1/worker-api/d1-database/)
- [D1 indexes and query optimization](https://developers.cloudflare.com/d1/best-practices/query-optimization/)
- [Drizzle D1 overview](https://orm.drizzle.team/docs/connect-cloudflare-d1)
- [Drizzle schema declarations](https://orm.drizzle.team/docs/sql-schema-declaration)
- [Drizzle indexes and constraints](https://orm.drizzle.team/docs/indexes-constraints)
- [Drizzle batch API](https://orm.drizzle.team/docs/batch-api)

The links describe moving platform/tooling behavior. Confirm syntax, limits,
batch semantics, migration commands, and test-driver behavior against the
repository's pinned Wrangler (`package.json:25-26`, currently `^4.83.0`) and
installed Drizzle versions before implementation. Do not copy the older ADR's
assumptions about SSR, query counts, or D1 limits without rechecking them.

## Roadmap-ready acceptance evidence

A #50 implementation is ready for roadmap closure only when a linked evidence
bundle demonstrates:

- A schema contract test proves evidence identity behavior with missing IDs,
  canonical Recommendation uniqueness across TMDB/IGDB/media type, all FK
  relationships, checks/defaults, indexes, and `PRAGMA foreign_key_check` after
  every table rebuild.
- A clean database can apply DDL migrations without generated content; a
  separate, reviewed data-import artifact can be applied/retried independently,
  with migration IDs, checksums, dependency order, and rollback/recovery notes.
- An Incremental Import fixture leaves an existing Reddit ID unchanged; a
  selected Refresh/Backfill fixture records its reason, source snapshot,
  version, overwrite policy, and dry-run diff, and is idempotent on repetition.
- Every stage has a run ID, input/output artifact IDs and checksums, attempt and
  status, failure/resume semantics, and retention/cleanup evidence. A failed
  retry produces no duplicate user-facing rows or implicit links.
- Recommendation identity, enrichment provider/version, evidence score inputs
  and formula/version, Vibe Summary source/model/prompt version, and derived
  Shared Recommendation Link rules are queryable from stored provenance.
- Query-plan evidence shows expected indexes for the primary feed, post,
  recommendation, evidence, and child-row queries; integration tests cover the
  D1 bind-variable boundary, batched writes, and the agreed subrequest budget.
- The acceptance record names the checked Wrangler/Drizzle versions and links
  the applicable official D1/Drizzle guidance; it explicitly states that this
  audit itself made no source changes.
