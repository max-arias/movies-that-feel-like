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
