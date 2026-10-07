# Workflow friction

## 2026-07-16 — Long serial LLM rewrite runs are opaque and exceed execution limits

The one-off Vibe Summary rewrite invoked 241 provider calls serially with a 180-second per-request timeout and no progress reporting. Two runs exceeded the execution limit without producing a migration. For bulk local LLM operations, provide bounded concurrency, per-item timeouts, and progress output while keeping final file generation atomic.

## 26-09-17 00:29 — build_and_runtime_verification

Symptom: repeated builds reported `output: "static"` and `[postcss] ENOENT: no such file or directory, open '/home/max/dev/movies-that-feel-like/apps/astro/tailwindcss'`; preview then failed because `dist/server/wrangler.jsonc` did not exist.
Trigger: a function-valued Astro config silently discarded the adapter/plugins, concurrent build ownership obscured the state, and preview used the old generated config filename.
Workaround: resolve Astro configuration to a plain object; serialize build ownership; inspect generated output and use `dist/server/wrangler.json`. Verify legacy redirects against the actual Worker, not route ordering assumptions.
Suggested fix: keep one integration owner for builds and derive preview/deploy paths from generated output. Preserve the plain-object config rule now documented in AGENTS.md.
Impact: high

## 26-09-17 00:29 — noisy_snapshot_restore

Symptom: a successful offline restore/build emitted 288,901 lines (about 12 MB of elided output) and took 486 seconds.
Trigger: replaying the complete migration history, clearing seed data, then importing a data-only snapshot through Wrangler's per-statement output.
Workaround: let the single run finish, inspect actual migration progress, and recover the final summary rather than restarting it.
Suggested fix: retain full diagnostics in a log artifact while printing phase summaries; evaluate a schema-only bootstrap separately before changing the authoritative migration path.
Impact: medium

## 26-10-07 15:55 — agent_background_dev_server

Symptom: Astro reported `Dev server running at http://127.0.0.1:4321`, but the supervised launcher exited and browser navigation returned `net::ERR_CONNECTION_REFUSED`.
Trigger: Astro 7 automatically backgrounds `astro dev` when it detects an agent; supervision tracks the launcher rather than its detached child. Running `astro check` alongside the first server also invalidated its Vite dependency cache.
Workaround: after two CLI launches and a restart, launch the public `dev` API in a foreground Node process: `node --input-type=module -e 'import { dev } from "astro"; await dev({ server: { host: "127.0.0.1", port: 4331 } });'`.
Suggested fix: document a supervised foreground preview command and run checks before starting the preview.
Impact: medium

## 26-10-07 16:56 — github_push_server_error

Symptom: GitHub rejected publication with `remote: Internal Server Error` and `[remote rejected] main -> main (Internal Server Error)`.
Trigger: publishing the verified Gemini cutover and previously approved UI commit.
Workaround: two SSH push attempts and one authenticated HTTPS attempt failed; GitHub's status API still reported `All Systems Operational`. Check the non-forced Git data API path rather than repeatedly retrying the same receive-pack endpoint.
Suggested fix: use bounded retries for server errors, retain request IDs, and distinguish publication failures from local code/test failures. Any alternate publication must preserve commit history and refuse a moved branch rather than force it.
Impact: medium
