# README Standard

A README's job is to let a competent stranger understand, run and trust the project. Three tiers, so a 60-line utility is not burdened with an API reference it does not have.

**Never include a section you have nothing real to put in.** An empty "Architecture" heading is worse than no heading.

## Tier 1 — Minimal

For utilities, scripts and small tools.

Title · Classification · Status · Overview · Problem · Usage · Technology Stack · Licence

## Tier 2 — Standard

For most projects. Tier 1 plus:

Objective · Solution · Key Features · Installation · Configuration · Screenshots / Demo · Testing · Contributors

## Tier 3 — Full

For flagship and client-facing projects. Tier 2 plus:

Architecture · Project Structure · API Documentation · Security Considerations · Deployment · Documentation

## Required in every tier

Directly beneath the title:

```markdown
**Classification:** <one of the approved labels>
**Status:** <Production | Active Development | Prototype | Internal | Archived>
```

See [project-classification.md](project-classification.md).

Also required: a licence statement, and accurate installation steps that someone has actually followed from a clean machine.

## Writing rules

**No unsupported metrics.** This is the rule we enforce hardest. Every number in a README needs a stated measurement method.

- Not allowed: "40% faster", "improved efficiency by 25%", "reduced errors", "happier users"
- Allowed: "Processes 10,000 rows in 1.8s on an 8-core M2, measured with `scripts/bench.py` over 20 runs (median)"
- Also allowed: no numbers at all

If you did not measure it, do not state it. Describing what the software *does* is always safe; claiming what it *achieved* rarely is.

**No aspirational capability.** Document what exists on `main` today. Planned work goes under a "Planned" heading, labelled as planned.

**No adjectives doing the work of evidence.** "Enterprise-grade", "robust", "secure", "scalable", "high-performance" mean nothing on their own. Either show the evidence or drop the word.

**No secrets in examples.** Use `YOUR_API_KEY_HERE`, `example.com`, `10.0.0.0/8` style placeholders. Never a real key, hostname or internal IP, even a decommissioned one.

**Screenshots must be sanitised.** No real client data, names, logos, email addresses, account numbers or internal URLs.

## Badges

Only badges that report real, live state: build status, licence, language version. No badges that assert quality, popularity or "enterprise readiness".

## Templates

[Tier 1](../../templates/PROJECT-README.md) · [Tier 2](../../templates/PROJECT-README.md) · [Tier 3](../../templates/PROJECT-README.md)
