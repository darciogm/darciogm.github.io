---
id: an-008
hypothesis: cobidder-profile-distinct
type: descriptive
question: Within the FL14 stratum, how do cobidders differ from non-cobidder FLs along buyer breadth and operational footprint?
status: pending
created: 2026-05-22
script: scripts/28_pbu_characterization.R
target: output/tables/tab_pbu_characterization.tex
tags: ["H:cobidder-profile-distinct", descriptive, buyer-breadth, footprint]
design:
  sample: "FL14 stratum (always-losers above the IQR cutoff)"
  specification: "Within-stratum comparison of cobidders vs non-cobidder FLs; outcomes = #buyers, #tender-items, geographic spread"
  notes: "Controls for tenders_count to rule out volume confound within stratum"
---

# AN-008: Cobidder buyer breadth and operational footprint

## Question

Within the FL14 stratum, how do cobidders differ from non-cobidder FLs
along buyer breadth and operational footprint? The test is within-stratum,
controlling for tenders_count.

## Design

- **Sample**: FL14 stratum (always-losers above the IQR cutoff).
- **Outcomes**: number of distinct buyers, number of tender-items,
  geographic spread (UF coverage).
- **Specification**: cobidder indicator regressed on each outcome with
  `tenders_count` and exposure-stratum controls.

## Results

*Pending.*

## Interpretation

*Pending.* See [H:cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md).

## Follow-ups

- Heterogeneity by procurement modality.
