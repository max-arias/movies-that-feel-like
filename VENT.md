# Workflow friction

## 2026-07-16 — Long serial LLM rewrite runs are opaque and exceed execution limits

The one-off Vibe Summary rewrite invoked 241 provider calls serially with a 180-second per-request timeout and no progress reporting. Two runs exceeded the execution limit without producing a migration. For bulk local LLM operations, provide bounded concurrency, per-item timeouts, and progress output while keeping final file generation atomic.
