# Manuscript

This page summarizes the contribution, institutional setting, data, and empirical strategy of the paper.

---

## Contribution

The paper makes three main contributions:

1. **FL as screening marker (H1).** We show that frequent losers---firms with a zero win rate and abnormally high participation counts---are a reliable empirical marker for procurement anomalies. FL presence correlates with 4--9% higher prices, and FL firms are 3.5 times more likely to co-participate with CADE-convicted cartelists.

2. **Cover bidding mechanism (H2).** We provide evidence consistent with the causal interpretation that FL firms act as cover bidders. A leave-one-out IV yields a 21% price markup ($F = 396$), Bajari--Ye tests reject bid independence, and network analysis reveals that the price effect concentrates in competitive markets.

3. **Operational screen.** The FL screen requires only participation and outcome data---no bid values---making it deployable by any competition authority with electronic procurement records. We propose a four-step implementation blueprint: Flag, Triage, Investigate, Monitor.

---

## Institutional Background

### BEC Platform

The **Bolsa Eletronica de Compras (BEC)** is Sao Paulo state's centralized electronic procurement platform, used by 1,308 public buying units (PBUs) from 2009 to 2019.

Two procurement modalities are relevant:

| Modality | Format | Key Feature |
|----------|--------|-------------|
| **Convite** | Sealed-bid | Requires minimum 3 bidders; threshold R\$ 80,000 |
| **Pregao** | Electronic reverse auction | Standard modality; no bidder minimum; real-time bids |

### Cover Bidding Incentives

- **Convite**: the 3-bidder minimum creates direct demand for shill bids---a cartel with fewer than 3 members needs cover bidders to meet the threshold
- **Pregao**: real-time observation of bids facilitates Regime 1 (complementary) cover bidding, where cover bidders monitor the auction and submit bids above the designated winner

---

## Conceptual Framework

The cartel chooses the optimal number of cover bidders $n^*$ to maximize:

$$\Pi(n) = \underbrace{B(n)}_{\text{price gain}} - \underbrace{C(n)}_{\text{coordination cost}} - \underbrace{\theta(n) \cdot F}_{\text{detection cost}}$$

### Two Regimes of Cover Bidding

| | Regime 1: Complementary | Regime 2: Coordinated |
|---|---|---|
| **Bid distribution** | $U[\bar{b}, \bar{b}+\delta]$ (wide, above winner) | $N(\mu_c, \sigma_c^2)$ (tight, near winner) |
| **Coordination** | Minimal (just "show up and lose") | Precise calibration required |
| **Testable signature** | Wide FL bid dispersion | Narrow FL bid dispersion |

### Five Testable Predictions

| Prediction | Description | Test |
|-----------|-------------|------|
| **P1** | FL tenders have higher prices | OLS / IV regressions |
| **P2** | FL tenders have more genuine competitors | Non-FL firm count |
| **P3** | Regime 1 has wider FL bid dispersion | Bid spread CV comparison |
| **P4** | FL residuals differ from non-FL residuals | Bajari--Ye exchangeability |
| **P5** | FL residuals are correlated within tenders | Bajari--Ye conditional independence |

---

## Data and FL Definition

### Sample

| Dimension | Value |
|-----------|-------|
| **Source** | BEC (Sao Paulo, 2009--2019) |
| **Tender-items** | 4.5 million (raw); 1.65 million (analysis sample) |
| **Bids** | 40 million (bid-level) |
| **Firms** | 41,000 total; 16,843 always-losers |
| **PBUs** | 1,308 public buying units |
| **Item types** | 18,783 |

### FL Definition (Two-Step)

**Step 1 --- Always-losers:** 16,843 firms with win rate = 0 across all 2009--2019 tenders.

**Step 2 --- IQR threshold:** Among always-losers, compute median + 1.5 $\times$ IQR of participation counts $\approx$ 14 tenders. Firms above this threshold are classified as FL.

**Result:** **2,735 FL firms** (16.2% of always-losers).

<figure>
  <img src="../assets/figures/fig_01_losses_distribution.png" alt="FL distribution">
  <figcaption><strong>Figure 1.</strong> Distribution of tender participations among always-loser firms. The dashed line indicates the IQR threshold separating FL firms (right) from non-FL always-losers (left).</figcaption>
</figure>

<figure>
  <img src="../assets/figures/fig_02_iqr_identification.png" alt="IQR identification">
  <figcaption><strong>Figure 2.</strong> IQR identification of frequent losers. The threshold at median + 1.5 x IQR classifies firms to the right as FL.</figcaption>
</figure>

!!! note "Treatment variable"
    `losers = 1` if a tender-item has at least one FL participant. FL presence occurs in 4.8% of analysis-sample tenders (79,456 tender-items).

---

## Empirical Strategy

### OLS Baseline (H1)

$$y_{igt} = \beta \cdot \text{losers}_{igt} + \mathbf{x}_{igt}' \boldsymbol{\delta} + \alpha_g + \lambda_t + \gamma_k + \varepsilon_{igt}$$

where $y_{igt}$ is the outcome for tender-item $i$ in item group $g$ at time $t$ and purchasing unit $k$; $\alpha_g$, $\lambda_t$, $\gamma_k$ are item, year, and PBU fixed effects; errors clustered at item level.

**Four specifications:** (1) item + year FE, (2) + PBU FE, (3) pregao only, (4) convite only.

**Four DVs:** log negotiated price, log firms, log bids, log non-FL firms.

### Instrumental Variable (H2)

$$Z_{kgt} = \sum_{j \neq k} \mathbf{1}[\text{FL firm active at PBU } j \text{ in group } g, \text{ year } t]$$

The **leave-one-out instrument** counts FL firms active at *other* PBUs in the same product market and year. The exclusion restriction requires that FL activity at distant PBUs affects PBU $k$'s outcomes only through FL participation at $k$ itself.

### Bajari--Ye Tests

Three-step procedure using bid residuals:

1. **Exchangeability:** KS test comparing FL vs. non-FL residual distributions
2. **Conditional independence:** pairwise product of FL residuals within tenders (bootstrap $p < 0.001$)
3. **Fake-groups placebo:** random assignment yields null results

---

## Software and Estimation

| Component | Specification |
|-----------|--------------|
| **Language** | R 4.5+ |
| **Fixed effects** | `fixest` (OpenMP, 16 threads) |
| **Data** | `data.table` + `arrow` (Parquet format) |
| **Tables** | `modelsummary` + `kableExtra` |
| **Figures** | `ggplot2` |
| **Clustering** | Item level (baseline); PBU and two-way robustness |
| **Pipeline** | 13 R scripts via `00_master.R` (~8 min on 16 cores) |
