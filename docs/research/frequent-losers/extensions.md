# Extensions

This page presents additional analyses: IV robustness, Bajari--Ye with tender FE, year-by-year stability, FL definition variants, and network diagnostics.

---

## IV Robustness

### Balance Tests

Pre-determined observables are regressed on the LOO instrument with item, year, and PBU FE. All standardized differences are below 0.03$\sigma$, consistent with quasi-random FL supply variation.

### IV with Item-Group x Year FE

Adding item-group $\times$ year FE absorbs product-market-year shocks and restricts identification to within-cell variation across PBUs. This specification is reported in Appendix B as a consistency check.

### Placebo IV

Sub-threshold always-losers (firms that never win but participate below 14 tenders) are used as the instrument source. The placebo first stage is weak---an order of magnitude smaller than the main instrument---confirming that the FL screen captures a specific, not generic, bidder behavior.

---

## Bajari--Ye with Tender Fixed Effects

Re-estimating the Bajari--Ye first stage with tender $\times$ item FE absorbs all tender-level shocks (reference price, commodity prices, PBU effects). Only within-tender, cross-firm variation remains. This provides a cleaner test of bid coordination.

---

## Year-by-Year Stability

<figure>
  <img src="../assets/figures/fig_10_year_coefficients.png" alt="Year-by-year coefficients">
  <figcaption><strong>Figure 12.</strong> Year-by-year FL coefficients. The coefficient is stable across years for log prices and log firms.</figcaption>
</figure>

!!! success "Stable across time"
    The FL--price association is not driven by a particular time period. Coefficients are positive and significant in most years, with no clear trend.

---

## FL Definition Variants

<figure>
  <img src="../assets/figures/fig_12_fl_definition_robustness.png" alt="FL definition robustness">
  <figcaption><strong>Figure 13.</strong> FL price coefficient under alternative FL definitions: baseline (win rate = 0), low-win-rate variants, and cross-fitting.</figcaption>
</figure>

---

## Network Diagnostics

### Winner HHI Distribution

<figure>
  <img src="../assets/figures/fig_network_hhi.png" alt="Network HHI">
  <figcaption><strong>Figure 14.</strong> Distribution of winner HHI across FL firms. Higher HHI indicates that the FL firm consistently loses to the same winners---a signature of concentrated co-bidding partnerships.</figcaption>
</figure>

### Regime Test: Bid Dispersion

The empirical bid spread distribution of FL firms matches the simulated Regime 1 (complementary cover bidding) pattern rather than Regime 2 (coordinated).

<figure>
  <img src="../assets/figures/fig_05_regime_boxplot.png" alt="Regime boxplot">
  <figcaption><strong>Figure 15.</strong> Bid spread comparison across simulated regimes and empirical FL data.</figcaption>
</figure>

---

[:material-arrow-left: Back to Frequent Losers Summary](index.md) · [:material-book-open-variant: Back to Research](../working-papers.md)
