import { access, readFile, readdir, stat } from "node:fs/promises";
import { resolve } from "node:path";

const root = resolve(import.meta.dirname, "..");
const config = JSON.parse(await readFile(resolve(root, "dist/wrangler.json"), "utf8"));
if (config.main) throw new Error("asset-only deployment config must not define main");
if (config.assets?.directory?.includes("dist/server") || config.assets?.directory !== "./client") throw new Error("deployment config must select dist/client assets");
const client = resolve(root, "dist/client");
if (!(await stat(client)).isDirectory()) throw new Error("dist/client is missing");
for (const route of ["index.html"]) await access(resolve(client, route));
for (const route of ["posts"]) {
  const entries = await readdir(resolve(client, route), { withFileTypes: true });
  if (!entries.some((entry) => entry.isDirectory())) throw new Error(`no static ${route} route artifacts found`);
}
for (const source of ["src/pages/index.astro", "src/pages/posts/[id].astro"]) {
  if ((await readFile(resolve(root, source), "utf8")).match(/prerender\s*=\s*false/)) throw new Error(`${source} opts out of prerendering`);
}
console.log("Static deployment artifact verified");
