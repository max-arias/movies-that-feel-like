# Production Reddit import operations

## How the site is served

The site is one Cloudflare Worker plus its static assets. Astro runs with
`output: "server"` and `@astrojs/cloudflare`, and the rendering split is hybrid:

| Route | How it is served |
| --- | --- |
| `/` (feed page 1) | prerendered to `index.html` |
| `/page/2/` … `/page/5/` | prerendered, capped by the number of pages that exist (the unfiltered feed is never prerendered past page 5) |
| `/tag/<slug>/` and its whole pagination | prerendered for every tag with at least 10 displayable publishable posts |
| `/tags/` | prerendered: the complete tag vocabulary, A–Z |
| `/posts/<id>/` | on demand from the `DB` binding |
| `[...feed]` catch-all | on demand: deep feed pages, tags below the threshold, canonical redirects (`/page/1/`, `/tag/<slug>/page/1/`, pages past the end, missing trailing slash) and the 404 panel |

Page size is 25 (`PAGE_SIZE` in `apps/astro/src/lib/db/queries.ts`). The
prerendered set comes from `apps/astro/src/lib/feed-routes.ts`
(`STATIC_FEED_PAGES = 5`, `STATIC_TAG_MIN_POSTS = 10`), and the feed sidebar
links the 150 most-used tags plus the active one (`FEED_TAG_LIMIT`); `/tags/`
is what keeps the long tail reachable. Prerendered and on-demand feeds render
the same component from the same query, so a URL's markup does not depend on
which one answered it.

On-demand responses are cached at the edge per URL — query string included — by
Astro's cache API with the adapter's Cloudflare provider. TTLs live in
`astro.config.mjs` under `routeRules` (`/posts/[id]`: `maxAge` 900, `swr` 86400;
`/[...feed]`: `maxAge` 300, `swr` 3600). Prerendered pages are static assets and
never consult those rules.

`/` is prerendered, so the adapter never reaches an Astro route or middleware
for it: `App.match()` returns nothing and the handler falls back to the asset
store. The legacy feed URLs the pre-slug site linked (`/?tag=<name>&page=<n>`)
are therefore answered in `apps/astro/src/worker-entry.ts`, before the asset
store: `legacyRootRedirect` (from `apps/astro/src/lib/feed-routes.ts`) resolves
the canonical path — an unknown or emptied tag goes to `/`, a page past the end
is clamped to the last page, and `?page=1`, `?page=` and `?page=abc` all mean
page 1. A root that carries no `tag` or `page` parameter is not redirected at
all, so no redirect loop can form; only then is it served from the prerendered
`index.html` through `env.ASSETS`, a tracking-only query string included.
Everything else is delegated to
`@astrojs/cloudflare/entrypoints/server`. `assets.run_worker_first: ["/"]` in
`apps/astro/wrangler.jsonc` is what routes `/` to the Worker at all; without it
the asset store answers first and the redirect never runs, which is why the
production build asserts that flag survived into the generated config.

`astro.config.mjs` must keep returning a plain object. Astro 7 only invokes a
function config for the `server` field, so an earlier
`defineConfig(({ command }) => …)` was merged as an empty object and the build
silently fell back to `output: "static"` with no adapter and no Vite plugins.

## Local development vs. the production build

Development and verification read **local** D1 only. `npm run seed` loads the
latest processed artifacts into the local database and applies the migrations
(`pipeline:load --reset` then `db:migrate`), `npm run db:migrate` applies
migrations alone, and `npm run dev` serves from that state; the adapter config
sets `remoteBindings: false`, so a `remote: true`
binding is ignored and neither the dev server nor a prerender can reach
production D1 or KV.

The production build is snapshot-backed, because the prerendered pages read D1
at build time:

```sh
# 1. Export the production corpus (data only; no schema) — needs the D1 Edit token.
npm run d1:export:prod -- --output /tmp/d1-corpus.sql

# 2. Restore that snapshot into an isolated local database and prerender from it.
D1_SNAPSHOT=/tmp/d1-corpus.sql npm run cf:deploy:prod
```

`cf:deploy:prod` is `node scripts/build-production.mjs --snapshot "$D1_SNAPSHOT"`
followed by `wrangler deploy --config apps/astro/dist/server/wrangler.json`.
The snapshot itself can come from local development — no production credential
is needed to exercise the same path:

```sh
npx wrangler d1 export movies-that-feel-like --local --no-schema --config apps/astro/wrangler.jsonc --output /tmp/dev.sql
node scripts/build-production.mjs --snapshot /tmp/dev.sql
```

