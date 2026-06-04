---
paper: frequent-losers
id: h7
slug: gatekeeping-cost-of-evidence
title: "Award-layer gatekeeping traces a cost–recall frontier, not an optimal cutoff"
cluster: D
paper_section: "§6.3 + §6.4"
status: "partial (frontier characterized)"
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->

# H:gatekeeping-cost-of-evidence — Award-layer gatekeeping traces a cost–recall frontier, not an optimal cutoff

The cost-of-evidence result from the manuscript: used as a gatekeeper, the
cheap award-layer ranking buys recall at a cost in bid microdata, and the
object of interest is the **cost–recall frontier** that ranking traces — not
any single "optimal" operating point. Firm-count reductions are large, but
the bid-row savings that actually matter for forensic cost are smaller, and
the right deployment point depends on an agency's own cost structure.

!!! abstract "Intuition (plain-language)"
    In real enforcement, opening bid-level microdata for forensic analysis is expensive. A cheap award-layer ranking can gatekeep which firms enter the expensive forensic stage. But there is no single magic cutoff and no optimal K: the ranking traces a *cost–recall frontier*, and where to sit on it is an agency choice. The honest arithmetic is two-sided with explicit denominators — at an aggressive operating point (K1 = 2,000) the *firm* pool drops about 88.1% (denominator 16,731 firms), but the *bid-row* footprint that drives forensic cost only drops about 32.7%. A *smaller* pool (K1 = 1,000) even recovers more true positives at k = 500. The contribution is the frontier and its honest accounting — a retrospective recovery-footprint design, not measured agency budget savings.


> **Evidence strength: Partial (frontier characterized).**
> The cost–recall frontier on the BEC × CADE data (pool A: 16,731 firms,
> 651 positives):
> (i) **Two-sided cost accounting with denominators** ([AN-012](../analyses/an-012-operational-metrics.md),
> [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)): at
> K1 = 2,000 the firm pool drops ~88.1% (denominator 16,731 firms), but the
> bid-row footprint drops only ~32.7%. The firm-count saving overstates the
> microdata saving.
> (ii) **No optimal K** ([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md),
> [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)):
> K1 = 1,000 recovers more true positives at k = 500 (124 TP, prec 0.248)
> than K1 = 2,000 (116 TP, prec 0.232) — no single operating point is
> optimal; the frontier is the object.
> (iii) **Recovery-footprint, not budget savings** ([AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)):
> sequential K1 = 1,000 recovers 124 of the joint upper bound's 133 TP at
> k = 500 (≈93%) at far lower informational cost; these are
> recovery-footprint reductions with stated denominators.
> (iv) **Retrospective design** ([AN-014](../analyses/an-014-leakage-audit-d3.md),
> [AN-013](../analyses/an-013-precision-at-k-audit.md)): because strict timing
> for the bid rerank is not available with the current LANCES features, the
> frontier is a retrospective cost-footprint design conditional on the
> validated incumbent ranking, not a prospective deployment test.
> (v) **CV precision stability** ([AN-036](../analyses/an-036-cv-precision-stability.md)):
> K-fold precision estimates are stable (SD ≤ 0.011), so the frontier is not
> an artifact of a particular split.
> The frontier is characterized; promotion to 🟢 (**Confirmed**) requires
> non-BEC replication — see the H7 page section on the external-validity bar.

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

Using the award-layer ranking as gatekeeper, the cost–recall frontier should:

- save substantially on the *firm* pool (~88.1% at K1 = 2,000, denominator
  16,731 firms) but much less on the *bid-row* footprint that drives forensic
  cost (~32.7%) — a two-sided accounting with explicit denominators, not a
  single "universal reduction"; and
- exhibit **no single optimal cutoff** — K1 = 1,000 recovers more true
  positives at k = 500 than K1 = 2,000; the right point depends on the
  agency's cost structure.

## Competing prediction

**No value / no stable optimum.** If the gatekeeper's recall at a given bid-row
budget were no better than drawing firms at random, or if no operating point
dominated, the frontier would carry limited operational value. The data
characterize a usable frontier but with no optimal K — consistent with a
retrospective recovery-footprint design, not a prescriptive cutoff.

