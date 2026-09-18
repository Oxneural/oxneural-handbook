# Access Management

Least privilege, applied consistently. Most breaches of small companies come through accounts, not code.

## Accounts

- **2FA mandatory** for everyone with access to any OxNeural system. Authenticator app or hardware key; avoid SMS.
- Recovery codes stored offline, somewhere you will still have them if your phone is lost.
- No shared accounts. Ever. Shared accounts destroy attribution.
- Personal access tokens: fine-grained, minimum scope, expiry set.

## GitHub permissions

| Principle | Practice |
|---|---|
| Base organization permission | **None** — access granted per repository through teams |
| Admin | Leadership only |
| Team access | `Write` where required, `Read` otherwise |
| Owners | Founder plus one break-glass second owner |
| Repository creation | Owners only |
| Outside collaborators | Per repository, time-bound, reviewed |

**Two owners minimum.** One owner account is a single point of failure; lose it and the organization is unrecoverable.

## Teams

| Team | Members | Scope |
|---|---|---|
| `leadership` | Muzaffar Moosa Shaikh | Administration, ownership, approvals |
| `development` | Mashkoor Patel, Huzefa Siddique Bagwan, Muddassir Mushtaque | Software and application development |
| `cybersecurity-soc` | Muzaffar Moosa Shaikh, Ravishek Kumar | Security, SOC, detection |

Ravishek Kumar is in `cybersecurity-soc` only, and appears in no development team, development documentation or development repository ownership.

No `creative-digital` team exists until people are actually assigned to it. Empty teams are noise.

## Client systems

- Access requested in writing, granted by the client, scoped to the engagement
- Individual named accounts, never shared credentials
- Minimum privilege for the task — administrative access only where the work genuinely requires it and the client has approved it
- **Access removed the day the engagement closes.** Not "when we get to it"

Keep a record per engagement of what access was granted, to whom, and when it was removed. You will be asked.

## Review

Quarterly: every member, every outside collaborator, every client access grant, every token. Remove what is no longer needed.

## Offboarding

Same day someone leaves a team or an engagement: remove organization membership, revoke tokens and keys, remove client-side access, rotate any shared secret they held, confirm removal in writing to the client where client systems were involved.
