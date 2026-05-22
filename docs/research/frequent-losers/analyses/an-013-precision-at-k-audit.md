---
id: an-013
hypothesis: gatekeeping-cost-of-evidence
type: robustness
question: What are the temporal-holdout precision@k and lift metrics, and how much does the in-sample evaluation inflate operational numbers?
status: done
status_date: 2026-05-22
confidence: green
headline: "Verdict: in-sample precision@500 = 0.132 → temporal holdout 0.070 (retention 53%); lift 11.5× → 6.1×. The in-sample column is inflated; operational claims rely on the temporal-holdout column."
created: 2026-05-22
script: scripts/43_precision_at_k_audit.R
target: output/operational/audit_precision_k.csv
tags: ["H:gatekeeping-cost-of-evidence", "H:timing-discipline", precision-at-k, temporal-holdout, audit]
design:
  sample: "Always-losers in BEC 2009–2019; train 2009–2016 / test 2017–2019"
  specification: "Precision@k, recall@k, lift under temporal holdout vs in-sample; retention = temporal/in-sample"
  notes: "Verdict: in-sample is INFLATED. ~47% of top-500 ranking comes from 2017–2019 participation, after CADE investigation was already underway for some cartels. Reported per JLEO discipline."
---

# AN-013: Precision@k audit — temporal holdout vs in-sample

## Question

What are the temporal-holdout precision@k and lift metrics, and how
much does the in-sample evaluation inflate operational numbers? The
audit documents the gap honestly.

## Design

- **Sample**: 16,843 always-losers in BEC 2009–2019.
- **Split**: train 2009–2016, test 2017–2019.
- **Metrics**: precision@k, recall@k, lift in both columns
  (in-sample, temporal holdout); retention = (temporal / in-sample).

## Results

| k | precision@k (in-sample) | precision@k (temporal holdout) | retention | lift (in-sample) | lift (TH) |
|---:|---:|---:|---:|---:|---:|
| 50 | 0.300 | 0.020 | 7% | 26.2× | 1.7× |
| 100 | 0.170 | 0.070 | 41% | 14.8× | 6.1× |
| 200 | 0.160 | 0.076 | 48% | 14.0× | 6.6× |
| 500 | **0.132** | **0.070** | **53%** | 11.5× | 6.1× |
| 1000 | 0.097 | 0.066 | 68% | 8.5× | 5.8× |

Recall@k (temporal holdout): @500 = 18.1%; @1000 = 34.2%.

Macros: `\valPrecInSFivehu` (0.132), `\valPrecTHFivehu` (0.070),
`\valLiftInSFivehu` (11.5×), `\valLiftTHFivehu` (6.1×),
`\valOpRetentionFiveHund` (53%), `\valOpInflationShare` (47%),
`\valOpRecallFiveHund` (18%), `\valOpRecallThou` (34%).

## Interpretation

**Verdict: INFLATED in-sample.** Operational deployment metrics are
roughly half the in-sample upper bounds:

- precision@500 retains 53% under temporal holdout (0.070 vs 0.132);
- lift retains 53% (6.1× vs 11.5×);
- recall@500 is 18% (vs ~34% in-sample at the same k).

Source of inflation: ~47% of the top-500 ranking comes from 2017–2019
participation, after CADE investigation was already underway for some
of the cartels. The screen is therefore half prospective, half
retrospective in the in-sample regime.

The paper reports both columns in the operational metrics table; the
text relies on the temporal-holdout column for the operational claim.
AUC firm-level under temporal holdout (0.864, see
[AN-014](an-014-leakage-audit-d3.md)) is the honest discriminating
performance number.

## Follow-ups

- Compare with strict prospective-only deployment under alternative
  train windows ([AN-006](an-006-strict-prospective-holdout.md)).
- Headcount analysis at k = 500 cutoff (35 cobidders flagged
  operationally).
- Sensitivity to k under each evaluation regime.
