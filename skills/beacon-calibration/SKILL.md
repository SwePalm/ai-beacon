---
name: beacon-calibration
description: Grade prior Beacon hypotheses against later evidence and propose bounded method improvements. Use at the end of a Beacon cycle or before selecting a new cycle condition.
---

# Beacon Calibration

Read prior open claims and later evidence. Write `calibration.md` in the active run directory with each claim graded as `supported`, `weakened`, `unresolved`, `expired`, or `falsified`, plus a source-backed reason. If updating `state/CALIBRATION.md`, append a dated entry; never rewrite earlier entries.

Propose method changes separately under `proposals/`; never silently change a skill, ledger, evidence status, or theme. Run `scripts/validate-ledgers.sh` if the cycle appended JSONL state. Prefer a small number of expiring calibration heuristics over permanent rules.
