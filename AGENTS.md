## Agent skills

### Issue tracker

Issues for `max-arias/movies-that-feel-like` live in GitHub Issues; external PRs are not a triage surface. See `docs/agents/issue-tracker.md`.

### Triage labels

Use the default five-label vocabulary: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, and `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

This is a single-context repo with one root `CONTEXT.md` and `docs/adr/`. See `docs/agents/domain.md`.

### CSS framework migrations

Do not treat arbitrary-value utilities (especially `var()` wrappers) as a Tailwind migration. Before converting bespoke CSS, research the target framework version, define semantic design tokens in its native theme system, and map styles to named static utilities. The completion criterion must be the requested stylesheet elimination, verified by a source search and relevant build/runtime checks; retain custom CSS only when the user explicitly accepts an exception.
