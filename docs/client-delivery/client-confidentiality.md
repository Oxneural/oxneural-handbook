# Client Confidentiality

Assume every client engagement is confidential unless a signed agreement says otherwise. When in doubt, do not publish.

## Never publish

- Client source code
- API keys, tokens, passwords, certificates, connection strings
- Internal IP addresses, hostnames, network diagrams with real addressing
- Production infrastructure detail
- Client documentation, contracts, pricing or commercial terms
- Logs, database dumps, exports, or any real data
- Personal data of any kind, about anyone
- Security findings, vulnerabilities or assessment reports relating to a client
- The client's name, logo or branding
- Screenshots containing any of the above

This applies to public repositories, public issues, commit messages, README examples, test fixtures, case studies, LinkedIn posts, conference talks and conversations with other clients.

## The default for client repositories

Private. Access granted per person, for the duration of the engagement, removed when it closes.

## Publishing anything from an engagement

Four gates, all of them:

1. **Written client approval** — for the specific material, from someone with authority to give it
2. **Sanitisation** — client anonymised, architecture generalised, data replaced with synthetic equivalents, screenshots redacted
3. **Full-history review** — check every commit, not just the current files. Git history is public too
4. **Second-person review** — someone other than the author checks it before publication

## Security work has a higher bar

Security assessment findings are never published, in any form, identifiable or not, without explicit written authorisation. A sanitised finding can still be attributed by someone who knows the environment. Assume it can be traced back.

Security testing itself only ever happens under written scope and authorisation. No exceptions, no "quick look", no testing something because it seemed in scope.

## If something is exposed

1. Tell the founder immediately. Not after you have investigated — immediately.
2. Do not quietly force-push over it. A rewrite does not remove it from forks, caches or clones.
3. Rotate any exposed credential straight away, before anything else.
4. Make the repository private if it is public.
5. Notify the client, as the agreement requires.
6. Record what happened and what changed as a result.

Nobody is disciplined for reporting an exposure fast. Concealing one is a different matter.

## After an engagement

Remove access. Delete local copies of client data. Keep only what the agreement lets you keep.
