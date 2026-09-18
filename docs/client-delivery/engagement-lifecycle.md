# Engagement Lifecycle

How an OxNeural engagement runs, from enquiry to closure.

## 1. Enquiry and qualification

Establish: what problem the client actually has, what success looks like, timeline, budget range, who decides.

**Qualify out early and honestly.** Decline when the work needs technology outside [technology-stack.md](../development/technology-stack.md) and no partner is available; when the timeline forces unsafe shortcuts; when security testing cannot be properly authorised; or when the team is not resourced for it.

Declining costs one conversation. Delivering badly costs the reference and the relationship.

## 2. Scoping

Write the requirements down — see [`templates/SRS.md`](../../templates/SRS.md). Capture functional and non-functional requirements, constraints, assumptions, dependencies and explicit exclusions.

**Exclusions matter as much as inclusions.** Most disputes are about something neither side wrote down.

## 3. Proposal and SOW

Use [`templates/SOW.md`](../../templates/SOW.md). It must state deliverables, out-of-scope, timeline, acceptance criteria, commercial terms, change process, IP ownership, confidentiality, and — for SOC or security work — coverage hours, escalation contacts and authorisation boundaries.

Never commit in a proposal to: 24/7 coverage that is not staffed, response times not agreed internally, capability not on the confirmed stack, or a result that depends on the client's systems behaving in ways you have not verified.

Nothing starts before the SOW is signed. No security testing starts before written authorisation — see [security-testing-authorization.md](../cybersecurity/security-testing-authorization.md).

## 4. Setup

- Private repository, client codename, never the client's real name in public metadata
- Access requested, granted, recorded
- Named contacts on both sides, with escalation path
- Agreed reporting cadence

## 5. Delivery

Follow the development and security standards. Report progress on the agreed cadence, including when progress is behind — early, not at the deadline.

**Change control:** anything outside the SOW is a written change request with schedule and cost impact, agreed before work starts. Scope creep absorbed silently is the most common way a profitable engagement becomes a loss.

## 6. Testing and acceptance

Against the acceptance criteria in the SOW, not against a general sense of "done". Record results. Fix defects. Obtain written acceptance.

## 7. Handover

- Documentation the client can actually operate from
- Credentials transferred securely and rotated so OxNeural no longer holds them
- Known limitations stated in writing — do not let the client discover these later
- Support or maintenance terms, if any, in writing

## 8. Closure

- [ ] All OxNeural access to client systems removed
- [ ] Local copies of client data deleted per the agreement
- [ ] Repository archived or transferred as the SOW requires
- [ ] Internal retrospective: what worked, what did not, what changes
- [ ] Case study **only** with written client approval — see [case-study-standard.md](case-study-standard.md)

## Throughout

Confidentiality applies from first contact and continues after closure. See [client-confidentiality.md](client-confidentiality.md).
