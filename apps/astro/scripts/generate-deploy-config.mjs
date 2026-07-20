import { mkdir, readFile, writeFile } from "node:fs/promises";
import { dirname, resolve } from "node:path";

const root = resolve(import.meta.dirname, "..");
const source = await readFile(resolve(root, "wrangler.jsonc"), "utf8");
const config = JSON.parse(source.replace(/\/\/.*$/gm, "").replace(/,\s*([}\]])/g, "$1"));
delete config.main;
delete config.build;
config.assets = { directory: "./client" };
const output = resolve(root, "dist/wrangler.json");
await mkdir(dirname(output), { recursive: true });
await writeFile(output, `${JSON.stringify(config, null, 2)}\n`);
