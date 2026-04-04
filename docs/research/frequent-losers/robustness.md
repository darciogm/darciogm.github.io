---
paper: frequent-losers
---

# Robustness

We stress-test the screen from every angle---definition, data, assumptions, and alternative interpretations.

---

## 1. FL Definition Robustness

### IQR Threshold Sensitivity

The coefficient decreases monotonically with stricter thresholds, most likely reflecting classification noise as the treated group shrinks. A two-dimensional sensitivity analysis varying both the IQR multiplier and win-rate cutoff produces significant coefficients across **all 36 cells**.

| Multiplier | FL Firms | Coefficient | SE |
|:---:|:---:|:---:|:---:|
| 1.0x | 3,442 | 0.079 | (0.023) |
| **1.5x (baseline)** | **2,735** | **0.064** | **(0.020)** |
| 2.0x | 2,093 | 0.060 | (0.022) |
| 3.0x | 1,456 | 0.050 | (0.024) |

<figure>
  <img src="../assets/figures/fig_07_threshold_stability.png" alt="Threshold stability">
  <figcaption><strong>Figure 8.</strong> FL price coefficient across IQR multiplier thresholds. Error bars show 95% confidence intervals.</figcaption>
</figure>

### Cross-Fitting

FL firms defined using odd years, regressions estimated on even years (and vice versa). The cross-fold average (0.036) is attenuated relative to full-sample OLS (0.064) but remains positive. A decomposition exercise yields 0.043 (SE = 0.019), indicating roughly two-thirds of the attenuation reflects classification noise from the smaller subsample, not mechanical bias.

### Continuous Treatment

A continuous measure---log of the most active always-loser's participation count---yields 0.022 (SE = 0.005, $p < 0.01$) per log-point.

---

## 2. Sample and Specification Robustness

| Check | Coefficient | $N$ | Note |
|:---|:---:|:---:|:---|
| OLS (item + year + PBU FE) | 0.064 | 1,654,401 | Baseline |
| CEM matching | 0.077 | 969,751 | Coarsened exact matching |
| IPW matching | 0.055 | 830,194 | Inverse probability weighting |
| Item x year FE | 0.074 | 1,654,401 | Tighter controls |
| Two-way clustering (item + PBU) | 0.064 (SE = 0.024) | 1,654,401 | Significant under all clustering |
| Horse-race (FL + Imhof CV) | 0.084 | 1,654,401 | Suppression effect |
| Decomposition (odd-yr FL) | 0.043 | 1,654,401 | Intermediate |

---

## 3. Sensitivity to Unobservables (Cinelli--Hazlett)

<figure>
  <img src="../assets/figures/fig_08_sensitivity_contour.png" alt="Sensitivity contour">
  <figcaption><strong>Figure 9.</strong> Sensitivity contour plot (Cinelli & Hazlett, 2020). The robustness value RV = 17.5% means an unobserved confounder would need to explain at least 17.5% of the residual variation in both FL presence and log prices to reduce the coefficient to zero.</figcaption>
</figure>

!!! success "Robust to omitted variable bias"
    The robustness value $RV_{q=1} = 17.5\%$ is a stringent requirement given the rich fixed effects structure (item + year + PBU).

### Oster Coefficient Stability

The Oster (2019) bound is **degenerate** ($\hat{\delta} = 261.6$) because PBU FE barely move $R^2$ (0.879 to 0.886)---a design strength, not fragility. The Cinelli--Hazlett framework ($RV = 17.5\%$) is the appropriate sensitivity metric.

---

## 4. Staggered Difference-in-Differences

The staggered DiD is reported as a **complementary exercise**. Positive pre-trends at $t = -2$ and $t = -3$ preclude a causal reading, consistent with strategic market selection.

### Callaway & Sant'Anna

| Metric | Value |
|--------|-------|
| ATT (log prices) | 0.014 (SE = 0.039) |
| Status | Positive but insignificant |

### Stacked DiD

| Metric | Value |
|--------|-------|
| Coefficient | $-0.006$ (SE = 0.014) |
| $N$ | 715,116 |
| Status | Pre-trends preclude causal reading |

!!! info "Non-causal framing"
    The pre-trends are consistent with strategic market selection but equally compatible with unobserved confounding. The paper relies on within-item conditional comparisons for this reason, not on the DiD.

