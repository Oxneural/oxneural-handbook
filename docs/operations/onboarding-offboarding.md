# Onboarding and Offboarding

## Onboarding

### Day one — accounts and security

- [ ] GitHub account identified; **2FA verified enabled** before any access is granted
- [ ] Added to the correct team only — see [access-management.md](access-management.md)
- [ ] Recovery codes stored offline
- [ ] Read and acknowledged: [client-confidentiality.md](../client-delivery/client-confidentiality.md) and [security-standard.md](../standards/security-standard.md)

### Week one — how we work

- [ ] Read the handbook README and the `standards/` documents
- [ ] Set up a local development environment from an existing project README — and **raise a PR fixing anything in that README that was wrong or missing**. This is the fastest way to find stale documentation, and new people are the only ones who notice.
- [ ] Walk through the branch → PR → review → merge flow on a small real change
- [ ] Understand the classification labels and why mislabelling matters

### What we expect people to know

Not the whole stack on day one. But from day one:

- Never commit a secret
- Never publish or discuss client information
- Never claim a capability or a result we cannot support
- Ask when unsure — asking is free, guessing on a client system is not

## Role-specific

**Development** — technology stack, development standard, API standard, project templates.

**Cybersecurity & SOC** — SOC operations standard, detection content standard, and, before any testing work, [security-testing-authorization.md](../cybersecurity/security-testing-authorization.md) in full.

## Offboarding

Complete on the last day, not after:

- [ ] Organization membership removed
- [ ] Personal access tokens and SSH keys revoked
- [ ] Client system access removed; client notified in writing where their systems were involved
- [ ] Any shared secret they had access to rotated
- [ ] Local copies of client data confirmed deleted
- [ ] Work in progress handed over in writing
- [ ] Confidentiality obligations confirmed — they continue after the engagement ends

Record what was removed and when.

## Engagement rotation

When someone leaves a client engagement but stays with OxNeural, the client-access steps still apply in full. Access should follow the work, not the person.
