---
id: an-013
hypothesis: gatekeeping-cost-of-evidence
type: robustness
question: What are the temporal-holdout precision@k and lift metrics, and how much does the in-sample evaluation inflate operational numbers?
status: pending
created: 2026-05-22
script: scripts/43_precision_at_k_audit.R
target: output/tables/tab_precision_at_k_audit.tex
tags: ["H:gatekeeping-cost-of-evidence", "H:timing-discipline", precision-at-k, temporal-holdout, audit]
design:
  sample: "Always-losers in BEC 2009–2019; train 2009–2016 / test 2017–2019"
  specification: "Precision@500, precision@1000, lift under temporal holdout vs in-sample"
  notes: "Verdict: in-sample is INFLATED. Operational claims rely on temporal-holdout column."
---

# AN-013: Precision@k audit — temporal holdout vs in-sample

## Question

What are the temporal-holdout precision@k and lift metrics, and how much
does the in-sample evaluation inflate operational numbers? The audit
documents the gap honestly.

## Design

- **Sample**: always-losers in BEC 2009–2019.
- **Split**: train 2009–2016, test 2017–2019.
- **Metrics**: precision@500, precision@1000, lift; both columns
  (in-sample, temporal holdout).

## Results

*Pending.* Headline:

- In-sample precision@500 = 0.132 (lift 11.5×) → temporal holdout = 0.070
  (lift 6.1×; retention 53%).
- In-sample precision@1000 = 0.097 → temporal holdout = 0.066.
- ~47% of top-500 ranking comes from 2017–2019 participation, after CADE
  investigation was already underway for some cartels. The screen is half
  prospective, half retrospective.

## Interpretation

*Pending.* Verdict: in-sample metrics are **inflated**. Operational claims
rely on the temporal-holdout column. AUC firm-level 0.864 (temporal
holdout) is the honest discriminating performance. See
[H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md)
and [H:timing-discipline](../hypotheses/timing-discipline.md).

## Follow-ups

- Compare with prospective-only deployment under SCM design.
