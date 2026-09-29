# Issue tracker: Obsidian board

GitHub Issues and `TODO` files are not used for this repo. Work items are tickets in the Obsidian vault (`/mnt/c/Users/max/Documents/Obsidian Vault`):

- Project folder: `movies-that-feel-like`, ticket prefix `MTFL`.
- Board: `/mnt/c/Users/max/Documents/Obsidian Vault/movies-that-feel-like/Board.md`.
- Tickets: `/mnt/c/Users/max/Documents/Obsidian Vault/movies-that-feel-like/tickets/MTFL-<n>.md`.

`/mnt/c/Users/max/Documents/Obsidian Vault/Ticket System.md` is the spec for the board format, ticket frontmatter, lanes, operations (create, read, list, comment, claim, resolve, frontier), triage labels and wayfinding. Follow it instead of restating it here.

## Pull requests as a triage surface

External pull requests are not a triage surface.

## When a skill says "publish to the issue tracker"

Create a MTFL ticket: write `tickets/MTFL-<n>.md` and add its card to the bottom of Backlog on `Board.md`, per the **Create** operation in `Ticket System.md`.

## When a skill says "fetch the relevant ticket"

Read `tickets/MTFL-<n>.md` and check its lane in `Board.md` (the **Read / fetch a ticket** operation).

## Wayfinding operations

Used by `/wayfinder`. See the **Wayfinding** section of `Ticket System.md`: a map is a ticket with `type: map` and a `## Children` list; children carry `parent`, `blocked_by` and an optional `wayfinder:<type>` label; claim, frontier and resolve are defined there.