<figure>
  <img src="../assets/figures/fig_06_event_study.png" alt="Event study">
  <figcaption><strong>Figure 10.</strong> TWFE event study: coefficients on years relative to first FL entry, by outcome variable.</figcaption>
</figure>

---

## 5. IV as Measurement-Error Diagnostic

The leave-one-out IV is reported as a measurement-error diagnostic, not a preferred estimate. Exclusion-restriction concerns keep it off the primary 3.6--7.7% range.

| DV | OLS | IV | First-stage $F$ |
|:---|:---:|:---:|:---:|
| Log price | 0.064 | **0.194** | 396 |
| Log firms | 0.167 | 0.501 | 396 |
| Log bids | 0.169 | 0.614 | 396 |
| Log non-FL firms | 0.143 | 0.404 | 396 |

The implied signal-to-total-variance ratio:

$$\hat{\lambda} = \frac{\hat{\beta}_{\text{OLS}}}{\hat{\beta}_{\text{IV}}} = \frac{0.064}{0.194} \approx 0.33$$

!!! info "Measurement-error interpretation"
    Given that the FL dummy is a deliberately coarse screen defined by a distributional threshold, a signal-to-noise ratio of one-third is plausible. The OLS estimate captures the conditional association; the IV points to attenuation in the binary indicator. Neither is causal.

### Balance Tests

Pre-determined observables regressed on the LOO instrument with item, year, and PBU FE yield standardized differences below 0.03$\sigma$---statistically significant but **economically negligible** ($< 0.001$).

---

## 6. Oversight Heterogeneity

The FL--price association varies sharply with PBU size: a **12.5x gradient** across quartiles.

| PBU Size Quartile | Coefficient | Interpretation |
|:---:|:---:|:---|
| Q1 (smallest) | 0.214 | Weakest oversight |
| Q2 | 0.098 | |
| Q3 | 0.045 | |
| Q4 (largest) | 0.017 | Strongest oversight |

The monotonic decline matches the framework's comparative static ($\partial m^*/\partial \theta_k < 0$): where oversight is weaker, the screen bites harder. Smaller PBUs also have thinner fixed-effect cells, so part of the gradient could be mechanical, but the monotonic decline across all four quartiles is hard to attribute to noise alone.

<figure>
  <img src="../assets/figures/fig_14_oversight_heterogeneity.png" alt="Oversight heterogeneity">
  <figcaption><strong>Figure 11.</strong> FL price coefficient by oversight proxy (PBU size quartile and procedure type).</figcaption>
</figure>

---

## Robustness Summary Table

| Check | Coeff. | SE | $N$ | Assumption |
|:---|:---:|:---:|:---:|:---|
| OLS (item + year + PBU FE) | 0.064 | 0.020 | 1,654,401 | Sel. on obs. + FE |
| CEM | 0.077 | 0.024 | 969,751 | Sel. on obs. |
| IPW | 0.055 | 0.021 | 830,194 | Sel. on obs. |
| Cross-fit | 0.036 | 0.019 | 1,654,401 | Sel. on obs. + FE; no mechanical link |
| IQR 1.0x | 0.079 | 0.023 | 1,654,401 | Sel. on obs. + FE |
| IQR 2.0x | 0.060 | 0.022 | 1,654,401 | Sel. on obs. + FE |
| IQR 3.0x | 0.050 | 0.024 | 1,654,401 | Sel. on obs. + FE |
| Item x year FE | 0.074 | 0.022 | 1,654,401 | Sel. on obs. + FE |
| Two-way clustering | 0.064 | 0.024 | 1,654,401 | Sel. on obs. + FE |
| Horse-race (FL + CV) | 0.084 | 0.023 | 1,654,401 | Sel. on obs. + FE |
| Continuous (log max AL) | 0.022 | 0.005 | 1,654,401 | Sel. on obs. + FE |
| IV (leave-one-out) | 0.194 | 0.077 | 1,654,401 | Excl. restriction |
| Stacked DiD | $-0.006$ | 0.014 | 715,116 | Parallel trends |
| Oster $\hat{\delta}$ | degen. | -- | 1,654,401 | $R^2$ gap $\approx$ 0 |
