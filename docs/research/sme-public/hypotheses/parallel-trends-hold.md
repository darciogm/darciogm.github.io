---
paper: sme-public
id: h11
slug: parallel-trends-hold
title: "Reduced-form DiD validates timing and sign, but clean parallel trends are NOT claimed — identification is structural"
cluster: D
paper_section: "§5 / OA-B"
status: partial
last_updated: 2026-06-07
---

# H:parallel-trends-hold — Reduced-form DiD validates timing and sign; clean parallel trends are NOT claimed, and identification is carried by the structural decomposition

The DiDiR design compares the *switched* group 65 to the
*always-treated* control groups. A strict reduced-form-only reading
would require that, absent the policy reversal, group 65 prices and
participation would have moved in parallel with the controls. **The paper
does not claim that.** The joint pre-trend test *rejects* flatness for
both participation margins, and Group 65 is not balanced enough against
the pooled controls to support a reduced-form-only design. The reduced
form is therefore demoted to a **timing, sign, and approximate-scale
check**; the identification work is carried by the structural
price-formation decomposition. The participation event study is reported
as **Online Appendix Figure OA-1**.

!!! abstract "Intuition (plain-language)"
    The design would *like* Group 65 prices to have tracked the control groups before the reform, but they did not cleanly: the joint pre-trend test rejects flatness on both participation margins (partly because the platform-enablement months in late 2017 fall inside the pre-window), and pre-period covariates are imbalanced. So the paper does not lean on clean parallel trends. Instead, the reduced-form DiD is used only to pin down *timing, sign, and rough scale* — non-SME participation drops sharply right at the cutoff and prices move in the predicted direction — while the actual magnitude and welfare claims come from the structural decomposition. A reassuring consistency check: the structural net effect (0.227 of the reference price) scaled by the 43% realized SME-only adherence lands near 10%, the same order of magnitude as the 10–11% reduced-form DiD.

> **Evidence strength: Partial — timing and sign supported; clean parallel
> trends NOT claimed.** The reduced form validates the *direction and
> timing* of the effect, not a clean-trend causal magnitude.
> **The joint pre-trend test rejects flatness for both participation
> margins** (SME $F = 19.08$, non-SME $F = 38.97$, both $p = 0.000$),
> partly reflecting the BEC platform-enablement months in late 2017 that
> fall inside the pre-window; the OA-1 event study is read for **timing
> and direction**, not as a clean-trend estimate
> ([AN-023](../analyses/an-023-phased-adoption.md)). Group 65 is also
> imbalanced on pre-period covariates, which is why the reduced form is
> not asked to carry the structural magnitude or the welfare ranking.
> What the reduced form *does* establish converges across estimators:
> **Sun-Abraham (item-level) ATT 0.108 reproduces DDR 0.113** within
> 0.005 on log prices ([AN-018](../analyses/an-018-cs2021-staggered.md));
> **Callaway-Sant'Anna at group×month gives 0.237 — same direction,
> wider SE; BJS imputation attenuates but keeps the sign**; modern-DiD
> attenuation is itself expected under heterogeneous timing. The
> **Goodman-Bacon decomposition reports 100% weight on the clean
> Treated-vs-Untreated 2×2** ([AN-020](../analyses/an-020-goodman-bacon.md)),
> and **placebo cutoffs are smaller in magnitude than the real cutoff**
> ([AN-004](../analyses/an-004-placebo-tests.md)). **Lee bounds**
> ([AN-005](../analyses/an-005-lee-bounds.md)) and **HonestDiD**
> ([AN-006](../analyses/an-006-honestdid.md)) further discipline the
> reduced-form coefficient. The bottom line: the DiD corroborates the
> sign and timing of the predicted price footprint, but identification
> of the mechanism and its magnitude is structural, not reduced-form.

## Theory

A reduced-form-only reading of the DiDiR coefficient would require
parallel trends in the absence of the policy reversal. The paper does
*not* rely on that. The pre-trend battery is run to characterize the
reduced form, not to certify a clean-trend causal estimate:
- *Joint pre-trend test*: the event-study pre-period coefficients should
  be jointly flat if parallel trends held. **They are not** — the test
  rejects flatness on both participation margins, so the reduced form is
  used only for timing/sign/scale.
- *Pre-treatment placebos*: applying the DiDiR specification to a fake
  pre-treatment date should yield coefficients smaller in magnitude than
  the real cutoff.
