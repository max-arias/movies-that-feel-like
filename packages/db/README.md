# db — D1 Schema and Migrations

Run local migrations:

```bash
npm run db:migrate
```

This applies all pending migrations to your local D1 development database via Wrangler.

For remote (production) migrations, append `--remote`:

```bash
npx wrangler d1 migrations apply movies-that-feel-like --remote
```

## Migration dirs per site

Each site has its own D1 database and migrations dir:

| Site | Migrations dir | Contents |
| --- | --- | --- |
| Movies That Feel Like | `migrations/` | schema migrations + generated `NNNN_seed_*` data |
| Games That Feel Like | `migrations-games/` | `0001_schema.sql` baseline (the movies schema, no seed data) + games seeds |

A schema change must be added to **both** dirs. The games wrangler config points
its `migrations_dir` at `../../packages/db/migrations-games`.

`npm run migrate -w packages/db` and `npm run validate-schema -w packages/db`
default to the movies DB. For another site set `D1_DATABASE_NAME` and
`WRANGLER_CONFIG` (path relative to the repo root); `validate-schema` also takes
`--db <name>` and `--config <path>`.
