# Pull Request Standard

## Size

Keep it small. A reviewable pull request is one a colleague can hold in their head — roughly under 400 changed lines, excluding generated files and lockfiles.

Large PRs get shallow reviews. A reviewer faced with 2,000 lines approves it, and both of you have wasted the exercise. If a change is genuinely large, split it: refactor first, behaviour second.

## Before you open it

- Read your own full diff
- No secrets, credentials, real hostnames, IPs or client data anywhere in it — including tests and examples
- Documentation updated in the same PR if setup, configuration or usage changed
- Tests added or updated where behaviour changed
- No unrelated changes
- Branch and commits follow the conventions

## Description

Use the template. State what changed, why, how it was tested, and anything you want the reviewer to look at closely.

"How it was tested" means what you actually ran and what you observed. "Tested locally" tells the reviewer nothing.

Flag your own uncertainty. "I'm not sure this handles the empty case correctly" gets you a better review than silence.

## Review

At least one approving review before merge. Do not merge your own PR without review.

**As a reviewer:**

- Review the code, not the person
- Distinguish blocking problems from preferences. Say which: "blocking:" / "non-blocking:" / "nit:"
- Explain why, not just what — a review is also how people learn the codebase
- Approve when it is good enough to ship, not when it is how you would have written it
- Look specifically for: secrets, missing error handling, unvalidated input, silently swallowed exceptions, and claims in documentation that are not supported

**As an author:**

- Respond to every comment, even if only to say you have done it
- Push back when you disagree, with reasoning. Review is a conversation, not an inspection
- Do not force-push mid-review without saying so — it destroys the reviewer's place

## Merging

Squash-merge by default. Write a clean squash message following the [commit convention](commit-convention.md). Delete the branch.

Merge only when: approved, checks pass, conversations resolved.

## Proportionality

A typo fix in an internal repository does not need a ceremonial review. What never flexes: anything touching security, authentication, credentials handling, client data, or a public repository gets a real review from a second person.
