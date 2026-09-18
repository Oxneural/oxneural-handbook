# Security Review

**Subject:** <repository, application, or system reviewed>
**Classification:** <OxNeural Project | OxNeural Internal Project | Client Project>
**Reviewer:** <name>
**Date:** <date>
**Review type:** <pre-release code review | architecture review | dependency review | pre-publication review>
**Authorisation:** <for client systems: reference to signed authorisation. No testing without it.>

---

## Scope

**Reviewed:** <what was actually examined — repositories, branches, commits, components>

**Not reviewed:** <what was excluded, and why. Be explicit — an unstated exclusion
 reads as coverage.>

---

## 1. Secrets and credentials

| Check | Result | Notes |
|---|---|---|
| No secrets in current tree | Pass / Fail | |
| No secrets in git history | Pass / Fail | <history, not just HEAD> |
| No secrets in commit messages | Pass / Fail | |
| No secrets in test fixtures or docs examples | Pass / Fail | |
| `.env` git-ignored; `.env.example` placeholders only | Pass / Fail | |
| Secret scanning and push protection enabled | Pass / Fail | |

**Any secret ever committed is compromised. Rotate it — removing the commit does not undo exposure.**

## 2. Authentication and authorisation

| Check | Result | Notes |
|---|---|---|
| Authentication on all non-public endpoints | | |
| Authorisation checked per resource, not just per route | | |
| No privilege escalation via parameter manipulation | | |
| Session/token expiry enforced | | |
| Passwords hashed with a modern algorithm | | |

<Per-resource authorisation is the most commonly missed control. Test it by
 requesting another user's object ID while authenticated.>

## 3. Input validation and injection

| Check | Result | Notes |
|---|---|---|
| All external input validated at the boundary | | |
| Parameterised queries — no string-concatenated SQL | | |
| No unsafe deserialisation | | |
| No command injection via shell calls | | |
| Path traversal prevented in file handling | | |
| Output encoded where rendered | | |

## 4. Data protection

| Check | Result | Notes |
|---|---|---|
| No real client data in the repository | | |
| No personal data in logs | | |
| Encryption in transit | | |
| Encryption at rest where required | | |
| Retention and deletion implemented as specified | | |

## 5. Error handling and disclosure

| Check | Result | Notes |
|---|---|---|
| No stack traces returned to clients | | |
| No internal paths, hostnames or IPs in responses | | |
| Exceptions handled, not silently swallowed | | |
| Logging sufficient to diagnose, free of secrets | | |

## 6. Dependencies

| Check | Result | Notes |
|---|---|---|
| Versions pinned | | |
| Dependabot enabled | | |
| Known vulnerable dependencies | | |
| Licences compatible with intended use | | |

## 7. Configuration and infrastructure

| Check | Result | Notes |
|---|---|---|
| Configuration from environment, not hard-coded | | |
| Least privilege on service accounts and IAM roles | | |
| No unnecessary network exposure | | |
| Branch protection on `main` | | |
| GitHub Actions: SHA-pinned, minimum `permissions:` | | |

## 8. Pre-publication check
*(Only when making a repository public, or publishing material from an engagement)*

| Check | Result |
|---|---|
| Full git history reviewed, not just current files | |
| Client name and identifying detail removed everywhere | |
| Architecture generalised; screenshots redacted | |
| Data synthetic | |
| Written client approval obtained | |
| Second-person review completed | |

---

## Findings

| # | Severity | Finding | Location | Impact | Remediation | Status |
|---|---|---|---|---|---|---|
| 1 | Critical / High / Medium / Low / Info | | | | | Open / Fixed / Accepted |

Rate severity on demonstrated impact in this environment. Do not inflate severity to make the review look substantial.

## Residual risk

<What remains after remediation, and why it is accepted. Who accepted it, and when.>

## Outcome

- [ ] **Approved** — no blocking findings
- [ ] **Approved with conditions** — <conditions, and by when>
- [ ] **Not approved** — <blocking findings must be resolved and re-reviewed>

**Reviewer:** ____________________  **Date:** __________

<For client work, findings are confidential and are never published, used in
 marketing, or discussed with other clients — including sanitised.>
