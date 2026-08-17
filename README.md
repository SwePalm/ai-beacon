# Beacon

Beacon is a living research instrument for a simple question:

> As AI changes the conditions of work and life, what do people, teams, and institutions need to learn, protect, or redesign?

It is not an AI-news tracker, a dashboard, or a course that tells people how to adapt. Beacon makes change easier to see, discuss, and choose within. Its primary audience is the broad middle: people who want to participate in the transition without becoming frontier builders or passive recipients of its defaults.

## The method

Each cycle produces a **Beacon Choice Brief**, the source-grounded master artifact from which articles, guides, workshops, or media can later be made. A brief distinguishes observation, testimony, research, interpretation, and scenario. It presents a choice terrain; it does not prescribe a correct future.

```text
select -> sweep -> grade -> compare -> weave -> brief -> calibrate
```

The portable Agent Skills in `skills/` implement those stages. State is append-only by default; method changes are human-approved and versioned. Beacon also tracks two forms of learning across cycles: a signal lifecycle, so early clues can be corroborated, weakened, contradicted, or allowed to expire; and a capability terrain, so changing conditions can reveal capacities at person, team, institution, and public levels without turning them into a fixed self-improvement syllabus.

## Start here

- [Founding handover](FOUNDING_HANDOVER.md)
- [Pipeline contract](references/PIPELINE_CONTRACT.md)
- [Data model](references/DATA_MODEL.md)
- [Initial theme map](references/THEME_MAP.md)

## Project layout

```text
skills/       portable Agent Skills
references/   shared method, schema, and theme references
state/        append-only ledgers and calibration record
runs/         dated, immutable cycle artifacts
proposals/    human-reviewed changes to the instrument
```
