---
paper: frequent-losers
id: h7
slug: gatekeeping-cost-of-evidence
title: "Award-layer gatekeeping cuts the bid-microdata pool cost-effectively"
cluster: D
paper_section: "§6.3 + §6.4"
status: partial
last_updated: 2026-05-22
---

# H:gatekeeping-cost-of-evidence — Award-layer gatekeeping cuts the bid-microdata pool cost-effectively

The cost-of-evidence result from the manuscript: used as a gatekeeper, the
award-layer ranking should cut the bid-microdata pool needed for the
forensic stage by a substantial fraction while still recovering most of the
adjudication-anchored cobidders. This is the operational architecture
relevant for agencies that face costly bid recovery.

> **Evidence strength: Moderate (single-source).**
> FL14 cutoff drives 83% bid-microdata pool reduction with 131/193
> cobidder recovery. Operational precision@500 under temporal holdout
> = 0.070 (lift 6.1×); in-sample 0.132 (lift 11.5×); retention 53%. The
> 83% pool cut is robust; the precision claim relies on the
> temporal-holdout column.

## Theory

In the Becker–Stigler tradition \citep{becker1968crime,stigler1970optimum},
agencies allocate scarce enforcement capacity to maximize expected return.
A two-stage architecture (cheap award triage → costly bid forensics)
dominates a one-stage architecture (bid forensics everywhere) when the
triage is informative and the cost differential is large
\citep{harrington2008detecting,chassang2022robust}. The hypothesis is that
the FL ranking is informative enough for this architecture to be
operationally attractive.

## Prediction

Setting the FL14 cutoff as gatekeeper:

- the bid-microdata pool for the forensic stage shrinks by ≥80% (target
  in the manuscript is 83%); and
- the cobidder recovery rate exceeds 60% (target in the manuscript is
  131/193 ≈ 68%).

## Competing prediction

**Triage destroys signal.** If the gatekeeper cuts the pool but loses too
many cobidders, the operational architecture is not viable. The
hypothesis predicts a favorable trade-off; the null predicts an unfavorable
one.

## Case evidence

The manuscript's §6 reports the gatekeeping arithmetic on the BEC
2009–2019 panel. The test is whether the trade-off survives operational
calibration (precision@k under temporal holdout).

## Empirical test

- *Sample*: BEC firms with award-layer features available; cobidder
  recovery measured against the full cobidder set.
- *Outcomes*: pool-size reduction, cobidder recovery rate, precision@k.
- *Specifications*:
  - in-sample: precision@500, @1000 with FL14 as gatekeeper;
  - temporal holdout: same metrics with score formed before target window.
- *Identification*: operational metrics under both in-sample and
  temporal-holdout regimes; the operational claim relies on the
  temporal-holdout column.

## Data requirements and limitations

Requires the cobidder set and the BEC firm panel. Limitation: precision@k
inflation under in-sample evaluation is documented (see
[H:timing-discipline](timing-discipline.md)); the operational claim is
calibrated against the temporal-holdout numbers, which are roughly half the
in-sample levels.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-012](../analyses/an-012-operational-metrics.md) (in-sample precision@k) | Direct | done | precision@500 = 0.132, lift 11.5×; 83% pool cut |
| [AN-013](../analyses/an-013-precision-at-k-audit.md) (temporal holdout) | Direct | done | precision@500 = 0.070, lift 6.1×; retention 53% |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | AUC 0.86–0.89 sustains operational claim |

## Open tests

- Sensitivity to threshold choice across the operational range.
- Comparison of gatekeeping vs joint scoring at fixed bid-recovery budget.
