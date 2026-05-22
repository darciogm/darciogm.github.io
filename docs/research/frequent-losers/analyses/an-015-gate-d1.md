---
id: an-015
hypothesis: award-bid-complementarity
type: causal
question: D1 gate diagnostic — does the continuous score dominate FL14 on a harmonized same-sample horse race?
status: pending
created: 2026-05-22
script: scripts/36_gate_d1_harmonized.R
target: output/tables/tab_gate_d1.tex
tags: ["H:award-bid-complementarity", gate-d1, continuous, harmonized]
design:
  sample: "Harmonized same-sample set with both FL14 and continuous variants available"
  specification: "DeLong test of AUC(continuous) vs AUC(FL14)"
  notes: "D1 result: continuous AUC 0.939 dominates FL14 0.911, DeLong p=1.7e-5. Price coefficients same sign."
---

# AN-015: Gate D1 — harmonized same-sample horse race

## Question

D1 gate diagnostic: does the continuous score dominate FL14 on a harmonized
same-sample horse race? Diagnostic D1 from the 2026-04-30 gate battery.

## Design

- **Sample**: harmonized same-sample set with both FL14 and continuous
  variants available.
- **Specification**: DeLong test of AUC(continuous) vs AUC(FL14).

## Results

*Pending.* Headline: continuous AUC 0.939 dominates FL14 0.911 (DeLong
p = 1.7e-5); price coefficients same sign.

## Interpretation

*Pending.* The continuous score is the true signal; FL14 is the auditable
implementation. See [H:award-bid-complementarity](../hypotheses/award-bid-complementarity.md).

## Follow-ups

- Same horse race on temporal-holdout sample.
