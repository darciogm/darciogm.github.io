# Robustness

This page summarizes the robustness checks supporting each of the four empirical claims of the paper.

---

## 1. Discrimination Robustness (Claim 1: AUC under temporal holdout)

### Leakage audit (table moved to main text)

The decomposition of the in-sample item-level AUC of 0.995 into structural and pure-leakage components is reported in the main text, not the appendix. This is the primary anti-tautology check.

| Audit | AUC | Drop from in-sample | Interpretation |
|---|---:|---:|---|
| In-sample (full pool) | 0.995 | — | Reference |
| 5-fold CV at cobidder-firm level | 0.891 | $-0.104$ | Removes cobidder-included tautology |
| Temporal holdout (train 2009–2016) | **0.864** | $-0.131$ | Removes both tautology and same-period over-fitting |
| Same score, direct-CADE label (scope) | 0.506 | (random) | Confirms loser-side, not winner-side |

The 0.864 figure is the AUC the paper reports as headline.

### Year-by-year temporal holdout (Online Appendix B)

Rolling-origin temporal holdout: training window 2009 through (test year $-$1), test year provides out-of-sample cobidder ground truth. Year-by-year AUCs reported in Online Appendix B; ROC curves separate cleanly from the diagonal across all six test years.

### Adversarial robustness (Online Appendix F)

Monte Carlo simulation with adversarial adaptation (cover bidders strategically increase or decrease participation to evade the screen) confirms the screen retains discrimination AUC > 0.75 under realistic adaptation. The construct degrades predictably, not catastrophically.

---

## 2. Architecture Robustness (Claim 2: 83% footprint reduction)

### Sequential gatekeeper under temporal holdout

The architecture's data-envelope reduction is computed both in-sample and under temporal holdout. The 83% headline reduction is in-sample; under temporal holdout (smaller post-2016 cobidder pool), the analogous footprint reduction is recomputed and reported in Online Appendix B (Table `tab_architecture_gatekeeper_th`):

| Quantity | In-sample | Temporal holdout |
|---|---:|---:|
| Pool size before triage | 11,676 | 8,257 |
| Cobidders to recover | 193 | 142 |
| Pool after triage (top-$k$ rule) | 1,985 | similar relative reduction |
| Sequential rule recall | 68% | retained |

The architecture's qualitative claim — substantial reduction in forensic pool with high recall preservation — survives the holdout.

### Complementarity robustness

Complementarity with Imhof–Wallimann is verified on the same-sample audit (where all detectors evaluate the identical subset of firms for which Imhof features can be computed because bid microdata are available). The +0.035 AUC contribution is reported on this same-sample basis with DeLong $p = 0.014$.

---

## 3. Frequent-Loser Construct Robustness (Claim 1 supporting)

### IQR threshold sensitivity

The continuous primitive $\log(1+\text{tenders\_count})$ is the score; the binary FL flag is its information-coarsening. The headline AUC is monotone in threshold across multiple cutoffs:

| Multiplier | FL Firms | Discrimination preserved |
|:---:|:---:|:---|
| 1.0× | 3,442 | Yes |
| **1.5× (baseline; med + 1.5 × IQR)** | **2,735** | **Yes** |
| 2.0× | 2,093 | Yes |
| 3.0× | 1,456 | Yes (smaller pool) |

Under continuous specification, the headline AUC is preserved across thresholds because the ranking is by the continuous score; the binary cutoff is an operational coarsening, not an identification step.

### Horse-race against continuous score

A horse race between the binary FL flag and the continuous $\log(1+\text{tenders\_count})$ shows the continuous score dominates discrimination. Under DeLong test, continuous-only AUC of 0.939 (in-sample) is statistically larger than binary-only AUC of 0.911 ($p = 1.7 \times 10^{-5}$). The framework treats the continuous primitive as the identification object; the binary rule is the deployable coarsening.

---

## 4. Pricing Imprint Robustness (Claim 4: descriptive corroboration)

The paper does not rest on the pricing imprint. These checks are reported for transparency.

### Specification stability (Tier-3 corroboration)

| Check | Coefficient | $N$ | Note |
|:---|:---:|:---:|:---|
| OLS (item + year + PBU FE) | 0.064 | 1,654,401 | Baseline |
| CEM matching | 0.077 | 969,751 | Coarsened exact matching |
| IPW matching | 0.055 | 830,194 | Inverse probability weighting |
| Cross-fit | 0.036 | 1,654,401 | FL on odd years, regression on even (and v.v.) |
| Item × year FE | 0.074 | 1,654,401 | Tighter controls |
| Two-way clustering (item + PBU) | 0.064 (SE = 0.024) | 1,654,401 | Significant under all clustering |

### Sensitivity to unobservables

| Metric | Value | Interpretation |
|---|---:|---|
| **Cinelli–Hazlett $RV_{q=1}$** | **17.5%** | Confounder needs to explain ≥17.5% of residual variation in both FL and prices to nullify |
| Oster $\hat{\delta}$ | degenerate (261.6) | PBU FE barely move $R^2$ — design strength |

### Sign-reversal decomposition (Online Appendix B)

