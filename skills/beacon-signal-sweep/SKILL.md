---
name: beacon-signal-sweep
description: Discover dated candidate sources across fast signals, public artifacts, research, and history for a Beacon condition. Use when gathering source candidates for a Beacon cycle.
---

# Beacon Signal Sweep

Create `candidates.json` in the active run directory using the source schema in `../../references/DATA_MODEL.md`. Search three separate lanes: fast signals, public artifacts, and slow research/history. Preserve this phase output in its run directory; do not overwrite another run's candidates.

Use social and engagement-ranked material only to discover language, practices, and cases. Preserve dates and URLs. For any retained early clue, append a `signal` record to `state/signals.jsonl` using the signal-lifecycle schema: name what is not yet established, what could corroborate it, and a review date. Do not infer prevalence from engagement, invent inaccessible source contents, merge sources into a claim, or upgrade a signal by rewriting it.
