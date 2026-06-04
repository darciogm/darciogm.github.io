---
paper: frequent-losers
---

# Manuscript

This page summarizes the contribution, institutional setting, formal framework, and empirical strategy of the paper.

---

## Contribution

The paper reframes procurement-cartel screening as an **evidence-allocation problem under costly observability**. Enforcement must spend costly proof-producing effort *before* legal proof exists, drawing first on administrative records that are cheap but legally thin. Cheap award-layer records (who participates, wins, keeps losing) can order forensic priority — they cannot prove conduct. The frequent-loser construct is a minimal award-layer object used to ask how far such records reach; it ranks forensic priority and does not detect cartels.

Three substantive contributions:

1. **Screening as evidence allocation.** The paper recasts the problem from stand-alone classification to resource allocation: which firms and environments justify the costly recovery of bid-level evidence? Cheap award-layer records order *where* to look; the richer bid layer evaluates *what* is found. Liability remains in the bid-level record.

2. **A transferable decomposition method.** The construct's apparent power is decomposed into a genuine ranking signal and three confounds most screening studies leave bundled — mechanical opportunity exposure, retrospective information, and single-case concentration. Against adjudication-anchored cobidders, raw concentration looks high (pooled/exposure-only **AUC 0.946**), but holding procurement opportunity fixed the within-stratum **AUC is 0.7715**, a genuine increment of **+0.042** over mechanical exposure (DeLong $p \approx 2\times10^{-6}$). Most apparent power is opportunity arithmetic; a limited but significant signal survives. The method, not the construct, is the transferable contribution.

3. **A map of reach and limits.** The paper marks where cheap administrative records can and cannot order forensic priority. The score is at chance (**AUC $\approx$ 0.49**) against win-heavy direct CADE defendants *by design* (loser-side scope signature); it orders firms **retrospectively among incumbents**, not prospectively across the platform (strict 2009–16 → 2017–19 timing survives only in the always-loser pool, $\approx 0.77$; platform-wide ROC $\approx 0.55$, precision@500 $\approx 0$); and one adjudicated case (rail/metro) supplies $\approx 55\%$ of positives (leave-largest-case-out collapses PR-AUC from 0.126 to 0.036, $-71\%$).

**Division of labor, not architectural feasibility.** Against the seven-feature Imhof–Wallimann bid-distribution benchmark (**AUC 0.888**), the FL-binary award score (**AUC 0.921**) and the combined model (**AUC 0.962**) show the award layer adds information *beyond* the bid benchmark — complementarity, not dominance, and leakage-sensitive. Sequencing award → bid traces a **cost–recall frontier**: at the top-2,000-firm operating point, recall is $\approx 0.67$ with an $\approx 88\%$ reduction in firms but only $\approx 33\%$ in bid rows, because the survivors are high-participation firms (beating random 3–12×). The frontier, not any single cutoff, is the design object.

**Non-claims (front-loaded).** The construct does not adjudicate cartel membership; cobidders are adjudication-anchored exposure, not cartel members, and the AUC asymmetry against direct CADE defendants is the design's empirical signature of the loser-side scope, not a failure of the screening logic. The pricing imprint is **scope evidence, not damages**: broad +0.064 reflects selection into higher-price cells, the overlap-cell ATT (−0.097) blocks a markup reading, and no overcharge is claimed. The cover-bidding "theater" mechanism is **not identified**. The buyer-size and pregão–convite gradients are scope information about where the screening signal varies, not identification of an institutional channel.

---

## Institutional Background

### The two observability layers

Cartel-detection screens have been developed on bid-distribution microdata, but most enforcement environments expose those microdata only through case-specific administrative requests. The paper's central institutional observation is that procurement systems operate on two distinct observability layers:

| Layer | Content | Access cost | Routine queryability |
|---|---|---|---|
| **Award layer** | Winner identity, participant identity, item code, negotiated price | Low (analytical-warehouse query, minutes) | Yes — audit courts and oversight bodies routinely query |
| **Bid-microdata layer** | Per-bidder bid amounts | High (administrative request, weeks) | No — forensic-recoverable on case-by-case basis |

Methods designed for the bid layer simply do not run on the layer that survives. The paper's evidence-allocation framing exploits this asymmetry: cheap signals on the award layer order forensic priority before the costly proof on the bid layer is recovered.

### BEC Platform

