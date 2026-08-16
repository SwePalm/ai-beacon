# Proposal — signal lifecycle separate from evidence status

**Status:** proposed; requires human review after use in a live run.  
**Origin:** reflection following the synthetic-content-marking pilot.

## Problem

Beacon's evidence statuses describe what a source supports. They do not yet show what happened to an early signal as later information arrived. Treating a signal as an `observed` record simply because it was retained would conflate a primary-artifact observation with an unvalidated clue.

## Principle

Keep three layers distinct:

| Layer | Question | Current or proposed state |
|---|---|---|
| Source | Does this artifact exist, when, and where? | candidate source |
| Evidence | What bounded claim does it support? | `observed`, `reported`, `researched`, `signal` |
| Claim lifecycle | What happened as later information arrived? | proposed: `open`, `corroborated`, `weakened`, `contradicted`, `expired` |

`observed` remains reserved for a dated primary artifact demonstrating a concrete change. It is not a holding category for an unvalidated signal.

## Proposed lightweight fields

For a retained `signal` record, consider adding a separate lifecycle record or fields that state:

- why the signal is retained;
- what independent evidence would corroborate or weaken it;
- a review date;
- its lifecycle state; and
- links to later evidence records or an explicit expiry reason.

## Corroboration rule to test

Reappearance alone is not confirmation. A signal may become more credible through independent corroboration, such as a provider announcement followed by observable product behaviour, independent reporting, implementation material, or accounts from more than one setting.

## Expiry rule to test

A signal may expire without being treated as an error or silently removed. Preserve it with a dated expiry reason so the instrument can learn which early patterns did and did not develop.

## Decision boundary

Do not change evidence-status definitions or `references/DATA_MODEL.md` yet. Apply the idea manually to at least one live run, review whether it adds useful clarity without unnecessary administrative work, then decide whether to formalise it.
