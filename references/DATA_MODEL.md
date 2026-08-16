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

