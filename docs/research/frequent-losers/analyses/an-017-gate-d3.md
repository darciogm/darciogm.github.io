---
id: an-017
hypothesis: cobidder-concentration
type: robustness
question: D3 gate diagnostic — does the continuous score preserve the loser-side thesis without FL14?
status: pending
created: 2026-05-22
script: scripts/38_gate_d3_continuous_only.R
target: output/tables/tab_gate_d3.tex
tags: ["H:cobidder-concentration", gate-d3, continuous-only]
design:
  sample: "Always-losers with continuous log(1+tenders_count); FL14 not used"
  specification: "AUC, p-values across specifications; modal asymmetry check"
  notes: "D3 result: all continuous specs +sig (p<0.001); modal asymmetry survives. AUC 0.983 item-level (raw, in-sample) — subject to leakage audit AN-014."
---

# AN-017: Gate D3 — continuous-only thesis

## Question

D3 gate diagnostic: does the continuous score preserve the loser-side
thesis without relying on the FL14 binary? Diagnostic D3 from the
2026-04-30 gate battery.

## Design

- **Sample**: always-losers with continuous `log(1+tenders_count)`; FL14
  not used.
- **Specifications**: AUC, p-values across robustness specs; modal-asymmetry
  check.

## Results

*Pending.* Headline:

- All continuous specifications statistically significant (p<0.001).
- Modal asymmetry survives without FL14.
- AUC 0.983 item-level (raw, in-sample) — subject to leakage audit in
  [AN-014](an-014-leakage-audit-d3.md).

## Interpretation

*Pending.* The thesis does not depend on the FL14 cutoff. See
[H:cobidder-concentration](../hypotheses/cobidder-concentration.md).

## Follow-ups

- Continuous-only operational metrics.
