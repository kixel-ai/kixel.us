# kixel.us

The one-page site for **Kixel, Corp.** — the company behind
[moq.dev](https://moq.dev) (the open source Media over QUIC stack) and
[moq.pro](https://moq.pro) (the managed CDN).

It's a single static `index.html` — no build step, no framework — served by
Cloudflare static assets and deployed with [Wrangler](https://developers.cloudflare.com/workers/wrangler/).

```
public/
  index.html    the whole site
  favicon.svg   pixel "K"
  moq.svg       moq.dev wordmark (inline product link)
  moq-pro.svg   moq.pro wordmark (inline product link)
```

## Develop

```bash
bun install
bun run dev        # wrangler dev on http://localhost:8787
```

Or just open `public/index.html` in a browser — there's no server-side logic.

## Deploy

```bash
bun run deploy     # wrangler deploy
```

Point the `kixel.us` domain at the `kixel-us` Worker as a custom domain (already
declared in [`wrangler.jsonc`](wrangler.jsonc); confirm it in the Cloudflare
dashboard the first time).
