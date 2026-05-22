---
id: an-012
hypothesis: gatekeeping-cost-of-evidence
type: descriptive
question: What are the in-sample precision@k and lift metrics for the FL ranking used as a forensic gatekeeper?
status: pending
created: 2026-05-22
script: scripts/42_operational_metrics.R
target: output/tables/tab_operational_metrics.tex
tags: ["H:gatekeeping-cost-of-evidence", precision-at-k, in-sample, operational]
design:
  sample: "Always-losers in BEC 2009–2019; cobidder set from AN-003"
  specification: "Precision@500, precision@1000, lift, pool reduction; in-sample evaluation"
  notes: "In-sample numbers are inflated relative to operational deployment; see AN-013 for temporal-holdout audit"
---

# AN-012: Operational metrics — in-sample precision@k

## Question

What are the in-sample precision@k and lift metrics for the FL ranking
used as a forensic gatekeeper? These are the upper-bound numbers that the
temporal-holdout audit ([AN-013](an-013-precision-at-k-audit.md))
disciplines.

## Design

- **Sample**: always-losers in BEC 2009–2019.
- **Outcome**: cobidder indicator.
- **Metrics**: precision@500, precision@1000, lift, pool reduction.
- **Evaluation**: in-sample.

## Results

*Pending.* Headline (in-sample): precision@500 = 0.132, lift 11.5×;
precision@1000 = 0.097; pool reduction 83% at FL14 cutoff.

## Interpretation

*Pending.* In-sample numbers are inflated; the operational claim is the
temporal-holdout column in [AN-013](an-013-precision-at-k-audit.md).
See [H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md).

## Follow-ups

- Sensitivity to k.
