# SOC Operations Standard

Defines how OxNeural delivers security monitoring and SOC services, and — equally important — what we do not claim.

## Service positioning

**What we offer:** SOC operations, security monitoring, SIEM and EDR operations and integration, alert triage, incident investigation, threat investigation, log analysis, incident response, security implementation, security tool deployment, security hardening, vulnerability management, managed security services, security assessments, remote SOC support, shift-based SOC monitoring.

**Coverage wording — use exactly this:**

> Scalable 24/7 SOC capability subject to staffing, scope and SLA requirements.

**We do not claim** a currently staffed round-the-clock SOC, a certified MSSP status we do not hold, guaranteed response times we have not contracted, or client references we do not have.

Coverage is agreed per engagement and written into the SOW. Never verbally, never implied.

## Security testing (VAPT)

> Selective / scope-based security testing subject to authorization, project scope, capability, timeline and resources.

VAPT is not OxNeural's primary cybersecurity positioning. See [security-testing-authorization.md](security-testing-authorization.md) — testing without written authorisation does not happen, ever.

## Alert triage

Every alert gets a recorded disposition. An alert closed without a written reason is an alert nobody can learn from.

| Severity | Target acknowledgement | Target triage |
|---|---|---|
| Critical | 15 minutes | 1 hour |
| High | 1 hour | 4 hours |
| Medium | 4 hours | 1 business day |
| Low | 1 business day | 3 business days |

These are **defaults for proposals**, not promises. Contracted SLAs come from the signed SOW and may differ. Never quote these to a client as committed figures.

**Dispositions:** True Positive · False Positive · Benign True Positive · Duplicate · Insufficient Data.

Record for every alert: what fired, why, what you checked, what you concluded, what you did, who was notified.

## Investigation

1. **Scope** — what asset, account, time window
2. **Collect** — logs, telemetry, EDR detail; preserve before you change anything
3. **Analyse** — build the timeline; establish what actually happened before deciding what it means
4. **Assess** — impact, blast radius, whether it is contained
5. **Act** — within your authorised scope only
6. **Record** — findings, evidence, decisions, reasoning

**Preserve evidence before remediating.** Rebuilding a host destroys the answer to how it was compromised.

## Incident response

Escalate to the client contact named in the SOW. Follow the agreed escalation path — do not improvise one during an incident.

**Never take containment action outside your authorised scope.** Isolating a host, disabling an account or blocking an address without authorisation can cause more business damage than the incident. If it is not in the SOW, ask. If you cannot reach anyone, document the recommendation and keep escalating.

Post-incident: a written report covering timeline, root cause where established, impact, actions taken, and recommendations. Where root cause is not established, say so — do not guess in writing.

## Detection engineering

- Detections are original work or properly attributed to their open-source origin and licence.
- Every rule documents: what it detects, the logic, expected false positives, and the response action.
- Tune rather than disable. A disabled rule is invisible; a tuned rule still works.
- Test before deployment. An untested rule in production is a guess.
- Version-control detection content.

## Logging and evidence

- Sufficient retention agreed in the SOW, not assumed
- Time synchronised across sources — unsynchronised clocks make timelines unreliable
- Integrity preserved; access to evidence restricted and logged

## Client data

Client logs, alerts, findings and reports are confidential. They never enter a public repository, a portfolio, a LinkedIn post, a conference talk, or a conversation with another client. See [client-confidentiality.md](../client-delivery/client-confidentiality.md).

## Handover between shifts

Written, not verbal: open incidents and status, alerts pending triage, anything degraded, anything the next analyst must watch.
