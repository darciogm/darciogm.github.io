---
id: an-011
hypothesis: award-bid-complementarity
type: causal
question: Does the continuous log(1+tenders_count) dominate the binary FL14 on the cobidder target?
status: pending
created: 2026-05-22
script: scripts/34_horse_race_fl_continuous.R
target: output/tables/tab_horse_race_continuous.tex
tags: ["H:cobidder-concentration", "H:award-bid-complementarity", horse-race, continuous, binary]
design:
  sample: "Always-losers in BEC 2009–2019"
  specification: "AUC of binary FL14 vs continuous log(1+tenders_count); DeLong test"
  notes: "Continuous dominates per gate diagnostic D1 (DeLong p=1.7e-5)"
---

# AN-011: Horse race — continuous vs binary FL

## Question

Does the continuous `log(1 + tenders_count)` dominate the binary `FL14` on
the cobidder target? The binary rule is auditable but the continuous score
carries the full information.

## Design

- **Sample**: always-losers in BEC 2009–2019.
- **Specifications**: AUC of `FL14` (binary) vs `log(1+tenders_count)`
  (continuous).
- **Test**: DeLong AUC-difference test.

## Results

*Pending.* Headline from gate diagnostic D1: continuous AUC 0.939
dominates FL14 0.911 (DeLong p = 1.7e-5).

## Interpretation

*Pending.* FL14 remains the deployable rule; the continuous score is the
true signal. See [H:cobidder-concentration](../hypotheses/cobidder-concentration.md).

## Follow-ups

- Alternative continuous transformations (rank, percentile).
