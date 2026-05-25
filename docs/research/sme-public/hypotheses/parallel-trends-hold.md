---
paper: sme-public
id: h11
slug: parallel-trends-hold
title: "Pre-treatment placebos null, HonestDiD survives M̄ violations, Lee bounds tight"
cluster: D
paper_section: "§6"
status: partial
last_updated: 2026-05-21
---

# H:parallel-trends-hold — Pre-treatment placebos null, HonestDiD survives M̄ violations, Lee bounds tight

The DiDiR design identifies the open-vs-SME-only effect by comparing the
*switched* group 65 to the *always-treated* control groups. Identification
requires that, absent the policy reversal, group 65 prices would have
moved in parallel with the control groups. Three complementary checks
test this: pre-treatment placebos (which apply the DiDiR to a fake pre-
treatment date and should yield null), HonestDiD (which constructs
robust CIs under controlled M̄ violations and should keep the effect
significant), and Lee bounds (which tighten the price coefficient
against differential completion).

!!! abstract "Intuition (plain-language)"
    The design assumes that, absent the policy reversal, Group 65 prices would have tracked the control groups. You cannot observe that counterfactual, but you can stress it: fake-date placebos should find nothing, the effect should survive controlled violations of parallel trends, and selection on which auctions complete should not move the estimate. All three checks hold, so the comparison is credible.

> **Evidence strength: Partial (strongly supported).** Six convergent
> identification checks now back the design. **Sun-Abraham (item-level)
> ATT 0.108 reproduces DDR 0.113** within 0.005 on log prices, with
> similar tight convergence on firms and distance
> ([AN-018](../analyses/an-018-cs2021-staggered.md)).
> **Callaway-Sant'Anna at group×month gives 0.237* — same direction,
> wider SE due to aggregation level**. **Goodman-Bacon decomposition
> reports 100% weight on the clean Treated-vs-Untreated 2×2** —
> the heterogeneous-timing-bias concern does not apply to this
> single-cohort design ([AN-020](../analyses/an-020-goodman-bacon.md)).
> **Synthetic control with Ridge augmentation matches group 65's
> pre-treatment trajectory exactly** (L2 imbalance 0.0000); post-period
> ATT 0.171 in the same direction; placebo $p = 0.103$ borderline
> ([AN-021](../analyses/an-021-synth-control.md)). Plus **placebo
> nulls** on prices ([AN-004](../analyses/an-004-placebo-tests.md)),
> **tight Lee bounds** ([AN-005](../analyses/an-005-lee-bounds.md)),
> and **HonestDiD survives M̄** ([AN-006](../analyses/an-006-honestdid.md)).
> Three of four estimators (DDR, SA, GB) earn green or near-green;
> synth's placebo $p = 0.103$ is the one open piece of the gauntlet.

## Theory

