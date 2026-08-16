---
name: beacon-evidence-grader
description: Classify Beacon source candidates by evidentiary status and extract only supported claims with provenance. Use after a Beacon signal sweep or when auditing a source-backed assertion.
---

# Beacon Evidence Grader

Read `../../references/PIPELINE_CONTRACT.md` and `DATA_MODEL.md`. Convert candidates to `evidence.json` records only when the source supports a bounded statement.

For every record, specify `supports` and `does_not_support`. Preserve source date, provenance, affected people, themes, and confidence. Write the phase output to the active run directory. When adding source or evidence records to `state/*.jsonl`, append new lines only; never replace, edit, reorder, or delete prior lines. Run `scripts/validate-ledgers.sh` after the append. Mark uncertain material down; never rescue it with model fluency.
