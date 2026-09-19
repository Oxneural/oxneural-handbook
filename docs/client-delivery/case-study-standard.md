# Case Study Standard

A case study is a credibility instrument. One honest case study beats five inflated ones, because a technical buyer can check inflated claims and will stop trusting everything else you wrote.

## When you may write one

Only about work that actually happened. There is no such thing as a speculative case study. If OxNeural has not delivered the work, there is no case study to write — the correct statement is "Portfolio is currently being built."

Internal projects make legitimate case studies, labelled `OxNeural Internal Project`.

## Required structure

1. **Project** — what it was, classification, dates, team
2. **Problem** — the situation before, in the client's or user's terms
3. **Requirements** — functional, non-functional, constraints
4. **Approach** — how we decided to solve it, and what we rejected
5. **Architecture** — diagram and description, sanitised
6. **Technology** — the actual stack used
7. **Implementation** — how it was built, notable decisions
8. **Security** — what was considered, what was done
9. **Testing** — how it was verified
10. **Deployment** — how it ships and runs
11. **Outcome** — results, every one evidence-tagged (below)
12. **Limitations** — constraints, known gaps, what we would do differently
13. **Documentation** — what exists and where

## Evidence tagging — mandatory

Every outcome statement carries exactly one tag:

| Tag | Means | Must include |
|---|---|---|
| `[Measured]` | We measured it ourselves | Method, tooling, sample, date |
| `[Client-reported]` | The client told us | Who reported it and when |
| `[Expected]` | Anticipated, not yet observed | Explicitly framed as a projection |

**If a statement cannot carry one of these three tags, delete it.**

Examples:

> Median API response time fell from 840ms to 210ms. `[Measured]` — k6, 500 virtual users, 10-minute run, staging, 12 Aug 2026.
>
> The finance team reported month-end close taking roughly a day less. `[Client-reported]` — project review call, 3 Sep 2026.
>
> Expected to support around 50,000 records without architectural change. `[Expected]` — extrapolated from load testing at 10,000; not yet validated at scale.

Never: "Improved performance by 75%." Never: "Significantly reduced manual effort."

## Limitations section — also mandatory

Every case study states what the solution does not do, what was out of scope, what we would change, and what remains unproven.

This feels counterintuitive. It is the strongest credibility signal a young company has. Engineers who cannot describe their own constraints have usually not looked.

## Confidentiality header

Every case study opens with:

```markdown
> **Classification:** Client Project
> **Client:** Anonymised — referred to as "the client"
> **Sanitised:** Architecture generalised; screenshots redacted; data synthetic
> **Publication approved:** <name, role, date> — or: Internal project, no approval required
```

**No case study about client work is published without written client approval.** See [client-confidentiality.md](client-confidentiality.md).

## Template

[`templates/case-study.md`](../../templates/CASE-STUDY.md)
