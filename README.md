# OxNeural Handbook

Engineering standards, documentation standards and working practice for OxNeural.

**Classification:** OxNeural Internal Project
**Status:** Active Development

---

## Purpose

One source of truth for how we build, document, review and ship. If a question about process comes up twice, the answer belongs here.

This repository is public on purpose. Clients and collaborators can see how we work before they engage us, and our own standards are held to the same scrutiny as our code.

---

## The rules that matter most

1. **Never publish a claim you cannot support.** No metric without a stated measurement method. No capability we have not built. No client we do not have.
2. **Never mislabel work.** Personal, academic and previous work is labelled as such. It is never presented as an OxNeural project or a client delivery.
3. **Never commit a secret.** Not in code, configuration, comments, commit messages, test fixtures or documentation examples.
4. **Never test without written authorisation.** No exception, no "quick check".
5. **Client work is private by default.** Anything published from an engagement is sanitised and approved in writing first.

---

## Standards

| Document | Covers |
|---|---|
| [`docs/standards/project-classification.md`](docs/standards/project-classification.md) | The classification labels and how to choose one |
| [`docs/standards/repository-standard.md`](docs/standards/repository-standard.md) | Naming, required files, visibility, archiving |
| [`docs/standards/readme-standard.md`](docs/standards/readme-standard.md) | README tiers and required fields |
| [`docs/standards/security-standard.md`](docs/standards/security-standard.md) | Account and repository security baseline |
| [`docs/standards/github-workflow.md`](docs/standards/github-workflow.md) | Branching, review, merge |
| [`docs/standards/git-workflow.md`](docs/standards/git-workflow.md) | Local git practice |
| [`docs/standards/commit-convention.md`](docs/standards/commit-convention.md) | Commit message format |
| [`docs/standards/pull-request-standard.md`](docs/standards/pull-request-standard.md) | What a reviewable PR looks like |

## Development

| Document | Covers |
|---|---|
| [`docs/development/technology-stack.md`](docs/development/technology-stack.md) | The confirmed stack — and what we do not claim |
| [`docs/development/development-standard.md`](docs/development/development-standard.md) | Project setup, code, testing, definition of done |
| [`docs/development/api-standard.md`](docs/development/api-standard.md) | REST API design, errors, auth, documentation |
| [`docs/development/planned-av-wtp-tracker.md`](docs/development/planned-av-wtp-tracker.md) | Planned work — not started, not delivered |

## Cybersecurity

| Document | Covers |
|---|---|
| [`docs/cybersecurity/soc-operations-standard.md`](docs/cybersecurity/soc-operations-standard.md) | SOC service definition, triage, investigation, IR |
| [`docs/cybersecurity/security-testing-authorization.md`](docs/cybersecurity/security-testing-authorization.md) | Authorisation requirements for any security testing |
| [`docs/cybersecurity/detection-content-standard.md`](docs/cybersecurity/detection-content-standard.md) | Detection engineering and originality |
| [`docs/cybersecurity/planned-oxneural-soc-lab.md`](docs/cybersecurity/planned-oxneural-soc-lab.md) | Planned internal lab — not built |

## Operations

| Document | Covers |
|---|---|
| [`docs/operations/access-management.md`](docs/operations/access-management.md) | Least privilege, teams, client access, review |
| [`docs/operations/onboarding-offboarding.md`](docs/operations/onboarding-offboarding.md) | Joining and leaving, same-day offboarding |

## Client delivery

| Document | Covers |
|---|---|
| [`docs/client-delivery/engagement-lifecycle.md`](docs/client-delivery/engagement-lifecycle.md) | Enquiry to closure |
| [`docs/client-delivery/client-confidentiality.md`](docs/client-delivery/client-confidentiality.md) | What may and may not be published |
| [`docs/client-delivery/case-study-standard.md`](docs/client-delivery/case-study-standard.md) | Case study structure and evidence tagging |

## Templates

| Template | Use |
|---|---|
| [`templates/PROJECT-README.md`](templates/PROJECT-README.md) | Project README |
| [`templates/SOW.md`](templates/SOW.md) | Statement of work |
| [`templates/SRS.md`](templates/SRS.md) | Software requirements specification |
| [`templates/CASE-STUDY.md`](templates/CASE-STUDY.md) | Case study |
| [`templates/SECURITY-REVIEW.md`](templates/SECURITY-REVIEW.md) | Security review |

---

## Portfolio status

**Portfolio is currently being built.** Two pieces of work are documented as *planned* — a cloud-based SOC lab and the AV WTP Tracker application. Neither has been built or delivered. Neither is a client project. They are documented here so that when they are built, they are built to standard.

## Changing these standards

Open a pull request stating what problem the change solves. Standards changes require the founder's approval.

## Licence

Documentation is [CC BY 4.0](LICENSE). Code samples are MIT unless a file states otherwise.
