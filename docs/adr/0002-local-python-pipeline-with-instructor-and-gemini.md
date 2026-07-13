# Local Python pipeline with Instructor and Gemini

We will start with a local Python import pipeline using Arctic Shift / `arcshiftwrap` for Reddit archive data, Instructor + Pydantic for structured LLM extraction, Gemini as the first LLM provider, and TMDB as the Media Enrichment Source. This keeps the riskiest and most iterative work outside Worker runtime limits while still allowing the pipeline to write final data to Cloudflare D1/R2; OpenRouter or another provider can be added behind the extraction interface if Gemini becomes a poor fit.
