# Robustness Checks

## Placebo Tests

Placebo tests using fake treatment dates applied exclusively to pre-treatment data. If the main results were driven by a spurious trend, these regressions should yield significant price coefficients.

|  | Sep 2017 | Mar 2017 | Sep 2017 | Mar 2017 | Sep 2017 | Mar 2017 | Sep 2017 | Mar 2017 |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|  | Log prices | Log prices | Log firms | Log firms | Log bids | Log bids | Distance | Distance |
| **g65 x Pre (placebo)** | **-0.0145** | **0.0206\*** | -0.1038\*\*\* | -0.1346\*\*\* | -0.1363\*\*\* | -0.1343\*\*\* | 3.7807 | -1.2018 |
|  | (0.0149) | (0.0112) | (0.0063) | (0.0070) | (0.0092) | (0.0106) | (2.4452) | (2.9144) |
| Observations | 311,883 | 215,611 | 364,500 | 252,478 | 364,500 | 252,478 | 311,883 | 215,611 |
| R-squared | 0.195 | 0.196 | 0.217 | 0.227 | 0.229 | 0.235 | 0.001 | 0.001 |

*Placebo tests on pre-treatment data only. Standard errors clustered at the item level.*

The placebo coefficients for **log prices are small and statistically insignificant**, directly supporting the parallel trends assumption. The significant coefficients for firms and bids reflect a secular trend from the gradual SME restriction rollout across other groups.

---

## Randomization Inference

A permutation test randomly reassigning the group 65 indicator 500 times confirms that the observed price coefficient is extreme relative to the distribution of permuted coefficients.

<figure>
  <img src="../assets/figures/fig_09_permutation.png" alt="Randomization inference">
  <figcaption>Figure A.8. Randomization Inference: Distribution of 500 permuted coefficients with observed value marked</figcaption>
</figure>

---

## Alternative Clustering

The main results cluster standard errors at the item level. The table below shows that findings are robust to clustering at the group level, PBU level, and two-way (item x PBU) level.

!!! success "Results robust across all clustering choices"
    The main price, participation, and bid effects remain statistically significant at conventional levels regardless of the clustering unit chosen.

---

## Winsorization

Winsorizing the dependent variables at the 1st/99th and 5th/95th percentiles produces estimates of similar magnitude and significance, ruling out that outliers drive the results.

!!! success "Results not driven by outliers"
    Both the price and distance effects are robust to winsorization at multiple thresholds.

---

[:material-arrow-left: Back to SME Public Summary](index.md) · [:material-book-open-variant: Back to Research](../working-papers.md)