The **Bolsa Eletrônica de Compras (BEC)** is São Paulo state's centralized electronic procurement platform, used by 1,308 public buying units (PBUs) from 2009 to 2019.

Two procurement modalities are relevant:

| Modality | Format | Award-layer fields routinely available |
|----------|--------|----------------------------------------|
| **Convite** | Sealed-bid (Lei 8.666/93) | Winner, participants, item, negotiated price |
| **Pregão** | Electronic reverse auction | Winner, participants, item, negotiated price |

Per-bidder bid amounts are retained but require formal administrative request. This institutional configuration — routine award-layer query, costly bid-layer recovery — is exactly the asymmetry the evidence-allocation framing exploits.

### Lei 14.133/2021

Brazil's new procurement law consolidates pregão-style auctions as the institutional default. The post-sample reform direction is favorable for the approach: the regime in which the screen discriminates most sharply (pregão) becomes the institutional default.

---

## Formal Framework

The framework is deliberately spare. The role of the formalization is to identify the participation primitive a cartel-deployed cover bidder generates in award-record data and to discipline the interpretation of the empirical objects, not to provide a fully-specified mechanism-design treatment of cartel formation. Micro-foundations for the cartel allocation rule and the side-payment scheme are taken as given (Marshall–Marx 2012; Asker 2010).

### Primitives

A cartel of $n$ firms is active in a procurement market $k$ with $|k|$ auctions per period. The cartel allocates a designated winner with bid $b^*$ in each cartel-targeted auction and chooses the per-period deployment count $m \geq 0$ (number of auctions per period in which the cartel deploys at least one cover bidder). Per-deployment cost is $c_1 > 0$, market-level detection probability is $\theta_k \in (0,1)$, and the cartel-wide marginal detection penalty per cover-deployment is $\phi_0 > 0$. Let $R(m, \theta_k)$ denote gross expected cartel rents. Net surplus is

$$\pi(m, \theta_k, c_1) = R(m, \theta_k) - (c_1 + \theta_k \phi_0)\,m.$$

### Six assumptions

- **A1** (Rent positivity at the margin): $\partial R/\partial m|_{m=0} > c_1 + \theta_k \phi_0$
- **A2** (Diminishing rents): $\partial^2 R/\partial m^2 < 0$
- **A3** (Cartel-allocation IC): $\text{rents} < \kappa$ for any non-designated firm
- **A4** (Type partition): non-cartel firms are cover bidder (C) or genuine entrant (G)
- **A5** (Stationary deployment): per-period deployment $m$ constant within market with conditional independence
- **A6** (Selection on wins-zero subset): on $\{\text{wins}_i = 0\}$, $\lambda_G < \lambda_C$

### Four formal results

| Result | Content | Empirical use |
|---|---|---|
| **Lemma 1** | Every separating equilibrium has $b_\ell > b^*$ for every cover bidder, so $\Pr(\text{win} \mid C) = 0$. The wins-zero filter identifies the type-$C$ subset. | Restricts analysis to always-loser stratum |
| **Proposition 1** | $\log(1+\text{tenders\_count})$ is a Bayesian-monotone ranking statistic for type $C$ on the wins-zero subset (MLR for Poisson, Karlin–Rubin 1956). | Justifies the continuous score; binary frequent-loser rule is its information-coarsening |
| **Proposition 2** | $m^*$ satisfies FOC $\partial R/\partial m = c_1 + \theta_k \phi_0$; comparative statics $\partial m^*/\partial \theta_k < 0$ and $\partial m^*/\partial c_1 < 0$. | Predicts deployment is more aggressive where detection is cheaper (tested via buyer-size heterogeneity) |
| **Proposition 3** | Under the rent-component co-movement premise, an observed sign reversal $\beta > 0, \beta^{\text{ov}} < 0$ is consistent with the deployment problem rather than refuting it. | Structural rationalization (Online Appendix); the body does not lean on this |

Full assumptions, statements, and proofs are in Online Appendix A.

---

## Frequent-Loser Construct (operational instantiation)

### Sample

| Dimension | Value |
|-----------|-------|
| **Source** | BEC (São Paulo, 2009–2019) |
| **Tender-items** | 4.5 million (raw); 1.65 million (analysis sample) |
| **Bids** | 40 million (bid-level, retained for forensic interrogation) |
| **Firms** | ~41,000 total; 16,843 always-losers |
| **PBUs** | 1,308 public buying units |
| **Adjudication-anchored cobidders** | 193 firms (validation target — always-losers that bid alongside direct CADE defendants; *not* cartel members) |