`scripts/build-production.mjs` (`--snapshot <file>` required, `--state-dir <dir>`
defaulting to `.build/d1-build-state`, `--db <name>` defaulting to
`D1_DATABASE_NAME` or `movies-that-feel-like`):

1. refuses to run under Cloudflare Workers Builds (`WORKERS_CI`) and refuses a
   snapshot that contains schema DDL or no `INSERT` at all;
2. refuses a state directory that contains the repository or is inside the
   developer's own `apps/astro/.wrangler` — the restore wipes its target;
3. recreates the isolated state directory, applies the tracked migrations to it,
   and aborts if the trigger set it captured is incomplete;
4. drops the summary triggers, empties every application table (the migration
   history re-seeds the whole corpus, so the import would otherwise collide with
   primary keys — and `d1_migrations` is cleared only when the snapshot carries
   production's ledger), imports the snapshot, and recreates the triggers, so
   the exported summary rows land verbatim instead of being counted twice;
5. verifies the restored corpus: posts exist, `site_stats.post_count` is
   positive and equals the publishable, displayable rows, every
   `imported_vibe_posts.is_displayable` matches the image predicate, every
   `tag_counts.count` matches the rows, no tag lacks a `tag_counts` row, and the
   trigger count is back to the captured number;
6. requires the restored `d1_migrations` ledger to equal the tracked
   `packages/db/migrations/*.sql` files — a snapshot from a database that is
   behind the repository is refused, so migrate a local database with
   `npm run db:migrate` (and production through the deploy workflow below)
   before exporting from it;
7. builds Astro with `BUILD_D1_STATE_DIR` pointing at the isolated state, then
   checks the output: `dist/server/wrangler.json` must keep a `main` entrypoint,
   an assets directory, a non-empty `d1_databases`, and
   `assets.run_worker_first` containing `/`; `dist/client` must contain a
   non-empty `index.html` with `/posts/` links, at least one tag page, and
   `tags/index.html`. An empty deployment is worse than a failed one.

The build therefore needs **no Cloudflare credential at all**. The deploy step
does, and the adapter emits the complete deploy config next to the Worker entry
(`apps/astro/dist/server/wrangler.json`: `main` → the built `entry.mjs`,
`assets.directory` → `../client`, the `ASSETS` binding, the `DB` binding and the
`SESSION` KV namespace), so the deploy config is never hand-assembled.

## Deployment

Deployment is owned by `.github/workflows/deploy-production.yml` ("Deploy
production"), one job `deploy` in the `production` environment. It runs on:

- a push to `main` that touches `apps/**`, `packages/**`, `scripts/**`,
  `package.json`, `bun.lock` or that workflow;
- **Run workflow**;
- an explicit call from the import workflow (below).

Its steps: install dependencies (`bun install --frozen-lockfile`); check tracked
migration state; apply pending migrations to production D1; export the corpus;
build from the exported corpus; deploy the Worker; write a job summary with the
commit, ref and status. The build step deliberately gets **no** Cloudflare
credentials, so an attempt to read production D1 during prerendering fails
instead of silently querying production once per page. The export step logs the
snapshot's size and sha256, and the export is data-only (`--no-schema`) so the
schema — and its summary triggers — stays owned by `packages/db/migrations`.

Cloudflare Workers Builds must stay **disconnected** for this Worker (Workers &
Pages → the Worker → Settings → Builds: disable automatic deployments). A
push-triggered plain build has no snapshot, so it would prerender from an empty
database and deploy a site with no posts; `astro.config.mjs` refuses a CI build
without `BUILD_D1_STATE_DIR`, and `scripts/build-production.mjs` refuses outright
when `WORKERS_CI` is set. GitHub Actions is the only deploy path.

Both workflows hold the same concurrency group, `movies-import-production`, with
`cancel-in-progress: false`, so an import and the deploy that follows it never
overlap, a hand-dispatched deploy waits for an in-flight import, and two deploys
never race. The group is on the **jobs**, not the workflows: a called workflow's
group would already be held by the calling run and its job would deadlock behind
it.

### First-time / bootstrap migrations

There is no separate bootstrap script. On a database that has never been
migrated, the deploy workflow's "Apply pending migrations to production D1" step
runs the whole tracked migration history before exporting — the `*_seed_*.sql`
migrations insert the corpus, so the resulting export is not empty. Afterwards
the import workflow applies its own generated data migrations before pushing
`main`, so the deploy-time apply is normally a no-op; it exists for code-only
pushes that add a migration. It is additive on purpose: it runs against the
schema the currently deployed Worker is still serving.

The deploy workflow refuses to proceed when production D1 carries migrations the
repository does not (a release that was applied but whose commit never landed);
pending local migrations are expected and applied by that step.

### Freshness

Prerendered pages change **only on deployment**. An import deploys, so imported
posts appear on the hot pages; image-liveness writes do not. After a liveness or
recovery batch, run **Deploy production** by hand (or push a commit that touches
the deploy workflow's paths) to rebuild the feed, tag and `/tags` pages — the
on-demand pages already reflect the new data, subject to the edge-cache TTLs.

## D1 triggers: displayability and materialized summaries

`packages/db/migrations/0192_displayability_and_summaries.sql` adds the derived
state the app reads instead of recomputing per request:

- `imported_vibe_posts.is_displayable` — 1 iff the post owns at least one image
  with `deleted_at IS NULL`. Separate from `status` on purpose: a publishable
  post whose only image a probe proved dead stops being displayable without its
  status changing, and a restored image makes it displayable again.
- `tag_counts` — one row per tag in the vocabulary with the number of
  publishable, displayable posts carrying it, keyed by the deterministic slug
  `'t-' || lower(hex(CAST(tag AS BLOB)))`. Rows for tags with no live posts stay
  behind with `count = 0` (readers filter `count > 0`), which is what makes the
  vocabulary — and therefore `/tags/` — complete.
- `site_stats` — singleton row (`id = 1`) with the publishable, displayable post
  count.
- Index `idx_imported_vibe_posts_feed(status, is_displayable, created_utc DESC,
  id DESC)` so a feed page's whole ordering comes from one index.

The invariants live in triggers, not in each writer, so the loader, the generated
seed migrations, the liveness probe's generated `UPDATE` statements and any
hand-written SQL all land the same values: image `INSERT`/`UPDATE` of
`deleted_at` or `imported_vibe_post_id`/`DELETE` recomputes the owning post's
`is_displayable` (a scoped `EXISTS`, never a corpus rescan); a post insert
normalizes the derived column and counts it; a publishability change recounts
only that post's tags and adjusts `site_stats` by the delta; tag
`INSERT`/`UPDATE`/`DELETE` recounts only the affected tag; and two repair
triggers restore the summaries if a summary row itself is deleted. `npm run
pipeline:check-images` is intentionally **unchanged** by this: it still emits
plain `UPDATE imported_post_images SET deleted_at = …` / `SET checked_at = …`
statements keyed on the database's own row ids, and the trigger derives
displayability and counts from them.

## Configuration

Configure these GitHub Actions values in the repository's **production
environment** settings:

- Secret `CLOUDFLARE_API_TOKEN`. It is used both to apply migrations and export
  the corpus and to upload the Worker, so it needs **Account → D1 → Edit** and
  **Account → Workers Scripts → Edit**; if the token is scoped per product it
  also needs Workers KV Edit, because the `SESSION` namespace is uploaded with
  the script. Least privilege means not granting anything the two workflows do
  not use.
- Variable `CLOUDFLARE_ACCOUNT_ID`.
- Secrets `OPENCODE_GO_API_KEY`, `TMDB_ACCESS_TOKEN`, `TWITCH_CLIENT_ID`, and
  `TWITCH_CLIENT_SECRET` (Twitch is required because game enrichment is active).

The workflows use Node 22, Python 3.11, Bun with `bun install --frozen-lockfile`,
`uv sync --locked`, npm pipeline commands, and `apps/astro/wrangler.jsonc` for
the database identity. Secrets are supplied only as environment variables; do
not print them or put them in artifacts.

Extraction runs on OpenCode Go. The model is `EXTRACTION_MODEL` at the top of
`.github/workflows/import-reddit.yml` (currently `deepseek-v4.1-flash`), and
both the extraction step and the cache round-trip probe use it — the probe only
hits when its cache key, which includes the model, mode, and base URL, matches
the key the extraction step just wrote. Go requires every request to carry this
client's user agent and an `x-opencode-session` header; `pipeline.extract`
sends both, and the model, mode and endpoint are part of the extraction cache
key, so changing the model starts from a cold cache instead of reusing another
model's output.

## Production import

The production import is `.github/workflows/import-reddit.yml`. It runs at
`00:00 UTC` on Mondays and Thursdays (`0 0 * * 1,4`), and can also be started
with **Run workflow**. The import currently targets the fixed source year
`2026` and fetches newest first with `--sort desc`.

Manual runs accept `limit` (default `100`), `max_pages` (default `50`), and
`verify_cache_round_trip`. Both numeric inputs must be positive integers. The
optional round-trip check reruns at most three original posts using re-exported
cache snapshots; it never feeds probe output to load and requires cache hits
with no provider calls or cache writes.

GitHub Actions uses the production environment's D1 token because the workflow
reads and writes production D1 (exclusion query, cache DML) and applies the
generated migrations; the deploy job it calls exports the corpus. Checkout
credentials are not persisted, and the GitHub write token is exposed only to the
final apply/push step. Outside that export, no build-time credential is needed:
a production build reads the restored local snapshot, never remote D1.

A run that finds new posts ends by calling the reusable deploy workflow as a
final `deploy` job (`needs: import`, `if: released == 'true'`, `secrets:
inherit`). The release commit is pushed with `GITHUB_TOKEN`, which does not
create push events, so the deploy has to be explicit — and it reuses the same
workflow a code push or a manual deploy runs, so production has one deploy path.
A run with no new posts pushes nothing, the job is skipped, and the deployed
site already matches `main`.

## Run and recovery

Each normal import first queries production D1 for every
`imported_vibe_posts.reddit_post_id`. It writes those IDs to a temporary
newline-delimited file and passes that file to both fetch (`--exclude-reddit-ids-file`)
and normalize. New data then runs through fetch, normalize, extract, enrich,
and load. Each stage receives an explicit artifact path from this run; no
stage selects a newest artifact implicitly. Fetch and normalize both receive
the production exclusion file.

Extraction runs with `--allow-errors`, so an individual extraction failure is
tolerated and that post is deferred while successful posts continue through the
pipeline. Enrich runs with `--allow-failed-extraction`, and load runs with
`--allow-partial-extraction`, which loads only posts with successful extraction
results. Failed posts are not marked imported or skipped and remain eligible
for a later refresh. If every extraction fails, load stops; errors from
enrichment or loading still fail the workflow before commit and apply.

After extraction and again after enrichment, the workflow renders cache
observations with the repository's `npm run pipeline:cache-sql` script (which
supplies `PYTHONPATH`), validates every manifest/chunk checksum and record
count, and verifies remote D1 rows/identities after executing each listed chunk
with `wrangler d1 execute --file`. Empty manifests are explicit no-ops. Cache
DML is operational append-only state: it is never applied with `d1 migrations
apply` and never enters a reviewed migration. Snapshots select the newest
fresh row per complete cache identity, compare returned counts with eligible
counts, and restrict enrichment snapshots to the compatible payload schema.

`load` creates data migrations under `packages/db/migrations`; the workflow
canonicalizes manifest paths to repository-relative paths and uploads cache SQL,
source artifacts, manifests, and those migration files as run evidence. The
final release sequence stages and verifies only the exact paths listed by the
load manifest, commits them locally on checked-out `main`, and publishes a
non-PR recovery ref containing that commit. Before any D1 mutation it fetches
`origin/main` and requires it to equal the release commit's parent. It then
compares local and remote migration histories: remote-only entries must be
empty, and local-only entries must equal the manifest exactly. Only after those
guards does it apply the remote D1 migration set, then push `HEAD:main`, and only
then does the explicit deploy job run, so the Worker that gets built serves the
new data. The bot identity is configured for the commit and `gh auth setup-git`
uses the GitHub-supported `GH_TOKEN` credential helper; no pull request is
created.

A load or enrichment error stops before D1 application or the commit. If D1
application succeeds but the main push fails, the recovery ref is intentionally
retained. Do not rerun the import or generate another migration; push the
release commit from that ref to `main`, then verify `d1_migrations` and the
resulting Worker deployment. If main was pushed but the Worker has not rebuilt,
inspect or retry the deploy workflow run. Recovery refs are not pull requests
and must be deleted manually if automatic cleanup cannot remove them.

For historical image URLs, first re-fetch and normalize the target posts. The
normalized artifact embeds one explicit successful refetch outcome per fetched
post; unavailable target outcomes can be supplied in the raw artifact. Then
generate row-safe updates (never reset or reinsert historical image rows):

```sh
npm run pipeline:backfill-images -- --db data/app.db \
  --normalized data/working/normalized/normalized-<artifact>.json \
  --out data/working/image-backfill.sql
```

Before every normal import, the workflow compares tracked migration filenames
on `main` with production `d1_migrations` in both directions and refuses to
proceed if either side has an entry the other lacks. This protects against
applying new data against a stale or unexpected schema. The release-time guard
repeats the comparison after the local commit, allowing only the manifest's
new migration names to be local-only. For recovery after a failed direct push,
inspect `d1_migrations` and the recovery ref's commit first; never create a
second migration for the same import or use raw cache DML as a substitute. The
privileged operator may use `npm run db:migrate:remote` only for an intentional
release recovery, with the production D1 Edit credential — in the normal path
the migrations reach production through the guards above, not by hand.

If a run finds no new Reddit posts, later stages are skipped, no migration is
generated, and no commit or remote D1 write is made. This is an expected
successful no-op only when the fetch scan was complete. A fetch artifact with
`summary.pagination_truncated: true` fails before extraction/loading and is
not treated as a successful no-op. Dispatch another normal run with the same
or a bounded `limit` and a higher `max_pages` for a controlled backfill.

## Failure triage

1. **D1 query/authentication:** verify the Cloudflare token (D1 Edit for
   queries/migrations/export, plus Workers Scripts Edit for the deploy), account
   variable, database access, and `apps/astro/wrangler.jsonc` database identity.
2. **Fetch/normalize:** inspect Arctic Shift availability and the run's raw
   artifact; confirm the exclusion query completed before normalization.
3. **Extract/enrich:** verify the OpenCode, TMDB, and Twitch credentials. Any
   enrichment artifact error fails the workflow before load, so fix credentials
   and retry rather than allowing incomplete posts to be excluded or loaded.
4. **Direct apply/push:** verify the D1 Edit token, inspect remote
   `d1_migrations`, and confirm that only manifest-listed migration SQL was
   staged. If D1 applied but push failed, retry the existing commit rather than
   generating a second migration.
5. **Deploy:** confirm the Workers Builds integration is disconnected, then
   inspect `.github/workflows/deploy-production.yml` for the failing step —
   migration-state check (production ahead of the repository), the export (D1
   credential), the build (snapshot guards in the log), or the upload (Workers
   Scripts Edit). Re-run the deploy workflow from `main`; the build is
   deterministic for a given commit and corpus.

## Image liveness

Reddit keeps serving a 130×60 "image was probably deleted" PNG (1048 bytes) from
the URL of a removed gallery image, so a dead image loads successfully and
cannot be detected in the browser. `imported_post_images` therefore carries
`deleted_at` (set only when a probe positively identified that placeholder) and
`checked_at` (the last successful probe). A post is displayable — shown in the
feed, counted in tag counts, reachable as a detail page — while it owns at least
one image whose `deleted_at` is NULL. The probes never write `is_displayable` or
a count themselves: the `deleted_at` trigger keeps those summaries exact, and
the prerendered pages only pick the change up on the next deployment.

Probe every image that is still live and has not been checked recently:

```sh
npx wrangler d1 execute movies-that-feel-like --remote --json \
  --config apps/astro/wrangler.jsonc \
  --command "SELECT id, source_url FROM imported_post_images i JOIN imported_vibe_posts p ON p.id = i.imported_vibe_post_id WHERE p.status = 'publishable' AND i.deleted_at IS NULL AND (i.checked_at IS NULL OR i.checked_at < datetime('now', '-7 days'))" \
  > /tmp/image-rows.json

npm run pipeline:check-images -- --rows-file /tmp/image-rows.json --out /tmp/image-liveness.sql

npx wrangler d1 execute movies-that-feel-like --remote --file /tmp/image-liveness.sql \
  --config apps/astro/wrangler.jsonc
```

The probe is offline except for the image requests: it reads the candidate rows
from the JSON file and emits SQL that only ever moves a row from unknown to
known. Anything that is neither a clean `200` nor the exact placeholder
signature is recorded as unknown and retried on the next run; a run where more
than a quarter of the probes are unknown fails without writing any SQL rather
than recording a broken probe as evidence. This is operational state, applied
with `d1 execute --file` and never through a migration. After applying it, run
**Deploy production** so the prerendered feed, tag and `/tags` pages catch up.

Recover images for posts that lost their rows (a post whose source gallery
still exists but whose rows are missing):

```sh
npm run pipeline:refetch-images -- --reddit-ids-file /tmp/ids.txt --out /tmp/refetch.sql
npx wrangler d1 execute movies-that-feel-like --remote --file /tmp/refetch.sql \
  --config apps/astro/wrangler.jsonc
```

`check-images` writes the row id it read from the database and every statement is
gated on `deleted_at IS NULL`, so re-applying an older artifact cannot undo a
deletion. `refetch-images` resolves its rows on natural keys — a post's
`reddit_post_id` and the image pair `(imported_vibe_post_id, source_url)` — so it
too is safe to re-apply and never depends on run-local row ids.
