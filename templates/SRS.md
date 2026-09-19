# Software Requirements Specification

**Project:** <name>
**Classification:** <OxNeural Project | Client Project | OxNeural Internal Project>
**Version:** <n>
**Date:** <date>
**Author:** <name>
**Approved by:** <name, date>

---

## 1. Introduction

### 1.1 Purpose

<What this document specifies and who it is for.>

### 1.2 Scope

<What the system will do. What it will not do.>

### 1.3 Definitions

| Term | Meaning |
|---|---|

### 1.4 References

<Related documents, SOW reference, standards.>

## 2. Overall description

### 2.1 Product perspective

<Standalone, or part of a larger system? What it integrates with.>

### 2.2 Users

| User type | Description | Technical level | Key needs |
|---|---|---|---|

### 2.3 Operating environment

<Deployment target, OS, browser support, Python version, database, cloud platform.>

### 2.4 Constraints

<Technology constraints, regulatory constraints, budget, timeline, existing systems
 that cannot change.>

### 2.5 Assumptions and dependencies

<What must be true for this specification to hold.>

## 3. Functional requirements

Each requirement: uniquely identified, testable, unambiguous. If it cannot be tested, it is not a requirement — it is a hope.

### FR-1 — <Title>

| | |
|---|---|
| **Description** | |
| **Priority** | Must / Should / Could |
| **Inputs** | |
| **Processing** | |
| **Outputs** | |
| **Acceptance criteria** | <how it will be verified> |
| **Error handling** | <what happens when it fails> |

### FR-2 — <Title>

<Repeat.>

## 4. Non-functional requirements

Quantify these. "Fast" and "secure" are not requirements.

### 4.1 Performance

<e.g. "The report endpoint returns within 2 seconds for datasets up to 50,000
 rows, measured at the 95th percentile under 20 concurrent users.">

### 4.2 Security

- Authentication: <mechanism>
- Authorisation: <model, and per-resource checks>
- Data at rest: <encryption>
- Data in transit: <TLS>
- Secrets: environment variables, never in source control
- Audit logging: <what is logged>
- Input validation: <at which boundaries>

### 4.3 Reliability and availability

<Target availability, backup frequency, recovery objectives.>

### 4.4 Scalability

<Expected volumes now and anticipated growth.>

### 4.5 Usability

<Accessibility requirements, supported browsers, language.>

### 4.6 Maintainability

<Documentation, test coverage expectations, code standards.>

### 4.7 Compliance

<Data protection obligations, retention, residency, industry regulation.>

## 5. Data requirements

### 5.1 Data model

<Entities, attributes, relationships.>

### 5.2 Data sources

| Source | Format | Volume | Frequency | Owner |
|---|---|---|---|---|

### 5.3 Data quality

<Validation rules, handling of malformed or missing data.>

### 5.4 Personal data

<Does the system process personal data? If yes: what, lawful basis, retention,
 subject rights, deletion. Address this at design stage — retrofitting data
 protection is expensive and usually incomplete.>

### 5.5 Retention and deletion

## 6. External interfaces

### 6.1 User interfaces

### 6.2 APIs

<Endpoints, formats, authentication, rate limits. See the API standard.>

### 6.3 Third-party integrations

| Service | Purpose | Auth | Failure behaviour |
|---|---|---|---|

## 7. Out of scope

<Explicit. This section prevents scope disputes.>

## 8. Open questions

| # | Question | Owner | Needed by | Status |
|---|---|---|---|---|

<Unresolved questions stay visible here until answered. Do not resolve them by
 assumption — record the assumption in 2.5 instead and flag it.>

## 9. Acceptance

The system is accepted when every Must-priority functional requirement passes its acceptance criteria and every non-functional requirement is verified by the stated method.

## 10. Revision history

| Version | Date | Author | Change |
|---|---|---|---|
