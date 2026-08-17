# Data Model

Use Markdown for reader-facing artifacts and JSON for machine-readable handoffs. Keep a matching `source_url`, access date, and quotation or paraphrase boundary for every source-backed record.

## Candidate source

```json
{
  "id": "src-2026-08-001",
  "title": "",
  "url": "",
  "published_at": "YYYY-MM-DD",
  "accessed_at": "YYYY-MM-DD",
  "source_type": "primary|reporting|research|social|historical",
  "discovery_lane": "fast|public|slow",
  "candidate_claim": "",
  "notes": ""
}
```

## Evidence record

```json
{
  "id": "ev-2026-08-001",
  "source_id": "src-2026-08-001",
  "status": "observed|reported|researched|signal",
  "supports": "A bounded statement this source actually supports.",
  "does_not_support": "Claims that remain unproven.",
  "affected_people": [""],
  "theme_ids": [""],
  "confidence": "low|medium|high"
}
```

## Readiness hypothesis

```json
{
  "id": "rh-2026-08-001",
  "pattern_id": "",
  "hypothesis": "This condition may make X more important.",
  "response_types": ["learn", "protect", "redesign", "contest", "wait"],
  "scope": "person|team|institution|public",
  "counter_case": "",
  "check_after": "YYYY-MM-DD"
}
```

## Signal lifecycle

An early signal is a retained clue, not a fact. Keep the initial signal and every later review as separate append-only records.

```json
{
  "id": "sig-2026-08-001",
  "record_type": "signal",
  "source_id": "src-2026-08-001",
  "claim": "A bounded, early proposition worth watching.",
  "retained_because": "Why this may matter if it develops.",
  "not_yet_established": "What this does not show.",
  "would_corroborate": ["Independent evidence or later behaviour."],
  "review_after": "YYYY-MM-DD"
}
```

```json
{
  "id": "sigrev-2026-11-001",
  "record_type": "review",
  "signal_id": "sig-2026-08-001",
  "outcome": "corroborated|weakened|contradicted|expired|still_open",
  "reason": "Bounded, source-linked reason.",
  "evidence_ids": ["ev-2026-11-001"],
  "reviewed_at": "YYYY-MM-DD"
}
```

## Capability terrain record

```json
{
  "id": "ct-2026-08-001",
  "pattern_id": "pat-2026-08-001",
  "condition": "The bounded condition under study.",
  "capability": "A capacity that may become more visible or consequential.",
  "loci": ["person", "team", "institution", "public"],
  "why_now": "Conditional link to the pattern and evidence.",
  "not_a_prescription": "Why this is not a universal individual skill requirement.",
  "counter_case": "How the capacity could shift, be absorbed, or not matter.",
  "check_after": "YYYY-MM-DD"
}
```
