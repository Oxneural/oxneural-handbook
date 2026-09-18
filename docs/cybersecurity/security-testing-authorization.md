# Security Testing Authorization

**No security testing of any system begins without written authorisation. There is no exception to this. Not a quick check, not a passive scan, not "just confirming something".**

Unauthorised testing of systems you do not own is a criminal offence in most jurisdictions, including India under the Information Technology Act. It also ends client relationships and is uninsurable.

## Positioning

> Selective / scope-based security testing subject to authorization, project scope, capability, timeline and resources.

VAPT is a selective service, not OxNeural's primary cybersecurity positioning. We decline engagements where scope, authorisation, capability, timeline or resourcing are not adequate. Declining is cheaper than delivering badly.

## Required before any testing

Every item. No partial starts.

- [ ] **Signed authorisation** from someone with authority over the systems — not the requesting engineer
- [ ] **Written scope**: exact in-scope IPs, domains, applications, accounts
- [ ] **Written exclusions**: what must not be touched
- [ ] **Permitted techniques**: what is allowed and explicitly what is not (DoS, social engineering, physical, credential attacks)
- [ ] **Testing window**: dates and times
- [ ] **Named client contacts**: technical and business, with out-of-hours details
- [ ] **Emergency stop procedure**: how testing is halted and who can halt it
- [ ] **Third-party authorisation**: if anything in scope is hosted by a provider, their authorisation too
- [ ] **Data handling terms**: what happens to anything sensitive encountered
- [ ] **Reporting terms**: who receives the report, retention, disclosure limits

## Scope discipline

Test only what is in scope. If a finding points to a system outside scope: **stop, document, report to the client, and do not proceed** until scope is extended in writing.

"It was reachable from an in-scope host" is not authorisation.

## During testing

- Stay within the window and the permitted techniques
- Do not access, modify, exfiltrate or destroy data beyond what proving the finding requires
- Log everything you do, with timestamps — you may need to prove what you did and did not do
- Stop immediately and notify the client if you cause or suspect disruption
- Stop immediately and notify the client if you find evidence of an existing compromise

## Findings

Every finding: description, affected asset, reproduction steps, evidence, realistic impact, severity with the rating basis, remediation advice.

Rate severity on demonstrated impact in this environment. Do not inflate severity to make a report look substantial — an experienced client will notice, and everything else in the report loses credibility with it.

## Reporting and confidentiality

The report goes only to the recipients named in the authorisation. Findings are never published, never used in marketing, never discussed with other clients, and never included in a case study without separate written authorisation — even sanitised. A sanitised finding can still be attributed by someone who knows the environment.

Store reports encrypted. Delete per the agreed retention period.

## Declining work

Decline when: authorisation is not forthcoming, scope is vague or shifting, the timeline forces unsafe shortcuts, the work exceeds team capability, or the client will not agree an emergency stop procedure.

State plainly what is missing. If capability is the gap, say so — and offer to scope it as Partner / External Capability rather than attempting it.
