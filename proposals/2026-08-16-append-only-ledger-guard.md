# Proposal — append-only ledger validation guard

**Status:** proposed; requires human review.  
**Trigger:** During the synthetic-content-marking run, an attempted ledger update replaced prior JSONL records. Validation detected the loss and the records were restored before completion.

## Problem

The current instruction that ledgers are append-only expresses an invariant but does not provide a mechanical check before or after a run writes state. A well-intentioned update can therefore violate the invariant.

## Bounded change to consider

Add a repository-local validation command that, before a state update, records existing line count and IDs; after the update, verifies that every prior line remains byte-identical and that only new newline-delimited records were added. The command should also reject duplicate IDs and malformed JSONL.

## Why this is not yet a method change

This proposal does not alter evidence definitions, the Choice Brief method, or a conclusion. It would make an existing state invariant testable. No script or skill instruction has been changed by this proposal.

## Review questions

1. Should append-only mean byte-preserving records, or may an explicit correction/addendum supersede a prior record?
2. Should the guard be run by the orchestrator, a dedicated validation step, or both?
3. Does the guard require a ledger manifest or version-control baseline to establish the previous state?