## Case evidence

The manuscript's §6 reports the gatekeeping arithmetic on the BEC
2009–2019 panel. The test is whether the trade-off survives operational
calibration (precision@k under temporal holdout).

## Empirical test

- *Sample*: BEC firms with award-layer features available; cobidder
  recovery measured against the full cobidder set.
- *Outcomes*: the cost–recall frontier — firm-pool reduction *and* bid-row
  footprint at each operating point, recall, lift over random.
- *Specifications*:
  - frontier traced across K (e.g., K1 = 2,000): firm cut ~88.1% (denominator
    16,731 firms) vs bid-row cut ~32.7%;
  - no optimal K (K1 = 1,000 recovers more TP at k = 500 than K1 = 2,000);
  - retrospective cost-footprint design conditional on the validated incumbent
    ranking (strict timing for the bid rerank unavailable).
- *Identification*: the frontier (not a single cutoff) under both in-sample
  and temporal-holdout regimes; the operational reading relies on the
  temporal-holdout numbers.

## Data requirements and limitations

Requires the cobidder set and the BEC firm panel. Limitation: precision@k
inflation under in-sample evaluation is documented (see
[H:timing-discipline](timing-discipline.md)); the operational claim is
calibrated against the temporal-holdout numbers, which are roughly half the
in-sample levels.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-012](../analyses/an-012-operational-metrics.md) (frontier accounting) | Direct | done | At K1 = 2,000 firm pool drops ~88.1% (denom 16,731) but bid-row footprint only ~32.7% |
| [AN-013](../analyses/an-013-precision-at-k-audit.md) (temporal holdout) | Supports | done | Operating-point precision attenuates out of sample; frontier read as retrospective cost-footprint design |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | In-sample numbers attenuate under OOF / temporal holdout; frontier read off disciplined numbers |
| [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) (sequential envelope) | Direct | done | No optimal K: K1 = 1,000 recovers 124 TP at k = 500 (≈93% of joint upper bound's 133) vs 116 at K1 = 2,000 |
| [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md) (cost-of-evidence matrix) | Direct | done | No single optimal operating point; recovery-footprint reductions with stated denominators, not measured budget savings |
| [AN-036](../analyses/an-036-cv-precision-stability.md) (CV precision stability) | Direct | done | K-fold CV SD ≤ 0.011 across operating points; frontier not a split artifact |

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

H7's within-data evidence traces the frontier completely: the
cost-of-evidence matrix ([AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md))
shows the cost–recall trade-off with explicit denominators; CV stability
([AN-036](../analyses/an-036-cv-precision-stability.md)) confirms the frontier
is not a split artifact; and the sequential architecture
([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)) shows there
is no optimal K — K1 = 1,000 recovers more true positives at k = 500 than
K1 = 2,000. The frontier is a retrospective recovery-footprint design, not
measured agency budget savings.

But the cost-of-evidence claim is fundamentally about **how an agency
should deploy resources in a real enforcement environment**. The
external-validity question is therefore stronger for H7 than for the
within-data hypotheses:

1. **Cost calibration is BEC-specific.** The frontier's shape — and the
   gap between the ~88.1% firm-pool cut and the ~32.7% bid-row cut — assumes
   the cost of recovering bid microdata is high enough to make the
   trade-off worth taking. In a different procurement environment where
   bid microdata is cheap (e.g., already integrated with award records),
   the operating point an agency would choose, or whether gatekeeping
   helps at all, could differ. The relative cost structure differs across
   jurisdictions.

2. **CADE adjudication shapes the labeled set.** Cobidder recovery is
   anchored on CADE's adjudication choices, and the timing audit shows
   the signal leans heavily on a single large case. The frontier's shape
   depends on the specific distribution of cobidders in the ranking; a
   different cartel-detection authority with a different selection
   function might produce a different frontier.

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
**Partial (frontier characterized)**, consistent with the project-wide
rule documented in [findings/index.md](../findings/index.md).
