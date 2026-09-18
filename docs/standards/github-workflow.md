# GitHub Workflow

Deliberately simple. Small teams do not need release trains and long-lived integration branches.

```
main
 └─ feature/<short-description>
      └─ pull request → review → merge → delete branch
```

## main

- Always deployable
- Protected: no direct pushes, no force-pushes, no deletion
- Every change arrives through a pull request
- At least one approving review

## Branches

Branch from `main`, merge back to `main`. Keep them short-lived — days, not weeks. A long-lived branch is a merge conflict accumulating interest.

| Prefix | Use |
|---|---|
| `feature/` | New functionality |
| `fix/` | Bug fix |
| `docs/` | Documentation only |
| `refactor/` | Restructuring, no behaviour change |
| `chore/` | Tooling, dependencies, housekeeping |
| `security/` | Security fix |

Delete the branch after merge.

## Pull requests

See [pull-request-standard.md](pull-request-standard.md). Squash-merge by default — it keeps `main` history readable.

## Issues

Use them. An issue is the record of *why* something was done, which the diff never explains on its own. Link the issue from the PR (`Closes #12`).

## Releases

Tag with semantic versioning (`v1.2.0`) when a project has consumers who need to pin a version. Projects without external consumers do not need releases — do not add ceremony for its own sake.

## Proportionality

A one-file internal script does not need the full flow. Use judgement: the smaller and more private the project, the lighter the process. What does not flex is `main` protection on anything public or client-facing, and never committing secrets.