Tables `tab_item_level_scope_match` and `tab_sign_reversal_decomp` in Online Appendix B carry the overlap-restricted ATT estimates and the cell-dropping decomposition. Key facts:

- Only ~1% of treated items lack a within-cell counterfactual and are strictly dropped under overlap restriction.
- The remaining 99% participate in both broad and overlap estimates.
- What changes is which untreated counterfactuals each estimator up-weights — a reweighting result, not a dropped-counterfactual result.
- Within-quintile decomposition: Q4 positive ($+0.046$ broad, $+0.041$ ATT), Q1–Q3 negative.

---

## 5. Heterogeneity Robustness (Claim 4 corroboration)

### Buyer-size gradient stability

The 12.5× extreme-quartile gradient (Q1 vs Q4) is preserved across alternative buyer-size measures:

- Annual contract volume
- Cumulative item count
- Headcount of distinct purchasers

The intermediate quartiles (Q2, Q3) are imprecisely estimated and not statistically distinguishable from each other or from Q4. The pattern is direction-preserving across measures.

### Modal asymmetry: scope information, not channel identification

The 0.952 / 0.816 pregão / convite AUC contrast is corroborated by:

- Bootstrap difference: $-0.136$ ($p \approx 0$)
- Sample-size caveat: convite-modal cobidder pool is small (6 firms) — directional indicator only
- Within-modal price coefficient: $+0.089$ pregão vs $+0.037$ convite

We treat the modal contrast as scope information for the screening object (the construct discriminates better in pregão environments) — not as a positive test of any institutional channel.

---

## 6. Identification Audits (Online Appendix B)

### Permutation null

The participation-stratified permutation null behind the conservative pre-2020 benchmark places the empirical excess ratio of 3.2× in the upper tail of the null distribution at $p < 0.001$. Random reassignment of cobidder labels to firms with comparable participation intensity does not produce comparable discrimination.

### Leave-one-out IV placebo

A leave-one-out instrumental-variable placebo confirms that the construct's pricing imprint draws on the above-threshold cover-bidder population, not on generic always-loser supply. Random subsamples of below-threshold always-losers do not produce comparable discrimination.

### CADE-exclusion robustness

Dropping the CADE-involved tender-items and re-estimating the within-PBU baseline yields $\hat{\beta}$ virtually unchanged ($N = 1,453,954$). The screening signal does not depend on within-sample CADE adjudications for its content.

### Direct-defendant within-firm exercise

Among 7 always-loser direct CADE defendants, 3 (43%) cross the frequent-loser threshold against a population baseline of 16% — these are the exception within a direct-defendant population that is otherwise frequent-winner-heavy. The asymmetry between cobidder discrimination (high) and direct-defendant discrimination (random) is the design's empirical signature of loser-side scope.

---

## 7. Operational Metrics: Why In-Sample Over-States

The operational-metrics temporal-holdout audit (main text, Table `tab_operational_metrics`) reports holdout precision/recall/lift as the headline, with in-sample as transparency:

| Top-$k$ | Holdout Lift | In-sample Lift | In-sample inflation |
|---:|---:|---:|---:|
| 500 | 6.1× | 11.5× | ~50% over-stated |
| 1,000 | 5.8× | 8.5× | ~32% over-stated |

Roughly 47% of the in-sample top-500 ranking comes from 2017–2019 participation, after CADE adjudications were already underway for some cartels. The screen is half prospective, half retrospective in-sample. Holdout column is the operational reference.

---

## 8. Staggered DiD Reported But Not Used (Online Appendix F)

The staggered difference-in-differences specifications attempted (Callaway–Sant'Anna, stacked DiD, TWFE event study) are reported as an honest accounting of failed-but-attempted designs rather than as supporting evidence:

| Specification | Coefficient | Status |
|---|---:|---|
| Callaway & Sant'Anna ATT | 0.014 (SE = 0.039) | Insignificant |
| Stacked DiD | $-0.006$ (SE = 0.014) | Pre-trends preclude causal reading |

Minimum-detectable-effect calculations show observed-to-MDE ratios well below one — the null findings are structurally underpowered, not refutations of the underlying mechanism. The paper's contribution does not rest on staggered DiD.

---

## Robustness Summary

| Claim | Robustness check | Result |
|:---|:---|:---|
| **Discrimination (AUC 0.864)** | Leakage audit; year-by-year holdout; adversarial simulation | Survives all |
| **Architecture (83% footprint)** | Holdout gatekeeper; complementarity DeLong | Survives both |
| **Construct (FL flag)** | IQR threshold sweep; horse race vs continuous | Survives all |
| **Pricing imprint (descriptive)** | Cinelli RV; cross-fit; CEM/IPW matching; sign-reversal decomposition | Reported descriptively; sign reversal disclosed |
| **Heterogeneity (buyer-size)** | Alternative buyer-size measures; modal-asymmetry caveats | Direction-preserving; modal asymmetry flagged as scope info |

The paper's primary contributions (Claims 1–3) survive all robustness checks. Claim 4 (pricing imprint) is reported descriptively with full disclosure of identification limits.
