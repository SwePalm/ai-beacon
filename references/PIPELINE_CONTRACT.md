# Pipeline Contract

## Run lifecycle

| Stage | Skill | Required output | May not do |
|---|---|---|---|
| Select | `beacon-theme-selector` | `selection.md` | Choose solely from novelty or elite discourse |
| Sweep | `beacon-signal-sweep` | `candidates.json` | Treat discovery signals as established facts |
| Grade | `beacon-evidence-grader` | `evidence.json` | Upgrade a source beyond what it supports |
| Compare | `beacon-historical-rhyme` | `history.md` | Claim an analogy proves the present case |
| Weave | `beacon-pattern-weaver` | `pattern.md` | Turn an interpretation into advice |
| Compose | `beacon-choice-brief` | `beacon-brief.md` | Hide uncertainty or stakeholder conflict |
| Calibrate | `beacon-calibration` | `calibration.md` | Rewrite prior records or silently alter method |

## Evidence statuses

- `observed`: a dated primary artifact demonstrates a concrete change.
- `reported`: an attributable account describes an experience or event.
- `researched`: a study or credible synthesis supports a bounded finding.
- `signal`: a weak, early, or engagement-led clue worth investigating.
- `interpretation`: Beacon's inference from other records.
- `scenario`: a future possibility, never a factual prediction.

## Learning invariants

- A signal lifecycle is separate from evidence status. `observed` remains a dated primary-artifact observation, never a holding category for an unvalidated clue.
- Retain a signal only with a bounded claim, what is not yet established, a review date, and a reason to keep watching it. Reappearance alone is not corroboration.
- Later evidence may corroborate, weaken, contradict, or expire a signal through a new append-only review record. Do not rewrite the original signal.
- Treat no material change as a valid sweep or selection outcome. Do not manufacture movement to fill a cycle.
- Carry prior calibration, unresolved signals, and open claims into the next selection. Record how they informed the selection or why they did not.
- Capability terrain names conditional capacities and their locus—person, team, institution, or public system. It must not presume individual upskilling or freeze a permanent skill taxonomy.

## Human review gates

Human review is required before publishing a Choice Brief and before changing `references/`, skill instructions, evidence-status definitions, or the theme map.

## Output directories

Each run lives at `runs/YYYY-MM-DD/<slug>/`. Required files are immutable after human review. Corrections are appended in a later run or recorded as an explicit addendum.
