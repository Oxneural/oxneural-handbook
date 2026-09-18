# Security Standard

A practical baseline for a small team. Controls that get used beat controls that look impressive.

## Accounts

- **2FA is mandatory** for every member of the organization. Prefer an authenticator app or hardware key over SMS.
- Store recovery codes somewhere safe and offline. Losing them plus your device means losing the account.
- Personal access tokens: fine-grained, minimum scope, expiry set. Never commit one.
- Sign commits where practical.

## Access

Least privilege, always.

| Principle | Practice |
|---|---|
| Base organization permission | **None** — access is granted per repository through teams |
| Admin | Leadership only |
| Team access | `Write` where required, `Read` otherwise; never blanket `Admin` |
| Owners | The founder, plus one break-glass second owner |
| Outside collaborators | Per repository, time-bound, reviewed |
| Offboarding | Access removed the day someone leaves an engagement or the team |

**Two owners minimum.** A single owner account is a single point of failure — lose it and the organization is unrecoverable.

## Repositories

- Branch protection on `main`: no direct pushes, no force-pushes, no deletion
- At least one approving review before merge
- Required status checks where CI exists
- Secret scanning and push protection enabled
- Dependabot alerts enabled; security updates reviewed, not auto-merged blindly

## Secrets

- Never in source control. Not in code, config, comments, commit messages, test fixtures or README examples.
- Use environment variables and GitHub encrypted secrets.
- Commit a `.env.example` with placeholder values; `.gitignore` the real `.env`.
- A secret that has ever been committed is compromised. **Rotate it** — removing the commit is not enough, because forks, clones and caches persist.

## GitHub Actions

- Pin third-party actions to a full commit SHA, not a moving tag
- Set the minimum `permissions:` the workflow needs
- Never echo secrets into logs
- Be deliberate about workflows that run on `pull_request_target` — they can expose secrets to untrusted code

## Before changing security settings

Explain the impact first. Some changes lock people out:

- Enforcing 2FA **removes** members who do not have it enabled
- Branch protection can block an in-flight release
- Changing base permissions can revoke access people are relying on

Announce, give people time to comply, then enforce.

## Irreversible operations

These need the founder's explicit approval, every time:

- Deleting a repository
- Converting a user account to an organization
- Making a private repository public
- Transferring repository ownership
- Renaming the organization
- Removing an owner

## Reporting

Security issues in our repositories: see the [organization security policy](https://github.com/Oxneural/.github/blob/main/SECURITY.md). Never a public issue.
