import { defineConfig } from "astro/config";
import cloudflare from "@astrojs/cloudflare";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  output: "static",
  adapter: cloudflare({
    prerenderEnvironment: "workerd",
  }),
  vite: {
    plugins: [tailwindcss()],
  },
});
