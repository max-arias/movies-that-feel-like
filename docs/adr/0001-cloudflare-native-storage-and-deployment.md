# Cloudflare-native storage and deployment

We will build the site for Cloudflare from the start: Astro on Cloudflare Pages, D1 as the public app database, and R2 for raw Reddit archives, intermediate artifacts, and cached images. This is a deliberate lock-in to keep the hobby project operationally simple on one platform; the trade-off is that local development needs Cloudflare-compatible adapters and a future migration away from Cloudflare would require storage and deployment changes.
