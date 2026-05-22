---
id: an-021
hypothesis: cobidder-profile-distinct
type: robustness
question: Does the "first-time FL" effect on cobidder concentration survive propensity-score matching?
status: pending
created: 2026-05-22
script: scripts/30_first_time_fl_matching.R
target: output/tables/tab_first_time_fl_matching.tex
tags: ["H:cobidder-profile-distinct", matching, first-time-fl, robustness]
design:
  sample: "Firms entering the FL14 stratum for the first time vs matched controls"
  specification: "Propensity-score matching; outcome = cobidder indicator"
  notes: "Headline: first-time FL +0.10 unconditional (winsorized) → +0.06 (p=0.31) under PS matching. Demoted to appendix."
---

# AN-021: First-time FL effect under PS matching

## Question

Does the "first-time FL" effect on cobidder concentration survive
propensity-score matching? The matched estimate is the disciplined version
of the unconditional comparison.

## Design

- **Sample**: firms entering the FL14 stratum for the first time vs PS-
  matched controls.
- **Specification**: propensity-score matching on participation history.
- **Outcome**: cobidder indicator.

## Results

*Pending.* Headline: first-time FL +0.10 unconditional (winsorized) → +0.06
(p = 0.31) under PS matching. Result demoted to appendix.

## Interpretation

*Pending.* The first-time-FL channel does not survive PS matching; treat as
suggestive rather than load-bearing. See
[H:cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md).

## Follow-ups

- Heterogeneous match quality diagnostics.
