# Project Classification

Every repository, portfolio entry and case study declares exactly one classification. This is the single most important honesty control we have.

## The labels

| Label | Means | Use when |
|---|---|---|
| **OxNeural Project** | Built by OxNeural, for OxNeural or publicly released | The company built it and owns it |
| **OxNeural Internal Project** | Built by OxNeural for our own use | Internal tooling, labs, standards, experiments |
| **Client Project** | Built by OxNeural under a paid engagement | There is an actual client and an actual engagement |
| **Personal Project** | Built by an individual outside OxNeural | A team member's own work |
| **Previous Work** | Built before OxNeural, or at another employer | Predates the company or belongs to a prior role |
| **Team Member Portfolio** | An individual's portfolio or profile site | Personal showcase |
| **Academic Project** | Coursework, dissertation, university project | Built for study |
| **Prototype** | Exploratory, not production | Proof of concept, spike, unfinished by design |

## Rules

**"Client Project" requires an actual client.** Not a prospect. Not a demo built to look like client work. Not a personal project reframed. If there was no engagement, it is not a client project.

**Personal work stays personal.** Repositories on team members' own GitHub accounts are their work. OxNeural may *reference* them, with attribution, as "Selected Previous Work / Team Member Portfolio". OxNeural does not move them, re-host them, or describe them as company output.

**When unsure, pick the more conservative label.** Calling real client work a "Prototype" costs us nothing. Calling a personal project a "Client Project" is a misrepresentation a buyer can discover.

**A project can be reclassified upward only by fact.** An internal project becomes a client project only when a client actually engages us on it.

## Where it goes

In the README, immediately under the title:

```markdown
**Classification:** OxNeural Internal Project
**Status:** Active Development
```

## Status values

Use only these:

| Status | Means |
|---|---|
| `Production` | Running, in real use, maintained |
| `Active Development` | Being built now |
| `Prototype` | Exploratory, not intended for production |
| `Internal` | For our own use only |
| `Archived` | No longer maintained; kept for reference |

Do not invent status values. Do not write "Production-ready" unless it is in production.
