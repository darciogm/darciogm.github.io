# Manuscript

This page summarizes the contribution, institutional setting, formal framework, and empirical strategy of the paper.

---

## Contribution

The paper proposes an **enforcement architecture** in which an award-layer screening stage triages firms and procurement environments before a costly bid-layer forensic stage interrogates them. The frequent-loser flag is the empirical instantiation of the architecture, not its product.

Three substantive contributions:

1. **Architectural feasibility.** Routing forensic interrogation through an award-layer screen reduces the bid-microdata pool the forensic stage must work on by **83%** (1,985 of 11,676 firms) while still recovering **131 of 193** adjudicated cobidders. The screen triages; it does not adjudicate cartel membership: it ranks loser-side firms for costly bid-layer interrogation, not cartel members for legal sanction.

2. **Informational complementarity.** The screening and forensic stages are informational complements, not substitutes. Discrimination accuracy against the cobidder population is firm-level **AUC 0.864 under temporal holdout**, and the screen adds **+0.035 AUC** over the seven-feature Imhof–Wallimann bid-distribution pipeline (DeLong $p = 0.014$) when both are accessed. The architecture is therefore well-defined: the screen runs on operational data already maintained, and the forensic stage inherits a much smaller pool to interrogate.

3. **Portability.** Wherever an enforcement environment exposes the award layer routinely while reserving per-bidder bid amounts for forensic-recoverable access, the right enforcement design sequences screening before forensics, not the other way around. A simple separating-equilibrium argument with cover bidders motivates endogenous loser-side participation as the ranking primitive on the award layer.

**Non-claims (front-loaded).** The construct does not adjudicate cartel membership; cobidders are the validation object the data layer supports, and the AUC asymmetry against direct CADE defendants is the design's empirical signature of the loser-side scope, not a failure of the screening logic. The pricing imprint is not a causal estimate of cover bidding's effect on prices. The buyer-size gradient is scope information about where the screening signal varies across detection regimes, not identification of an institutional channel. The pregão–convite modal asymmetry is scope information about where the screening object discriminates better, not a positive test of the minimum-bidder-rule mechanism.

---

## Institutional Background

### The two observability layers

Cartel-detection screens have been developed on bid-distribution microdata, but most enforcement environments expose those microdata only through case-specific administrative requests. The paper's central institutional observation is that procurement systems operate on two distinct observability layers:

| Layer | Content | Access cost | Routine queryability |
|---|---|---|---|
| **Award layer** | Winner identity, participant identity, item code, negotiated price | Low (analytical-warehouse query, minutes) | Yes — audit courts and oversight bodies routinely query |
| **Bid-microdata layer** | Per-bidder bid amounts | High (administrative request, weeks) | No — forensic-recoverable on case-by-case basis |

Methods designed for the bid layer simply do not run on the layer that survives. The paper's architectural proposal exploits this asymmetry: cheap signals on the award layer triage the costly proof on the bid layer.

### BEC Platform

The **Bolsa Eletrônica de Compras (BEC)** is São Paulo state's centralized electronic procurement platform, used by 1,308 public buying units (PBUs) from 2009 to 2019.

Two procurement modalities are relevant:

| Modality | Format | Award-layer fields routinely available |
|----------|--------|----------------------------------------|
| **Convite** | Sealed-bid (Lei 8.666/93) | Winner, participants, item, negotiated price |
| **Pregão** | Electronic reverse auction | Winner, participants, item, negotiated price |

Per-bidder bid amounts are retained but require formal administrative request. This institutional configuration — routine award-layer query, costly bid-layer recovery — is exactly the asymmetry the architecture is designed to exploit.

### Lei 14.133/2021

Brazil's new procurement law consolidates pregão-style auctions as the institutional default. The post-sample reform direction is favorable for the architecture: the regime in which the screen discriminates most sharply (pregão) becomes the institutional default.

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
| **CADE-adjudicated cobidders** | 193 firms (validation ground truth) |

### Two-step rule

**Step 1 — Always-losers (Lemma 1):** firms with $\text{wins} = 0$ across all 2009–2019 tenders. The strict zero-win condition is the equilibrium choice of the cover-bidder type identified by Lemma 1.

**Step 2 — IQR threshold (Proposition 1 coarsening):** among always-losers, compute median + 1.5 × IQR of participation counts ≈ 14 tenders. Firms above this threshold are classified as frequent losers (FL).

**Result:** **2,735 FL firms** (16.2% of always-losers). The continuous primitive $\log(1+\text{tenders\_count})$ is the score; the binary FL rule is its operational coarsening.

!!! note "Treatment indicator"
    `losers = 1` if a tender-item has at least one FL participant. FL presence occurs in ~5% of analysis-sample tenders.

---

## Empirical Strategy

The empirical strategy operates in three tiers, in order of importance.

### Tier 1 — Discrimination (the screen's primary validation)

Against the cobidder population inside the always-loser stratum (193 firms that participated alongside adjudicated CADE direct defendants), the flag yields **firm-level AUC 0.864 under temporal holdout** (train 2009–2016, test 2017–2019). On a strict pre-2020 benchmark with participation-stratified permutation null, the conservative AUC is corroborated by a 3.2× excess over the random-matching baseline ($p < 0.001$).

A leakage audit decomposes the raw in-sample item-level AUC of 0.995 into a structural component (≈ 0.86–0.89 under out-of-fold CV and temporal holdout) and a pure-leakage component (0.10–0.13). The structural component is what the screening interpretation rests on.

### Tier 2 — Architecture (the contribution's headline)

Against the seven-feature Imhof–Wallimann bid-distribution pipeline trained on the forensic-recoverable bid-microdata layer, the award-layer flag matches AUC on a thinner envelope and adds non-redundant signal in same-sample combination (**+0.035 AUC**, DeLong $p = 0.014$). A sequential gatekeeper rule that uses the flag to filter which firms enter the forensic stage catches **131 of 193** adjudicated cobidders in the top-1,000 flag list while interrogating bid microdata for **1,985** firms instead of 11,676 — an **83% data-envelope reduction** whose recall robustness survives temporal holdout.

### Tier 3 — Pricing imprint (descriptive corroboration only)

The conditional log-price association across four estimators is +3.6% to +7.7% on the broad sample, with the positive sign concentrated in the largest-tender-value stratum (Q4) and a sign reversal under overlap restriction. This section is reported descriptively; the paper does not rest on either sign of $\beta$. The screening-value formalization that motivates why broad-sample $\beta$ remains an economic object under coarsened observability is in Online Appendix A (Proposition 3); the body of the paper does not lean on it.

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
