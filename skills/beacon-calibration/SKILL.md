---
name: beacon-calibration
description: Grade prior Beacon hypotheses against later evidence and propose bounded method improvements. Use at the end of a Beacon cycle or before selecting a new cycle condition.
---

# Beacon Calibration

Read prior open claims, due signal reviews, and later evidence. Write `calibration.md` in the active run directory with each claim graded as `supported`, `weakened`, `unresolved`, `expired`, or `falsified`, plus a source-backed reason. Append due signal reviews with outcomes to `state/signals.jsonl`. If updating `state/CALIBRATION.md`, append a dated entry; never rewrite earlier entries.

Propose method changes separately under `proposals/`; never silently change a skill, ledger, evidence status, or theme. Run `scripts/validate-ledgers.sh` if the cycle appended JSONL state. Add a calibration heuristic only when at least two dated run findings support a specific pipeline-bias claim. Give it an expiry, keep at most 10 active heuristics, and retire it rather than silently replacing it. Prefer a small number of expiring calibration heuristics over permanent rules.
