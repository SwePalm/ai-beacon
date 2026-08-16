#!/usr/bin/env bash
set -euo pipefail

# Validate Beacon's append-only state ledgers. When a Git baseline exists,
# reject any deletion or alteration of a record committed in HEAD.

root_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$root_dir"

ledgers=(
  state/sources.jsonl
  state/evidence.jsonl
  state/patterns.jsonl
  state/readiness-hypotheses.jsonl
)

fail=0
for ledger in "${ledgers[@]}"; do
  [[ -f "$ledger" ]] || continue

  if ! jq -e . < "$ledger" >/dev/null; then
    echo "invalid JSONL: $ledger" >&2
    fail=1
    continue
  fi

  duplicate_ids=$(jq -r '.id // empty' "$ledger" | sort | uniq -d)
  if [[ -n "$duplicate_ids" ]]; then
    echo "duplicate ledger IDs in $ledger: $duplicate_ids" >&2
    fail=1
  fi

  if git rev-parse --verify HEAD >/dev/null 2>&1 && git cat-file -e "HEAD:$ledger" 2>/dev/null; then
    missing_or_changed=$(mktemp)
    git show "HEAD:$ledger" | while IFS= read -r prior_record || [[ -n "$prior_record" ]]; do
      if ! grep -F -x -q -- "$prior_record" "$ledger"; then
        printf '%s\n' "$prior_record" >> "$missing_or_changed"
      fi
    done
    if [[ -s "$missing_or_changed" ]]; then
      echo "append-only violation in $ledger: a committed record was deleted or altered" >&2
      cat "$missing_or_changed" >&2
      fail=1
    fi
    rm -f "$missing_or_changed"
  fi
done

if [[ "$fail" -ne 0 ]]; then
  exit 1
fi

echo "Beacon ledgers are valid and append-only against the available Git baseline."
