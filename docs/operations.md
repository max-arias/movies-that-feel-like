# Production Reddit import operations

## Cloudflare Worker (on-demand rendering)

The site is one Cloudflare Worker that renders every route on demand from D1
through the `DB` binding declared in `apps/astro/wrangler.jsonc`. Nothing is
prerendered: the feed answers arbitrary `?tag=` / `?page=` queries over a corpus
that grows daily, which cannot be materialised into static files.

```sh
npm run cf:deploy:prod
```

That is `astro build` followed by
`wrangler deploy --config apps/astro/dist/server/wrangler.json`. The
`@astrojs/cloudflare` adapter writes the complete deploy config next to the
Worker entry (`main`, the `ASSETS` binding and the `DB` binding), so the wrangler
config is never hand-assembled and **the build needs no Cloudflare credential at
all**. Deploying needs a token with **Workers Scripts: Edit**; the Worker reads D1
at runtime through its binding, not through an API token.

Rendered responses are cached at the edge per URL — query string included — by
Astro's cache API with the adapter's Cloudflare provider. The TTLs live in
`astro.config.mjs` under `routeRules`.

Deploys for the production site are triggered by the push to `main` that each
import makes (Cloudflare Workers Builds), so a run that finds new posts is what
puts them live.

The production import is `.github/workflows/import-reddit.yml`. It runs at
`00:00 UTC` every day (`0 0 * * *`), and can also be started with
**Run workflow**. The import currently targets the fixed source year `2026`
and fetches newest first with `--sort desc`.

## Configuration

Configure these GitHub Actions values in the repository's **production
environment** settings:

- Secret `CLOUDFLARE_API_TOKEN`, using the least-privilege Cloudflare API token
  scope **Account → D1 → Edit only**.
- Variable `CLOUDFLARE_ACCOUNT_ID`.
- Secrets `OPENCODE_GO_API_KEY`, `TMDB_ACCESS_TOKEN`, `TWITCH_CLIENT_ID`, and
  `TWITCH_CLIENT_SECRET` (Twitch is required because game enrichment is active).

The workflow uses Node 22, Python 3.11, Bun with `bun install --frozen-lockfile`,
`uv sync --locked`, npm pipeline commands, and
`apps/astro/wrangler.jsonc`. Secrets are supplied only as environment
variables; do not print them or put them in artifacts.

Extraction runs on OpenCode Go. The model is `EXTRACTION_MODEL` at the top of
`.github/workflows/import-reddit.yml` (currently `deepseek-v4.1-flash`), and
both the extraction step and the cache round-trip probe use it — the probe only
hits when its cache key, which includes the model, mode, and base URL, matches
the key the extraction step just wrote. Go requires every request to carry this
client's user agent and an `x-opencode-session` header; `pipeline.extract`
sends both, and the model, mode and endpoint are part of the extraction cache
key, so changing the model starts from a cold cache instead of reusing another
model's output.

Manual runs accept `limit` (default `100`), `max_pages` (default `50`), and
`verify_cache_round_trip`. Both numeric inputs must be positive integers. The
optional round-trip check reruns at most three original posts using re-exported
cache snapshots; it never feeds probe output to load and requires cache hits
with no provider calls or cache writes.

GitHub Actions uses the production environment's D1 **Edit** token because the
workflow applies the generated migrations. Checkout credentials are not
persisted, and the GitHub write token is exposed only to the final apply/push
step. No build-time credential is needed anywhere: the site build reads no D1
rows.

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
guards does it apply the remote D1 migration set, then push `HEAD:main`. D1
application happens before the main push so the Worker deploy triggered by that
push serves the new data. The bot identity is configured for the commit and
`gh auth setup-git` uses the GitHub-supported `GH_TOKEN` credential helper; no
pull request is created.

A load or enrichment error stops before D1 application or the commit. If D1
application succeeds but the main push fails, the recovery ref is intentionally
retained. Do not rerun the import or generate another migration; push the
release commit from that ref to `main`, then verify `d1_migrations` and the
resulting Worker deployment. If main was pushed but the Worker has not rebuilt,
inspect or retry the deployment. Recovery refs are not pull requests and
must be deleted manually if automatic cleanup cannot remove them.

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
release recovery, with the production D1 Edit credential.

If a run finds no new Reddit posts, later stages are skipped, no migration is
generated, and no commit or remote D1 write is made. This is an expected
successful no-op only when the fetch scan was complete. A fetch artifact with
`summary.pagination_truncated: true` fails before extraction/loading and is
not treated as a successful no-op. Dispatch another normal run with the same
or a bounded `limit` and a higher `max_pages` for a controlled backfill.

## Failure triage

1. **D1 query/authentication:** verify the Cloudflare token, account variable,
   database access, and `apps/astro/wrangler.jsonc` database identity.
2. **Fetch/normalize:** inspect Arctic Shift availability and the run's raw
   artifact; confirm the exclusion query completed before normalization.
3. **Extract/enrich:** verify the OpenCode, TMDB, and Twitch credentials. Any
   enrichment artifact error fails the workflow before load, so fix credentials
   and retry rather than allowing incomplete posts to be excluded or loaded.
4. **Direct apply/push:** verify the D1 Edit token, inspect remote
   `d1_migrations`, and confirm that only manifest-listed migration SQL was
   staged. If D1 applied but push failed, retry the existing commit rather than
   generating a second migration.
5. **Worker deploy:** confirm the Cloudflare Workers Builds project has the
   repository and the `npm run build` / `npm run cf:deploy` commands, then
   inspect or retry the deployment after the main push.

## Image liveness

Reddit keeps serving a 130×60 "image was probably deleted" PNG from the URL of a
removed gallery image, so a dead image loads successfully and cannot be detected
in the browser. `imported_post_images` therefore carries `deleted_at` (set only
when a probe positively identified that placeholder) and `checked_at` (the last
successful probe). A post is displayable — shown in the feed, counted in tag
counts, reachable as a detail page — while it owns at least one image whose
`deleted_at` is NULL.

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
with `d1 execute --file` and never through a migration.

Recover images for posts that lost their rows (a post whose source gallery
still exists but whose rows are missing):

```sh
npm run pipeline:refetch-images -- --reddit-ids-file /tmp/ids.txt --out /tmp/refetch.sql
npx wrangler d1 execute movies-that-feel-like --remote --file /tmp/refetch.sql \
  --config apps/astro/wrangler.jsonc
```

Both stages key their rows on natural keys (a post's `reddit_post_id`, an
image's `(imported_vibe_post_id, source_url)`), so they are safe to re-apply and
never depend on run-local row ids.

