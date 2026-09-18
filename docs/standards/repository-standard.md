# Repository Standard

## When to create a repository

Only when there is actual content or an actual, committed piece of work for it. We do not create repositories to make the organization look larger. An empty repository is worse than no repository — it advertises abandonment.

## Naming

Lowercase, hyphen-separated, prefixed.

| Type | Pattern | Example |
|---|---|---|
| Company project | `oxneural-<project>` | `oxneural-invoice-api` |
| Internal tool | `oxneural-internal-<tool>` | `oxneural-internal-log-parser` |
| Security work | `oxneural-<security-thing>` | `oxneural-soc-lab` |
| Standards / docs | descriptive, no prefix needed | `oxneural-handbook` |
| Client work | `client-<codename>-<component>` | `client-atlas-portal` |

**Client repository names must never expose the client.** Use an internal codename agreed with the client. The client's real name does not appear in the repository name, description, topics, or any public metadata.

Rules: no spaces, no underscores, no camelCase, no dates in names, no version numbers in names. Check spelling before you create it — renaming later breaks links.

## Required in every repository

- `README.md` following the [README standard](readme-standard.md), with Classification and Status
- `LICENSE` — or an explicit statement that the repository is proprietary and unlicensed
- `.gitignore` appropriate to the stack
- A one-line GitHub description
- Topics, where they aid discovery

## Required in public repositories

- `CONTRIBUTING.md` — or reliance on the organization default in `.github`
- `SECURITY.md` — or reliance on the organization default
- Branch protection on `main`

## Visibility

| Work | Default |
|---|---|
| Client work | **Private**, always, unless the client authorises publication in writing |
| Internal tooling | Private |
| Standards and documentation | Public |
| Portfolio projects | Public |
| Anything containing real data | Private, and review whether it should exist at all |

Changing a repository from private to public is effectively irreversible — assume anything ever pushed has been seen. Before any private-to-public change, review the **entire history**, not just the current tree.

## Archiving

Archive rather than delete. Archiving is reversible; deletion is not. Before archiving, update the README Status to `Archived` and add a line explaining why and what replaced it.

**Deleting a repository requires the founder's explicit approval.**

## Repository description

One sentence, plain, accurate. State what it does, not how impressive it is.

Good: `Python service that reconciles daily transaction exports against the ledger API.`
Bad: `Enterprise-grade, high-performance reconciliation engine.`