- *HonestDiD*: Rambachan and Roth (2023) robust CIs under bounded
  post-treatment trend deviation M̄.
- *Lee bounds*: Lee (2009) bounds correct the conditional price
  coefficient against differential completion.

Because clean parallel trends are not assumed, identification of the
mechanism and its magnitude is delegated to the structural
price-formation decomposition (see
[H:exclusion-dominates](exclusion-dominates.md)). A structural↔DiD
consistency check ties them together: the structural net effect of 0.227
of the reference price, scaled by the 43% realized SME-only adherence,
is ≈ 10% — the same order of magnitude as the 10–11% reduced-form DiD.

## Prediction

(i) The joint pre-trend test will *reject* flatness — the reduced form is
not a clean-trend design and is therefore restricted to timing/sign/scale.
(ii) The non-SME participation event study (Online Appendix Fig. OA-1)
will show a sharp drop *at* the cutoff, supporting the timing/direction
reading. (iii) Placebo cutoffs will be smaller in magnitude than the real
cutoff; modern-DiD estimators (SA, CS, BJS) will preserve the sign while
attenuating the magnitude. (iv) Lee bounds and HonestDiD will keep the
reduced-form price coefficient disciplined.

## Competing prediction

**A clean-trend causal magnitude.** A reviewer might expect the page to
claim that flat pre-trends license reading the DiDiR coefficient as the
causal magnitude. The paper deliberately does **not** make that claim:
the joint pre-trend test rejects flatness (partly because the late-2017
platform-enablement months fall inside the pre-window), and pre-period
covariates are imbalanced. The reduced form is therefore demoted to a
timing/sign/scale check, and the magnitude comes from the structure. The
firm-count and bid-count pre-trends also partly reflect the *control
groups'* gradual SME-restriction rollout, not a group-65-specific shock —
see [H:entry-thickens-pool](entry-thickens-pool.md).

## Setting evidence

The pre-treatment period is long enough to test trend stability. The
placebo design uses Sep 2017, Mar 2017, and Jun 2017 as fake treatment
dates, splitting the pre-period into nominal "pre" and "post" halves
while applying the same DiDiR specification.

## Empirical test

- *Joint pre-trend test (participation event study, Online Appendix
  Fig. OA-1)*: an F-test on the pre-period event-study coefficients. It
  **rejects** flatness on both margins (SME F=19.08, non-SME F=38.97,
  both p=0.000), so the reduced form is read for timing and direction
  only.
- *Pre-treatment placebos*: DiDiR with fake treatment dates Sep 2017,
  Mar 2017, and Jun 2017; price coefficient should be small relative to
  the real cutoff.
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
| [AN-023](../analyses/an-023-phased-adoption.md) | Qualifies | Joint pre-trend test **rejects** flatness on both participation margins (SME F=19.08, non-SME F=38.97, both p=0.000), partly reflecting late-2017 platform-enablement months in the pre-window. OA-1 event study read for timing/direction, not clean trends. Dropping the 8-month enablement window moves β from −0.109 to −0.087 (−22%); both remain p<0.01 — timing/sign robust, not a clean-trend magnitude. |
| [AN-004](../analyses/an-004-placebo-tests.md) | Supports | Placebo cutoffs (Sep / Mar / Jun 2017) smaller in magnitude than the real cutoff — consistent with a timing/sign reading of the reduced form. |
| [AN-005](../analyses/an-005-lee-bounds.md) | Supports | Bounds −0.131 to −0.123, both significant; differential completion has negligible impact on the conditional coefficient. |
| [AN-006](../analyses/an-006-honestdid.md) | Supports | Reduced-form price coefficient remains disciplined under M̄ violations. |
| [AN-018](../analyses/an-018-cs2021-staggered.md) | Supports | Sun-Abraham item-level ATT 0.108 vs DDR 0.113 (Δ<0.005 on log prices); CS2021 group-month 0.237 same direction; BJS attenuates but keeps sign — sign/timing convergence, not a magnitude claim. |
| [AN-020](../analyses/an-020-goodman-bacon.md) | Supports | Weight = 1.000 on clean Treated-vs-Untreated 2×2; zero forbidden comparisons. Heterogeneous-timing bias mathematically absent in this single-cohort design. |
| [AN-021](../analyses/an-021-synth-control.md) | Mixed | Ridge-augmented synthetic control matches pre-period by construction; post ATT 0.171 directionally consistent; placebo p=0.103 borderline. Directional corroboration only — does not certify clean trends. |

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