DiDiR identification of the pre-switch-period effect requires parallel
trends in the absence of the policy reversal. The standard battery
(Roth, Sant'Anna, Bilinski and Poe 2023):
- *Pre-treatment placebos*: applying the DiDiR specification to a fake
  pre-treatment date should yield null if parallel trends hold.
- *HonestDiD*: Rambachan and Roth (2023) construct robust CIs allowing
  the post-treatment trend to deviate by at most M̄ in some sense from
  the pre-treatment path.
- *Lee bounds*: Lee (2009) bounds correct the price coefficient against
  differential completion (the price equation conditions on completed
  items).

## Prediction

(i) Pre-treatment placebos on the *price* outcome should be small in
magnitude and statistically insignificant. (ii) HonestDiD CIs should
exclude zero for M̄ up to at least the empirical pre-trend magnitude.
(iii) Lee bounds on the price coefficient should be tight (lower-upper
gap small) and both endpoints significant.

## Competing prediction

**Differential pre-trends.** If group 65 prices were already on a
differential downward path before March 2018, the DiDiR coefficient
captures the trend extrapolation rather than the policy effect. The
placebo test directly addresses this: a significant pre-treatment
coefficient would reveal the differential trend. The price-margin
placebo is null; firm-count and bid-count placebos are significant
but reflect the *control groups'* gradual SME restriction rollout, not
a group-65-specific shock — see
[H:entry-thickens-pool](entry-thickens-pool.md).

## Setting evidence

The pre-treatment period (Sep 2016–Feb 2018) is long enough to test
trend stability. The placebo design uses Sep 2017 and Mar 2017 as fake
treatment dates, splitting the pre-period into nominal "pre" and "post"
halves while applying the same DiDiR specification.

## Empirical test

- *Pre-treatment placebos*: DiDiR with fake treatment dates Sep 2017
  and Mar 2017; price coefficient should be null.
- *HonestDiD*: Rambachan-Roth bounds on the post-treatment trend
  deviation; the price effect should remain significant for moderate M̄.
- *Lee bounds*: Lee (2009) selection-bound formula applied to the
  conditional price coefficient under differential completion rates.
- *Staggered-DiD estimators*: Callaway-Sant'Anna (2021) and Sun-Abraham
  (2021) reproductions to address heterogeneous-timing bias.

## Data requirements and limitations

The placebo test uses pre-treatment data only; the post-treatment
period is excluded from the test by construction. HonestDiD requires
the event-study specification (already in
[docs/results.md](../results.md)). Lee bounds require the completion
indicator (already in BEC). Callaway-Sant'Anna requires defining
treatment cohorts; since group 65 is a single switching event, the
staggered application is to the *control* groups' rollout history,
not to group 65 itself.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-004](../analyses/an-004-placebo-tests.md) | Supports | Pre-treatment price placebo &beta; = &minus;0.0145 (Sep 2017) and +0.0206 (Mar 2017), p>0.10 on the first, p<0.10 on the second — small and not driving the main result. |
| [AN-005](../analyses/an-005-lee-bounds.md) | Supports | Bounds −0.131 to −0.123, both highly significant; differential completion has negligible impact. |
| [AN-006](../analyses/an-006-honestdid.md) | Supports | Price effect remains significant under substantial M̄ violations. |
| [AN-018](../analyses/an-018-cs2021-staggered.md) | Supports | Sun-Abraham item-level ATT 0.108 vs DDR 0.113 (Δ<0.005 on log prices); CS2021 group-month 0.237* same direction; convergence across three estimators on direction, on magnitude for SA. |
| [AN-020](../analyses/an-020-goodman-bacon.md) | Supports (green) | Weight = 1.000 on clean Treated-vs-Untreated 2×2; zero forbidden comparisons. Heterogeneous-timing-bias mathematically absent in this single-cohort design. |
| [AN-021](../analyses/an-021-synth-control.md) | Mixed | Pre-treatment gap 0.0000 (parallel trends enforced); post ATT 0.171 directionally consistent; placebo p=0.103 borderline (not significant at 5%). |
| [AN-023](../analyses/an-023-phased-adoption.md) | Supports | Dropping the 8-month BEC enablement window reduces β from −0.109 to −0.087 (−22%) but both remain p<0.01. Headline not driven by rollout dynamics. |

## Open tests

### Randomization inference at the group level

`scripts/05_robustness.R` runs a 500-iteration permutation test
reassigning the group 65 indicator across groups. The figure already
exists ([docs/robustness.md](../robustness.md)). Worth promoting to a
separate AN page covering the entire RI battery.

### Tighten the synthetic-control placebo $p$

[AN-021](../analyses/an-021-synth-control.md) reports placebo
$p = 0.103$ (borderline). Two follow-ups would tighten it: (i)
augmented synthetic control with covariates (item-mix, PBU
composition); (ii) quarterly rather than semester aggregation (12 vs
6 pre-period observations). Either would push the placebo $p$
toward conventional significance.
