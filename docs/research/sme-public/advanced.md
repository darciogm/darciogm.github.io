---
paper: sme-public
---

# Advanced Methods

!!! info "Where this sits in v8"
    These five methods discipline the **reduced-form benchmark layer** — the
    difference-in-differences that the canonical v8 paper uses only for timing,
    sign, and approximate scale. The headline policy result is the
    **structural price-formation decomposition** and the **static welfare
    comparison** ([Results](results.md), [Robustness](robustness.md)). Each
    method below also appears as a dedicated analysis page (HonestDiD →
    [AN-006](analyses/an-006-honestdid.md), Lee bounds →
    [AN-005](analyses/an-005-lee-bounds.md), quantile DiD →
    [AN-007](analyses/an-007-quantile-did.md), Gelbach decomposition →
    [AN-008](analyses/an-008-gelbach-decomp.md)).

This page documents five econometric methods that discipline the reduced-form
benchmark. Each addresses a specific concern about the timing-and-sign reading
of the policy change.

---

!!! abstract "Intuition (plain-language)"
    Five stress-tests on the reduced-form benchmark, each guarding a different
    flank. HonestDiD: the price effect survives even if parallel trends fails
    substantially. Lee bounds: selection on item completion barely moves it.
    Causal forest: the effect is broad-based, not driven by one exotic subgroup.
    Quantile DiD: competition bites hardest on cheap, standardized items and even
    reverses at the thin-market top. Gelbach: competition and composition partly
    cancel, so "more firms → lower prices" is only part of the story. None carries
    the headline — that is the structural decomposition — but together they keep
    the benchmark honest.

## 1. Parallel Trends Sensitivity (HonestDiD)

The HonestDiD method (Rambachan and Roth, 2023) constructs robust confidence intervals for the treatment effect under controlled violations of the parallel trends assumption. The parameter $\bar{M}$ governs the maximum amount by which the post-treatment trend may deviate from the pre-treatment path.

<figure>
  <img src="../assets/figures/fig_11_honestdid.png" alt="HonestDiD sensitivity analysis">
  <figcaption>Figure A.10. HonestDiD Sensitivity Analysis: Robust confidence intervals under violations of parallel trends. The price effect remains significant even for large values of M̄.</figcaption>
</figure>

!!! success "Key finding"
    The main price effect remains statistically significant even under substantial deviations from strict parallel trends, providing strong evidence that the results are not an artifact of pre-existing differential trends.

---

## 2. Sample Selection Correction (Lee Bounds)

The price and distance regressions condition on item completion. If the treatment affects completion rates, this creates sample selection bias. Lee (2009) bounds correct for this by trimming the outcome distribution in the excess-selected cell.

| | Log prices (lower) | Log prices (upper) | Distance (lower) | Distance (upper) |
|---|:---:|:---:|:---:|:---:|
| **g65 x Pre** | **-0.1306\*\*\*** | **-0.1227\*\*\*** | **10.775\*\*\*** | **10.804\*\*\*** |
| | (0.0096) | (0.0085) | (2.232) | (2.233) |
| Trimming proportion | | | 8.82% | |

!!! success "Key finding"
    The bounds for log prices range from -0.131 to -0.123, both highly significant. The tightness of the bounds indicates that sample selection has a negligible impact on the main price estimates.

---

## 3. Heterogeneous Treatment Effects (Causal Forest)

A causal forest (Athey, Tibshirani, and Wager, 2019) estimates individualized treatment effects using an honest, doubly-robust random forest on FWL-residualized outcomes.

### Variable Importance

<figure>
  <img src="../assets/figures/fig_12_cforest_varimp.png" alt="Causal forest variable importance">
  <figcaption>Figure A.11. Variable importance ranking: item quantity dominates (0.486), followed by tender type (0.183) and supplier location (0.156).</figcaption>
</figure>

### Group Average Treatment Effects (GATE)

<figure>
  <img src="../assets/figures/fig_13_cforest_gate.png" alt="Causal forest GATE">
  <figcaption>Figure A.12. Group Average Treatment Effects by CATE quartile. The heterogeneity across quartiles is modest.</figcaption>
</figure>

| | Q1 (lowest) | Q2 | Q3 | Q4 (highest) |
|---|:---:|:---:|:---:|:---:|
| **GATE** | 0.391 | -0.114 | 1.048 | -0.824 |
| | (0.941) | (1.363) | (1.374) | (0.844) |
| **ATE (full sample)** | | 0.125 (0.578) | | |

!!! info "Interpretation"
    The causal forest reveals modest heterogeneity in treatment effects, with item quantity as the key moderator. The imprecise GATE estimates reflect the challenge of detecting heterogeneity in residualized data with substantial within-item variation.

---

## 4. Distributional Effects (Quantile DiD)

Quantile difference-in-differences (Canay, 2011) estimates how the treatment effect varies across the price distribution, going beyond the mean effect captured by OLS.

<figure>
  <img src="../assets/figures/fig_14_quantile_did.png" alt="Quantile DiD">
  <figcaption>Figure A.13. Quantile DiD coefficients across the price distribution. Effects are strongly negative at lower quantiles and turn positive at the upper tail.</figcaption>
</figure>

| | $\tau = 0.10$ | $\tau = 0.25$ | $\tau = 0.50$ | $\tau = 0.75$ | $\tau = 0.90$ |
|---|:---:|:---:|:---:|:---:|:---:|
| **g65 x Pre** | **-0.623\*\*\*** | **-0.543\*\*\*** | **-0.356\*\*\*** | 0.031 | **0.445\*\*\*** |
| | (0.028) | (0.023) | (0.024) | (0.032) | (0.045) |
| **OLS benchmark** | | | -0.124 (0.017) | | |

!!! warning "Key finding"
    The benefits of open competition are concentrated at the lower quantiles of the price distribution ($\tau \leq 0.50$), where competitive bidding drives prices down most effectively. At the upper tail ($\tau = 0.90$), prices are actually higher under open tenders, possibly reflecting specialized items with thin supplier markets.

---

## 5. Mechanism Decomposition (Gelbach)

The Gelbach (2016) decomposition partitions the total price effect into contributions from observable channels by comparing a "short" regression (treatment + controls) with a "full" regression that adds mediators.

<figure>
  <img src="../assets/figures/fig_15_mediation.png" alt="Gelbach decomposition">
  <figcaption>Figure A.14. Channel contributions to the price effect. Competition and composition operate as partially offsetting mechanisms.</figcaption>
</figure>

| Channel | Coefficient | SE | % of gap |
|---|:---:|:---:|:---:|
| **Short regression** (g65 x Pre) | -0.1318\*\*\* | (0.0096) | |
| **Full regression** (g65 x Pre) | -0.1227\*\*\* | (0.0101) | |
| Gap (short - full) | -0.0091 | | 100% |
| Competition (log firms) | 0.0078\*\*\* | (0.0010) | -85% |
| Composition (SME winner) | -0.0169\*\*\* | (0.0014) | 185% |

!!! info "Interpretation"
    The competition and composition channels operate as partially offsetting mechanisms. Open tenders increase competition (lowering prices), but also attract non-SME winners whose conditional pricing effects partially offset the competition gains. The large unexplained component (-0.123) indicates that most of the price effect operates through channels not captured by these two mediators.
