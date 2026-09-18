# Planned: AV WTP Tracker Web Application

> **Classification:** To be determined — `OxNeural Project` or `Client Project` depending on how it is commissioned
> **Status:** Planned / opportunity — not started
> **This is planned or prospective work. It has not been built, deployed or delivered. Until an actual engagement exists and is signed, it must not be described as a client project or as completed work.**

## Intended scope

A Python web application for tracking and reporting, with data ingestion, model integration, persistent storage and a reporting dashboard.

Intended components — all within the confirmed stack, none yet built:

| Area | Intended approach |
|---|---|
| Application | Python — Django or FastAPI, decided at design stage |
| Data ingestion | CSV processing and file handling |
| Model integration | scikit-learn or River, scope to be defined |
| Database | PostgreSQL |
| Deployment | AWS |
| Reporting | Dashboard and reporting views |

Everything above is on the confirmed technology stack. Nothing outside it is assumed. See [technology-stack.md](technology-stack.md).

## Classification decision

This determines how the project may ever be described:

- Commissioned and paid by a client under a signed SOW → **Client Project**
- Built by OxNeural for its own use or as a product → **OxNeural Project**
- Built by an individual outside company work → **Personal Project** — stays on their own account
- Coursework or dissertation → **Academic Project** — stays on their own account

**Decide this before the first commit.** Reclassifying later, upward, is how misrepresentation happens. Downward is always fine.

## Open questions

- Who is the intended user, and what decision does the tracker support?
- Is there an actual client, or is this internal?
- What is "WTP" in this context, and what data does it involve?
- Does the data include personal data? If so, data protection obligations apply from the design stage, not afterwards.
- What does the model actually predict, and what accuracy would be needed to be useful?

These need answering before scoping. See [engagement-lifecycle.md](../client-delivery/engagement-lifecycle.md).

## Honesty constraints

- No results, accuracy figures or business outcomes stated until measured, with method and date
- No client named without written authorisation
- Real data never enters the repository; synthetic fixtures for development and demos
- If model performance is inadequate for the use case, that is reported, not hidden behind a dashboard

## Before it starts

- [ ] Classification decided and recorded
- [ ] Requirements written — [`templates/SRS.md`](../../templates/SRS.md)
- [ ] If client work: SOW signed before development
- [ ] Data protection position established
- [ ] Repository created with the correct classification in its README