### Two-step rule

**Step 1 — Always-losers (Lemma 1):** firms with $\text{wins} = 0$ across all 2009–2019 tenders. The strict zero-win condition is the equilibrium choice of the cover-bidder type identified by Lemma 1.

**Step 2 — IQR threshold (administrative cut):** among always-losers, compute median + 1.5 × IQR of participation counts ≈ 14 tenders. Firms at or above this threshold ($T_i \geq 14$, "FL14") are classified as frequent losers (FL). The threshold is **administrative — a deployable rounding of the continuous rank — not structural or legal**; the score $s_i = \log(1+T_i)$ is the object, and the binary FL14 rule is its operational coarsening.

**Result:** **2,735 FL firms** (16.2% of always-losers).

!!! note "Treatment indicator"
    `losers = 1` if a tender-item has at least one FL participant. FL presence occurs in ~5% of analysis-sample tenders.

---

## Empirical Strategy

The empirical strategy operates in three tiers, in order of importance.

### Tier 1 — Decomposition (the paper's core)

Against the adjudication-anchored cobidder population inside the always-loser stratum (193 firms that bid alongside direct CADE defendants), raw concentration looks high: **pooled/exposure-only AUC 0.946**. The decomposition then holds procurement opportunity fixed: the **within-stratum AUC is 0.7715**, a genuine increment of **+0.042** over mechanical exposure (DeLong $p \approx 2\times10^{-6}$). Most apparent power is opportunity arithmetic; a limited but significant ranking signal survives. The honest discrimination headline is the **+0.04 increment**, not the pooled figure.

Two further confounds are isolated and disclosed. **Timing:** the strict 2009–16 → 2017–19 holdout survives only inside the always-loser pool ($\approx 0.77$); across the full platform universe ROC $\approx 0.55$ and precision@500 $\approx 0$ — the score orders firms **retrospectively among incumbents**, not prospectively across the platform (sequential strict-timing deployment is infeasible). **Single-case concentration:** one adjudicated case (rail/metro) supplies $\approx 55\%$ of positives; leave-largest-case-out collapses PR-AUC from 0.126 to 0.036 ($-71\%$).

### Tier 2 — Division of labor with bid-layer forensics

Against the seven-feature Imhof–Wallimann bid-distribution benchmark trained on the forensic-recoverable bid-microdata layer (**AUC 0.888**), the FL-binary award score (**AUC 0.921**) and the combined model (**AUC 0.962**) show the award layer adds information *beyond* the bid benchmark — **complementarity, not dominance**, and leakage-sensitive. The award layer ranks *where* to look; the bid layer evaluates *what* is found. Sequencing the two traces a **cost–recall frontier**: at the top-2,000-firm operating point, recall is $\approx 0.67$ with an $\approx 88\%$ reduction in *firms* but only $\approx 33\%$ in *bid rows* — because the survivors are high-participation firms — beating random by 3–12×. The frontier, not any single cutoff, is the design object.

### Tier 3 — Pricing imprint (scope evidence, not damages)

The conditional log-price association is broad **+0.064** — selection into higher-price cells — but the overlap-cell ATT (**−0.097**) blocks a markup reading, only the Q4 cell is positive (**+0.041**), and the direct-CADE price effect is null. This section is reported as **scope evidence, not damages or overcharge**; the cover-bidding "theater" mechanism is **not identified**. The screening-value formalization that motivates why broad-sample $\beta$ remains an economic object under coarsened observability is in Online Appendix A (Proposition 3); the body of the paper does not lean on it.

---

## Software and Reproducibility

| Component | Specification |
|-----------|--------------|
| **Languages** | R 4.5+, Python 3.12 |
| **Fixed effects** | `fixest` (OpenMP, 12 threads) |
| **Data** | `data.table` + `arrow` (Parquet); DuckDB for joins |
| **Tables/figures** | `modelsummary` + `kableExtra` + `ggplot2` |
| **Macro discipline** | Every numeric claim bound to a `\val*` macro in `values.tex` with explicit `% src:` script provenance (200 macros used, zero ghosts, zero without provenance) |
| **Pipeline** | Master scripts execute the full reproduction in ~8 minutes on 16 cores |
