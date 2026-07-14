---
id: 20
title: "Auto-commit and push the new data migration from the pipeline"
type: task
parent: 10
status: open
assignee: max
blocked_by: [19]
---

## Question

When `pipeline:load` produces a new file in `packages/db/migrations/` (it does this unconditionally — no flag, per ticket 19's re-scope), the pipeline should auto-stage, auto-commit, and auto-push it to the configured git remote. The commit message is generated, e.g. `data: 1k-post run, 0005_seed_20260714T1500Z.sql` (using the emitted file's name). The push goes to `origin` on the current branch. This needs to fail gracefully if the working tree is dirty (uncommitted changes from a prior session) — the user should be told to clean up, not have their changes committed by the pipeline. The auto-push is opt-out via a flag (e.g. `--no-push`) for the 1k verification run, where the dev wants the migration file to exist locally but doesn't want a real push yet. Verify: (1) on a clean working tree, `pipeline:load` produces the file, commits it, and pushes; (2) on a dirty working tree, the command exits with a clear error and doesn't touch git; (3) with `--no-push`, the file is committed locally but the push is skipped.
