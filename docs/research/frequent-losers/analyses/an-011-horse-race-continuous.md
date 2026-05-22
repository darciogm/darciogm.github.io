---
id: an-011
hypothesis: award-bid-complementarity
type: causal
question: Does the continuous log(1+tenders_count) dominate the binary FL14 on the cobidder target?
status: done
status_date: 2026-05-22
confidence: green
headline: "Continuous AUC 0.939 [0.932, 0.946] dominates FL14 binary AUC 0.911 [0.898, 0.925]; DeLong Z = −4.30, p = 2 × 10⁻⁵. The continuous score is the true signal; FL14 is the deployable auditable rule."
created: 2026-05-22
script: scripts/34_horse_race_fl_continuous.R
target: output/horse_race/horse_race_summary.csv
tags: ["H:cobidder-concentration", "H:award-bid-complementarity", horse-race, continuous, binary]
design:
  sample: "Harmonized same-sample set in BEC 2009–2019 (N = 1,653,658 item-firm observations)"
  specification: "AUC of binary FL14 vs continuous log(1+tenders_count); DeLong test for paired AUC; price coefficients reported in three columns (binary, continuous, joint)"
  notes: "Identical to D1 gate diagnostic (AN-015). The horse race establishes the continuous dominance that motivates demoting FL14 to 'operational implementation' status."
---

# AN-011: Horse race — continuous vs binary FL

## Question

Does the continuous `log(1 + tenders_count)` dominate the binary `FL14`
on the cobidder target? The binary rule is auditable but the continuous
score carries the full information.

## Design

- **Sample**: harmonized same-sample set in BEC 2009–2019; N = 1,653,658
  item-firm observations.
- **Specifications**: AUC of `FL14` (binary) vs
  `log(1 + tenders_count)` (continuous).
- **Statistical test**: DeLong AUC-difference test on paired
  predictions.
- **Auxiliary**: price coefficients in three configurations (FL14
  alone, continuous alone, joint).

## Results

| Score | AUC | 95% CI |
|---|---:|---|
| FL14 (binary) | 0.911 | [0.898, 0.925] |
| Continuous log(1+tenders_count) | **0.939** | [0.932, 0.946] |

DeLong test: Z = −4.30, p = 2 × 10⁻⁵.

Auxiliary price coefficients (item × year × PBU FE):

| Specification | FL coef | SE | Continuous coef | SE |
|---|---:|---:|---:|---:|
| FL14 binary alone | +0.0653*** | 0.0216 | — | — |
| Continuous alone | — | — | +0.0188*** | 0.0055 |
| Joint | −0.0746* | 0.0383 | +0.0349*** | 0.0108 |

Macros: `\valAUCFLfirm`, `\valAUClogtc`, `\valDeLongZ`, `\valDeLongP`,
`\valHorseFLOne`, `\valHorseFLOneSE`, `\valHorseContTwo`,
`\valHorseFLThree`, `\valHorseContThree`.

## Interpretation

The continuous score dominates the binary at p < 10⁻⁴. FL14 is the
auditable deployable rule; the true signal is the continuous loss
intensity. This is the result that motivated the locked rule of
engagement: "loser-side concentration" is the concept; "frequent
losers" is the operational implementation. The paper's `FL14` cutoff is
not defended as ontologically special — it is the operational
auditable layer over the continuous primitive.

In the joint price regression, the FL14 coefficient flips negative
once the continuous score is included — the binary picks up a
truncation-induced residual that the continuous score absorbs. This
sign reversal is part of the price-scope evidence
([AN-019](an-019-rdd-cap-price.md),
[H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md)).

## Follow-ups

- Same horse race on temporal-holdout sample
  ([AN-006](an-006-strict-prospective-holdout.md)).
- Alternative continuous transformations (rank, percentile).
- Modal-by-modal horse race
  ([AN-016](an-016-gate-d2.md)).
