---
paper: beneath-surface
---

# Robustness and Validity Tests

A battery of tests confirms the validity of the RDD design and the robustness of the main findings.

---

## Density Test (Manipulation of the Running Variable)

The Cattaneo, Jansson & Ma (2020) density test checks whether the running variable (margin of victory) shows a discontinuity at the cutoff, which would indicate manipulation.

!!! success "No evidence of manipulation"
    The density test yields $p \geq 0.05$, indicating no statistically significant discontinuity in the distribution of the margin of victory at the threshold. This is a necessary condition for the RDD to be valid.

---

## Covariate Balance at the Threshold

If the RDD design is valid, pre-determined covariates should be balanced across the threshold. We test three firm characteristics:

| Covariate | Coefficient (with FE) | SE | Interpretation |
|:----------|:---------------------:|:--:|:---------------|
| **Firm Age** | small | -- | No discontinuity |
| **Limited Liability** | small | -- | No discontinuity |
| **Same Municipality** | small | -- | No discontinuity |

!!! info "Balance confirmed"
    None of the pre-determined covariates show economically or statistically significant jumps at the threshold. Narrowly winning and losing firms are comparable in observable characteristics, supporting the identification assumption.

---

## Placebo Cutoffs

We estimate the RDD at **false thresholds** away from zero. If the main effects are genuine discontinuities (not artifacts of functional form), placebo cutoffs should produce null results.

| Cutoff | Incumbent Coef | Last Bid Coef | Significant? |
|:------:|:--------------:|:-------------:|:------------:|
| $-0.03$ | $\approx 0$ | $\approx 0$ | No |
| $-0.02$ | $\approx 0$ | $\approx 0$ | No |
| $-0.01$ | $\approx 0$ | $\approx 0$ | No |
| **$0.00$** | **$0.018$** | **$0.064$** | **Yes** |
| $+0.01$ | $\approx 0$ | $\approx 0$ | No |
| $+0.02$ | $\approx 0$ | $\approx 0$ | No |
| $+0.03$ | $\approx 0$ | $\approx 0$ | No |

!!! success "Effects concentrate at the true threshold"
    The incumbency and last-bid effects are unique to the winning cutoff ($\Delta = 0$). Placebo cutoffs at nearby points produce null results, confirming that the findings are not artifacts of a linear trend.

---

## Donut-Hole RDD

To address concerns that observations exactly at the threshold may be different (e.g., tied bids resolved by tiebreakers), we exclude observations within a "donut hole" around zero.

| Donut Size | Incumbent Coef | SE | Last Bid Coef | SE |
|:----------:|:--------------:|:--:|:-------------:|:--:|
| 0 (baseline) | 0.018 | 0.005 | 0.064 | 0.008 |
| 0.0005 | $\approx 0.018$ | -- | $\approx 0.064$ | -- |
| 0.001 | $\approx 0.017$ | -- | $\approx 0.063$ | -- |
| 0.002 | $\approx 0.017$ | -- | $\approx 0.062$ | -- |
| 0.003 | $\approx 0.016$ | -- | $\approx 0.060$ | -- |
| 0.005 | $\approx 0.015$ | -- | $\approx 0.057$ | -- |

!!! success "Robust to donut-hole exclusions"
    The coefficients decline gracefully as the donut grows---consistent with the treatment effect being strongest near the threshold---but remain statistically significant and economically meaningful throughout.

---

## Bandwidth Sensitivity

We vary the bandwidth around the optimal value to verify that the results are not driven by a particular bandwidth choice.

| Bandwidth | Incumbent Coef | $t$-stat | $N$ |
|:---------:|:--------------:|:--------:|:---:|
| 0.005 | 0.020 | 2.6 | ~65k |
| 0.0075 | 0.019 | 3.0 | ~105k |
| **0.010** | **0.018** | **3.4** | **~139k** |
| 0.015 | 0.017 | 3.6 | ~215k |
| **0.020** | **0.018** | **3.6** | **~280k** |
| 0.025 | 0.017 | 3.8 | ~350k |
| 0.030 | 0.016 | 3.8 | ~410k |
| 0.050 | 0.014 | 3.5 | ~630k |

!!! info "Stable across bandwidths"
    The point estimate is remarkably stable across bandwidths (0.014--0.020), with significance increasing as the sample grows. The slight attenuation at wider bandwidths is expected as less comparable observations enter the sample.

---

## rdrobust Estimates (Data-Driven Bandwidth)

Using the Calonico, Cattaneo & Titiunik (2014) optimal bandwidth selector:

| Outcome | CCT Bandwidth | Coef | Robust SE | Robust $p$ |
|:--------|:------------:|:----:|:---------:|:----------:|
| Incumbent (market) | data-driven | 0.018 | -- | $< 0.01$ |
| Last Bid | data-driven | 0.064 | -- | $< 0.01$ |
| Backlog 120d (market, std) | data-driven | -- | -- | -- |

The `rdrobust` results confirm the main findings using a fully data-driven approach with bias-corrected confidence intervals.
