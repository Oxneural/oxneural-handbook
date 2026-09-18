# Git Workflow

Local practice. Complements [github-workflow.md](github-workflow.md).

## Starting work

```bash
git checkout main
git pull origin main
git checkout -b feature/short-description
```

Always branch from a freshly pulled `main`.

## While working

Commit often locally, in logical units. One commit should be one coherent change — not "end of day", not "wip" in the final history.

```bash
git add -p          # stage deliberately, review what you are committing
git commit
```

`git add -p` over `git add .`: it is how you notice the `.env` file, the debug print and the stray API key before they become permanent.

## Keeping up to date

Rebase onto `main` to keep history linear:

```bash
git fetch origin
git rebase origin/main
```

**Only rebase branches nobody else is working on.** Rewriting shared history creates work for everyone else.

## Before opening a pull request

```bash
git diff origin/main...HEAD
```

Read your own diff, all of it. Most review comments are things the author would have caught themselves by looking.

Check specifically for: secrets, credentials, real hostnames or IPs, client data, debug output, commented-out code, and unrelated changes that belong in a separate PR.

## Tidying history

Before review, squash the noise:

```bash
git rebase -i origin/main
```

Turn "wip", "fix typo", "actually fix it" into the handful of commits that tell the real story.

## If you commit a secret

1. **Rotate the credential immediately.** This is the only step that actually fixes anything.
2. Tell the founder.
3. Then worry about history.

Removing the commit does not undo the exposure. Anyone with a clone, a fork or a cached view still has it. Treat it as compromised from the moment it was pushed.

## .gitignore

Set it up before the first commit, not after. At minimum: `.env`, credentials, virtual environments, `__pycache__`, IDE directories, build output, local databases, and any data directory.

## Things not to do

- Do not `git push --force` to a shared branch. Use `--force-with-lease` on your own branch if you must.
- Do not commit generated files, dependencies or large binaries.
- Do not commit real data, even for testing. Generate synthetic fixtures.
- Do not mix an unrelated fix into a feature branch. Open a second PR.
