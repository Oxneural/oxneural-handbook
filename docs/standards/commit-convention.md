# Commit Convention

We use [Conventional Commits](https://www.conventionalcommits.org/). It makes history scannable and changelogs mechanical.

## Format

```
<type>(<optional scope>): <short imperative summary>

<optional body — what changed and why>

<optional footer — issue refs, breaking changes>
```

## Types

| Type | Use |
|---|---|
| `feat` | New functionality |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `refactor` | Restructuring, no behaviour change |
| `test` | Adding or fixing tests |
| `chore` | Tooling, dependencies, housekeeping |
| `perf` | Performance improvement |
| `build` | Build system or packaging |
| `ci` | CI configuration |
| `security` | Security fix |

## The summary line

- Imperative mood: "add", not "added" or "adds"
- No capital letter after the colon, no full stop at the end
- Under 72 characters
- Describe the change, not the file

Good: `fix(auth): reject tokens issued before a password change`
Bad: `fixed some auth stuff`
Bad: `Updated auth.py`

## The body

Explain **why**, not what — the diff already shows what. Wrap at 72 characters. Write it whenever the reason is not obvious, which is most of the time.

```
refactor(ingest): stream rows instead of loading the full file

Loading the whole export into memory failed on files above
roughly 200MB. Streaming keeps memory flat regardless of
input size, at the cost of no longer being able to report
total row count up front.
```

That last clause — the trade-off — is the part future readers need and the part people forget to write.

## Breaking changes

```
feat(api)!: return ISO 8601 timestamps

BREAKING CHANGE: timestamps were Unix epoch integers.
Clients parsing them as integers will break.
```

## Issues

```
Closes #42
Refs #17
```

## Never in a commit message

Secrets, tokens, passwords, real hostnames, internal IPs, client names, or personal data. Commit messages are permanent and are not covered by a later file change.
