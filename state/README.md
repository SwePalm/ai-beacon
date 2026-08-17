# State

State is versioned in Git. Keep each ledger append-only: add new newline-delimited JSON records; never edit, reorder, or delete an existing record. Record corrections as a later addendum with a new ID and a link to the earlier record.

Before staging state changes, run:

```bash
scripts/validate-ledgers.sh
```

The validator checks JSONL syntax and duplicate IDs. Once an initial Git commit exists, it also rejects any deletion or alteration of a record present in `HEAD`.

Create these files when the first run needs them:

- `sources.jsonl`
- `evidence.jsonl`
- `patterns.jsonl`
- `readiness-hypotheses.jsonl`
- `signals.jsonl` (initial signals and later lifecycle reviews)
- `capability-terrain.jsonl` (conditional, multi-level capacity records)
- `CALIBRATION.md`

`CALIBRATION.md` may append an active heuristic only after at least two dated run findings support a specific pipeline-bias statement. Each heuristic must name its supporting run or record IDs and an expiry date. Keep no more than 10 active heuristics; retire or renew them explicitly.
