---
name: beacon-orchestrator
description: Run a complete Beacon research cycle from condition selection through calibration. Use when creating a new source-grounded Beacon Choice Brief or coordinating Beacon phase skills and run state.
---

# Beacon Orchestrator

Read `../../references/PIPELINE_CONTRACT.md`, `DATA_MODEL.md`, and `THEME_MAP.md` before starting. Read active calibration, unresolved signal reviews, and open claims from prior runs before selection. Create one dated run directory and preserve each phase output. Keep run artifacts in `runs/YYYY-MM-DD/<slug>/`; do not place phase outputs in `state/`.

1. Call the selection, sweep, grading, historical, pattern, and Choice Brief phases in that order. Require `selection.md` to state the prior learning considered and whether the evidence delta warrants a new condition.
2. Stop if a required source is inaccessible, a claim cannot retain provenance, or evidence statuses are being conflated. Record the gap; do not invent a substitute.
3. Append any new state records without editing, reordering, or deleting prior JSONL lines. Run `scripts/validate-ledgers.sh` before staging or handing off the run.
4. Run calibration after composing the draft brief.
5. Request human review before publication or an instrument change.

Never rewrite prior ledgers, replace a ledger file to add records, convert a readiness hypothesis into a directive, or treat the absence of new material as a reason to manufacture a run.
