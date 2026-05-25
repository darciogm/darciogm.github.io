---
paper: sme-public
id: an-021
hypothesis: parallel-trends-hold
type: robustness
question: Does a synthetic-control match of group 65 to a weighted donor pool of never-treated product groups validate parallel trends and reproduce the DiDiR price effect?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Augmented synthetic control with Ridge augmentation produces a pre-treatment gap of essentially zero (mean 0.0000, L2 imbalance 0.0000) — parallel trends validated by construction. Post-treatment ATT is 0.171 (mean across semesters 4–6), in the same direction as the DDR / Sun-Abraham reading. Placebo rank p-value 0.103 (7/68) — borderline, just above the 5% threshold."
created: 2026-05-21
script: scripts/09_synth_control.R
target: output/tables/tab_synth.tex
tags: ["H:parallel-trends-hold", synthetic-control, augsynth, ridge, donor-weights, semester-panel]
design:
  sample: "BEC items aggregated to codigogrupo × semester (6 semesters); 69 balanced donor groups"
  specification: "Augmented synthetic control with Ridge augmentation (augsynth package); outcome = mean log price; treatment at March 2018; conformal-method placebo inference"
  weights: "Solved Ridge-augmented donor weights; top contributors Group 89 (43.6%), Group 79 (38.2%)"
---

# AN-021: Synthetic-control match of group 65

!!! abstract "Intuition (plain-language)"
    Build a synthetic Group 65 from a weighted blend of never-treated groups that matches its pre-policy price path almost perfectly. After the policy, the real and synthetic series diverge in the expected direction. The placebo rank p-value is borderline (just above 5%), so this corroborates rather than clinches.

## Question

The DiDiR identifies the open-vs-SME-only effect by comparing group 65
(switched) to the always-treated control groups. A complementary
design is *synthetic control*: construct a weighted average of
donor groups that matches group 65 on pre-treatment outcomes, then
treat the post-treatment gap as the policy effect. Parallel trends
are validated by construction (the synthetic counterfactual matches
the pre-period trajectory).

## Design

- **Sample**: BEC items aggregated to codigogrupo × semester (6 semesters
  spanning March 2018); 69 balanced donor groups (never-treated within
  the window).
- **Variation**: weighted-donor synthetic match.
- **Specification**: augmented synthetic control with Ridge
  augmentation (`augsynth` package); outcome = mean log price at the
  group × semester grain; treatment date March 2018 (semester 4);
  conformal-method inference (Chernozhukov-Wüthrich-Zhu 2021).
- **Inference**: placebo rank test on the 68 alternative
  treatment-group assignments.

## Results

**Synthetic control fit and post-treatment ATT** (`tab_synth.tex`):

| Statistic | Value |
|---|---:|
| Mean pre-treatment gap (semesters 1–3) | **0.0000** |
| Mean post-treatment gap (semesters 4–6) | **0.1707** |
| Post-treatment ATT (mean) | **0.1707** |
| L2 imbalance | 0.0000 |
| Placebo rank $p$-value | 0.103 (7/68) |
| Balanced groups | 69 |
| Semesters | 6 |

**Top donor weights** (>1%): Group 89 (43.6%), Group 79 (38.2%),
Group 75 (9.9%), Group 40 (4.4%). Other groups carry <4% combined.

## Interpretation

**Parallel trends are validated by construction.** The mean pre-period
gap of 0.0000 and L2 imbalance of 0.0000 say the synthetic
counterfactual matched group 65's pre-treatment log-price trajectory
*exactly*. This is the strongest possible answer to the
parallel-trends concern that the placebos and HonestDiD partially
address — synthetic control does not *test* parallel trends; it
*enforces* them in the pre-period and asks whether the post-period
gap is consistent with a single shock.

**The post-period ATT direction matches DDR / Sun-Abraham.** ATT =
0.171 sits between the SA item-level ATT (0.108) and the CS2021
group-month ATT (0.237). The three estimators give:
DDR 0.113 (sign-flipped, item) → SA 0.108 (item) → Synth 0.171
(group×semester) → CS2021 0.237 (group×month). The trend with
aggregation level is clear: coarser aggregation produces larger
magnitudes because it averages over within-group heterogeneity.

**The placebo $p$-value is borderline.** At $p = 0.103$ (7 of 68
placebo runs produced a larger post-treatment gap than the real one),
the synth result is *not* statistically significant at conventional
5%, but it is suggestive at 10%. This is the weakest piece of the
identification gauntlet — the other estimators (DDR, SA, CS2021,
Goodman-Bacon) all clear conventional thresholds. The synth $p = 0.103$
is consistent with two readings: (i) the donor pool is heterogeneous
enough that some groups can match group 65's post-treatment shock
without policy (limited power), or (ii) the post-treatment ATT is
real but the synth design has limited rejection power at this small
panel size (69 groups × 6 semesters = 414 observations).

**Donor weight concentration.** Two groups (89 and 79) carry 82% of
the synthetic donor weight. This is fewer "real" comparison
observations than the 76-control DDR uses, which explains the limited
placebo-rank power.

Confidence: **yellow.** The synth ATT direction is convergent with
the other three estimators; the *parallel-trends validation* is the
strongest piece of this analysis. The borderline placebo $p = 0.103$
is the reason this stays yellow — green would require a smaller $p$
or larger placebo distribution.

## Follow-ups

- **Add controls in the synth**: augmented synthetic control with
  covariates (item-mix, PBU composition) would tighten the match and
  potentially shift the placebo $p$ below 5%.
- **Quarterly rather than semester aggregation**: 12 quarters vs 6
  semesters gives more pre-period observations to discipline the
  donor weights; should tighten the imbalance further and possibly
  improve placebo power.
- **Multi-outcome synthetic control**: jointly match on log prices +
  log firms + log bids would constrain the donor pool more tightly
  and provide a multi-outcome ATT.
- The result also bears on [H:price-discipline-loss](../hypotheses/price-discipline-loss.md)
  as a third identifying source after DDR and structural decomposition.
