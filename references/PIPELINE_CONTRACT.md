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

## Human review gates

Human review is required before publishing a Choice Brief and before changing `references/`, skill instructions, evidence-status definitions, or the theme map.

## Output directories

Each run lives at `runs/YYYY-MM-DD/<slug>/`. Required files are immutable after human review. Corrections are appended in a later run or recorded as an explicit addendum.

