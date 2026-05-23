---
paper: frequent-losers
id: h7
slug: gatekeeping-cost-of-evidence
title: "Award-layer gatekeeping cuts the bid-microdata pool cost-effectively"
cluster: D
paper_section: "§6.3 + §6.4"
status: "partial (strongly supported)"
last_updated: 2026-05-22
---

# H:gatekeeping-cost-of-evidence — Award-layer gatekeeping cuts the bid-microdata pool cost-effectively

The cost-of-evidence result from the manuscript: used as a gatekeeper, the
award-layer ranking should cut the bid-microdata pool needed for the
forensic stage by a substantial fraction while still recovering most of the
adjudication-anchored cobidders. This is the operational architecture
relevant for agencies that face costly bid recovery.

!!! abstract "Intuition (plain-language)"
    In real enforcement, opening bid-level microdata for forensic analysis is expensive. The hypothesis: a cheap award-layer screen can act as a gatekeeper that decides which firms enter the expensive forensic stage, while preserving most of the cartel signal. The architecture works — 83% reduction in the bid-microdata pool while still recovering 131 of 193 adjudicated cobidders. The sequential gatekeeper even beats joint scoring under temporal holdout, the operationally honest regime. The cost-of-evidence argument is the paper's most distinctive institutional contribution.


> **Evidence strength: Partial (strongly supported).**
> Six lines of evidence converge on the cost-of-evidence claim:
> (i) **In-sample operational metrics** ([AN-012](../analyses/an-012-operational-metrics.md)):
> FL14 cutoff drives 83% bid-microdata pool reduction with 131/193
> cobidder recovery; precision@500 = 0.132, lift 11.5×.
> (ii) **Temporal-holdout audit** ([AN-013](../analyses/an-013-precision-at-k-audit.md)):
> precision@500 = 0.070 (lift 6.1×, retention 53%); operational claim
> uses this column.
> (iii) **Leakage discipline** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> raw item AUC 0.995 → OOF 0.891 → temporal 0.864; the gatekeeping AUC
> survives the audit chain.
> (iv) **Sequential envelope** ([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)):
> Sequential FL → Imhof at Stage-1 K=2,000 captures 74% of joint recall
> at 17% of the bid-microdata footprint.
> (v) **Full architecture × k × regime matrix** ([AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)):
> sequential K=2,000 at k=1,000 captures 131 TP in-sample (92% of
> joint TP at 17% microdata) and 114 TP temporal-holdout (103% of
> joint TP at 24% microdata — sequential **beats joint in temporal
> holdout**).
> (vi) **CV precision stability** ([AN-036](../analyses/an-036-cv-precision-stability.md)):
> K-fold precision_mean across k = 50 → 2,000 is in [0.016, 0.068]
> with SDs ≤ 0.011 (CV coef < 31%). The precision estimates are not
> artifacts of a particular split.
> Promotion to 🟢 (**Confirmed**) requires non-BEC replication of the
> sequential architecture — see the H7 page section on why the
> within-data evidence does not satisfy the bar.

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
| [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) (sequential envelope) | Direct | done | Sequential K=2,000 captures 74% joint recall at 17% microdata cost |
| [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md) (full architecture matrix) | Direct | done | Temporal holdout: sequential K=2,000 at k=1,000 → 114 TP (103% of joint) at 24% microdata footprint |
| [AN-036](../analyses/an-036-cv-precision-stability.md) (CV precision stability) | Direct | done | K-fold CV SD ≤ 0.011 across k = 50–2,000; precision estimates not split-sensitive |

## Open tests

- Sensitivity to threshold choice across the operational range
  (partially covered in [AN-025](../analyses/an-025-cutoff-sweep-robustness.md)
  cutoff sweep).
- Comparison of gatekeeping vs joint scoring at fixed bid-recovery
  budget — partially in
  [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md).
- Cost-per-true-positive in dollar terms (bid-recovery cost × TP) to
  formalize the economic trade-off.
- Cross-modality decomposition of the architecture matrix.

## Why not 🟢 Confirmed?

H7's within-data evidence is operationally complete: the architecture
× k × regime matrix ([AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md))
shows the trade-off envelope across in-sample and temporal-holdout
regimes; CV stability ([AN-036](../analyses/an-036-cv-precision-stability.md))
confirms the precision estimates are not split-artifacts; and the
sequential architecture ([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md))
beats joint scoring in the temporal-holdout regime that matches
operational deployment.

But the cost-of-evidence claim is fundamentally about **how an agency
should deploy resources in a real enforcement environment**. The
external-validity question is therefore stronger for H7 than for the
within-data hypotheses:

1. **Cost calibration is BEC-specific.** "83% pool reduction" assumes
   the cost of recovering bid microdata is high enough to make
   the trade-off worth taking. In a different procurement environment
   where bid microdata is cheap (e.g., already integrated with award
   records), the architecture might be inferior to joint scoring even
   at higher microdata cost. The relative cost structure differs across
   jurisdictions.

2. **CADE adjudication shapes the labeled set.** The 131/193 cobidder
   recovery is anchored on CADE's adjudication choices. The sequential
   architecture's advantage at k=1,000 depends on the specific
   distribution of cobidders in the FL ranking. A different cartel-
   detection authority with a different selection function might
   produce a different operational envelope.

3. **Architecture transfer is empirically untested.** The literature on
   procurement-cartel screening (Imhof, Wallimann, Huber, Conley-Decarolis)
   uses different cost-of-evidence structures and different operational
   metrics; no published replication of the FL → Imhof sequential
   architecture exists on non-BEC data.

Promotion to 🟢 requires deploying the sequential architecture on a
non-BEC procurement panel and confirming the trade-off envelope. The
strongest candidate is ComprasNet federal with CADE's federal-level
adjudications, which would replicate within the same legal system but
on a different procurement platform. Until that exists, H7 stays at
**Partial (strongly supported)**, consistent with the project-wide
rule documented in [findings/index.md](../findings/index.md).
