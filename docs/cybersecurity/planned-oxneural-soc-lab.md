# Planned: Cloud-Based SOC Home Lab

> **Classification:** OxNeural Internal Project
> **Status:** Planned — not started
> **This is planned internal work. It has not been built, deployed or delivered. It is not a client project, has no client, and produces no results to report.**

## Why this project

OxNeural's strongest verifiable capability is security operations, and it currently has no public technical evidence. A documented SOC lab is the highest-credibility first asset the company can publish, because it demonstrates the work rather than asserting it.

It is internal. It will be labelled internal permanently — building a lab does not create a client engagement.

## Intended scope

A cloud-hosted detection and response lab used for internal capability development, detection engineering and analyst practice.

Intended components — all subject to change and none yet deployed:

| Component | Intended role |
|---|---|
| AWS | Hosting environment |
| Wazuh | SIEM / detection and log analysis |
| Shuffle | Security orchestration and automated response |
| IAM | Identity and access control, least privilege |
| Monitoring | Telemetry collection across lab hosts |
| Automated incident response | Playbook-driven containment in the lab only |
| Threat intelligence | Enrichment feeds for triage |

## Honesty constraints

These apply when the project is eventually documented:

- **No client, ever.** This is a lab. It does not become a case study about a client.
- **No invented metrics.** "Reduced mean time to detect by X%" is not a claim a lab can support. Measurements from the lab are measurements of the lab, stated as such with method and date.
- **No implied production scale.** A single-region lab environment is not evidence of enterprise deployment capability.
- **Synthetic data only.** No client logs, no client-derived detections, no real environment detail — including in commit history.
- **Detections must be original** or properly attributed under their open-source licence. See [detection-content-standard.md](detection-content-standard.md).
- **Cost control.** Document a teardown procedure. An abandoned AWS lab bills indefinitely.

## Documentation intent

Built to Full-tier README standard, because this is a shop window: architecture diagram, build steps someone else could follow, detection logic with expected false positives, response playbooks, explicit limitations, and a stated list of what the lab does **not** demonstrate.

The limitations section is the part that earns credibility with a technical buyer.

## Before it starts

- [ ] Confirmed as an internal capability project, not client work
- [ ] AWS account and budget alarm configured
- [ ] Repository created as `oxneural-soc-lab`, `OxNeural Internal Project`
- [ ] Teardown procedure written before the first resource is created
