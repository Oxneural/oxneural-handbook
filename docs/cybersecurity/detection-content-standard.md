# Detection Content Standard

## Originality and licensing

Detection content published or delivered by OxNeural is either original work or open-source content used within its licence, with attribution.

**Never** copy rules from a client environment, a previous employer, or a commercial ruleset into our repositories or into another client's environment. Detection content written during an engagement generally belongs to that client — check the SOW before reusing anything.

## Every rule documents

| Field | Requirement |
|---|---|
| Name | Describes the behaviour detected |
| Description | What it detects and why it matters |
| Logic | The rule itself, commented |
| Data source | Which logs or telemetry it needs |
| Expected false positives | Known benign triggers |
| Severity | With the rating basis |
| Response | What the analyst should do when it fires |
| Reference | ATT&CK technique or public research where applicable |
| Tested | How it was validated, and when |

A rule with no documented response action is an alert nobody knows how to handle.

## Before deployment

- Validated against known-good and known-bad samples in a lab
- False positive rate assessed against real volume where possible
- Response action documented
- Reviewed by a second person

**Never deploy an untested rule to a client environment.** A noisy rule erodes trust in every other alert you send.

## Tuning

Tune rather than disable. A disabled rule looks like coverage on a report and provides none.

Record every tuning change: what changed, why, who approved it, when. Review tuning periodically — exceptions added during an incident often outlive their reason.

## Coverage

Map detections to MITRE ATT&CK. Report coverage honestly, including gaps. A coverage map that shows only what you cover is marketing, not engineering.

## Lab content

`oxneural-soc-lab` and similar internal repositories are `OxNeural Internal Project`. Lab detections are original and built against synthetic or public datasets. No client data, no client-derived rules, no client environment details — including in commit history.
