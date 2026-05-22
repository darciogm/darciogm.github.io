---
id: an-019
hypothesis: price-scope-sign-reversal
type: causal
question: Does the negotiated-price coefficient at the procurement-cap threshold reverse sign when FL14 presence is introduced?
status: pending
created: 2026-05-22
script: scripts/13_rdd_cap.R
target: output/tables/tab_rdd_cap.tex
tags: ["H:price-scope-sign-reversal", rdd, cap-threshold, price]
design:
  sample: "BEC items with prices crossing the procurement-cap threshold"
  specification: "Regression discontinuity with FL14 presence indicator and interaction with running variable"
  cutoff: "Procurement-cap threshold (modality-specific)"
  bandwidth: "Default IK bandwidth"
  kernel: "Triangular"
  notes: "Price evidence is reported as scope, not damages"
---

# AN-019: RDD price at procurement cap × FL presence

## Question

Does the negotiated-price coefficient at the procurement-cap threshold
reverse sign when FL14 presence is introduced? The test bears on the price-
scope interpretation of §7.

## Design

- **Sample**: BEC items with prices crossing the procurement-cap threshold.
- **Specification**: regression discontinuity with FL14 presence indicator;
  triangular kernel, default IK bandwidth.
- **Outcome**: log negotiated price.

## Results

*Pending.*

## Interpretation

*Pending.* Read as scope, not damages. See
[H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md).

## Follow-ups

- McCrary density test at cap.
