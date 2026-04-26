---
paper: sme-public
---

# Advanced Methods

This page documents the structural-econometric machinery underlying the v5 (JPubE submission-ready) version of the paper. Five components combine: (1) drop-out point identification of type-specific cost distributions; (2) auction-level unobserved-heterogeneity correction; (3) Athey--Seira treatment of equilibrium entry; (4) Bayes--Nash counterfactual simulation; (5) Saez--Stantcheva welfare weights.

---

## 1. Type-specific cost distributions (Haile and Tamer 2003)

The Pregao auction is a descending-clock electronic English-reverse auction. Under independent private values, the weakly dominant strategy is to **exit when the running clock price reaches one's own cost**. Drop-out prices of losers therefore *point-identify* their costs, without requiring inversion of a bid function or parametric assumptions on bidding.

Three estimators of F<sub>c</sub><sup>k</sup> are used:

| Estimator | Bias | Use |
|---|---|---|
| **Losers-only** | Overstates F<sub>c</sub><sup>k</sup> in the left tail (omits the lowest cost draw per auction) | Reference / DiD-equivalent |
| **All-bidders (baseline)** | Slight downward bias throughout (treats winner's final clock price ≈ c<sub>(2)</sub> as their cost) | Main specification |
| **Turnbull NPMLE** | Point-identified (treats winner formally as left-censored at c<sub>(2)</sub>) | Robustness benchmark |

Across the eight (class × type × period) strata, the median estimates satisfy Turnbull ≤ all-bidders ≤ losers-only in all 8 strata. The BNE decomposition computed on the Turnbull input differs from the all-bidders baseline by **at most 16% of the total effect** across classes.

<figure>
  <img src="../assets/figures/fig_v3_pregao_fc_by_stratum.png" alt="Recovered cost distributions by stratum">
  <figcaption>Figure 1. Recovered type-specific cost distributions F<sub>c</sub><sup>k</sup> by (class × type × period) stratum, normalized by the item reference price.</figcaption>
</figure>

### Cross-modality consistency check

Convite auctions in the same sample are first-price sealed-bid; the Guerre, Perrigne, and Vuong (2000) inversion recovers F<sub>c</sub><sup>k</sup> from the Convite bid distribution. The Convite GPV and Pregao drop-out estimates **coincide to approximately one percentage point at the median in pharma non-SME Pre** — the stratum where the comparison is least confounded by the policy reform. The check also serves as an indirect collusion screen: the bidder-group detection tests of Conley and Decarolis (2016) would flag systematic divergence between GPV-inverted bids and drop-out exits in collusive settings; the convergence reported here is consistent with non-collusive equilibrium play.

<figure>
  <img src="../assets/figures/fig_v3_cross_modality_uh.png" alt="Cross-modality identification check">
  <figcaption>Figure 2. Cross-modality identification check on UH-clean residuals. Each panel plots the type-specific cost distribution two ways: GPV (2000) inversion on Convite first-price sealed-bid auctions (solid) and Haile and Tamer (2003) drop-out point-ID on Pregao descending-clock auctions (dashed). Convergence in the pharma non-SME Pre panel supports the IPV restriction in that stratum.</figcaption>
</figure>

---

## 2. Auction-level heterogeneity correction (Krasnokutskaya 2011)

The normalized log-bid is decomposed as

$$y_{it} = \log(b_{it} / p_t^{\mathrm{ref}}) = a_t + e_{it}$$

where a<sub>t</sub> is an auction-level scale common to all bidders in auction t, and e<sub>it</sub> is bidder-specific. Method-of-moments variance decomposition delivers stratum-specific σ<sub>a</sub><sup>2,k</sup> and σ<sub>e</sub><sup>2,k</sup>, and a best-linear-predictor shrinkage strips a<sub>t</sub> out of every log-bid:

$$\hat{a}_t = \frac{\hat\sigma_a^2 N_t}{\hat\sigma_a^2 N_t + \hat\sigma_e^2} (\bar y_t - \bar y), \qquad \hat e_{it} = y_{it} - \hat a_t.$$

Intraclass correlation ρ<sup>k</sup> ranges from approximately **0.36 to 0.59** across the three Pregao cells outside the low-n pharma-SME-Pre stratum — comparable to the **0.50--0.70 range Krasnokutskaya (2011) reports** for California highway contracts.

The correction closes **93% of the cross-modality median gap in pharma SME Post**, 23% in pharma non-SME Post, and leaves the non-pharma gap largely intact — evidence that auction-level heterogeneity is the binding constraint in pharma but only part of the story in non-pharma.

<figure>
  <img src="../assets/figures/fig_v3_pregao_ht_bands.png" alt="Pregao Haile-Tamer bounds">
  <figcaption>Figure 3. Pregao Haile-Tamer bounds on the recovered cost CDFs by stratum. Bands show the gap between the losers-only upper bound and the all-bidders / Turnbull lower bound.</figcaption>
</figure>

---

## 3. Equilibrium entry (Athey and Seira 2011 spirit)

Entry is modeled as Poisson arrivals with stratum-specific rates. The Bayes-Nash counterfactual takes equilibrium arrival rates as primitives rather than solving for them explicitly:

- Pre-period counts (N<sup>SME</sup><sub>Pre</sub>, N<sup>¬</sup><sub>Pre</sub>) — status-quo arrival rates under the open regime
- Post-period counts (N<sup>SME</sup><sub>Post</sub>, 0) — equilibrium arrival under the restricted regime

In the **main specification**, F<sub>c</sub><sup>SME,Post</sup> is treated as an equilibrium-selection object generated by the protected regime rather than forced to equal F<sub>c</sub><sup>SME,Pre</sup>. The Online Appendix reports the **strict-invariance limiting case** in which that equality is imposed as a benchmark — the same rule, but with the protected SME pool drawn from the open-regime primitive.

A KS test on UH-cleaned non-SME F<sub>c</sub> rejects strict invariance in three of the four Pregao strata (KS distances 0.06--0.14), providing the empirical foundation for adopting equilibrium selection as the main specification rather than strict invariance.

A zero-profit calculation applied to the simulated winning-margin profit distribution delivers an implied entry cost per bidder in the **R\$0.11--R\$2.46 range**, with non-SMEs facing roughly 4.5 times the SME entry cost across both classes.

---

## 4. Bayes-Nash counterfactual simulation

With F<sub>c</sub><sup>k</sup> and entry counts in hand, the BNE counterfactual is a Monte Carlo over draws from the estimated primitives. For each of B = 2,000 simulated auctions:

1. Draw n<sup>SME</sup> ~ Poisson(N̄<sup>SME</sup>) and analogously for non-SMEs.
2. Sample costs from the corresponding F<sub>c</sub><sup>k</sup>.
3. Sort the realized costs.
4. Record c<sub>(1)</sub> (production cost of the lowest-cost firm), c<sub>(2)</sub> (expected transaction price under revenue equivalence), and the winner's type.

Aggregating over draws yields the means, quantiles, and decompositions reported in [Results](results.md). Standard errors come from a **cluster bootstrap at the auction level with B<sub>bs</sub> = 500 replicates**, which preserves within-auction correlation through the auction-level scale a<sub>t</sub>.

The simulated total effect on the second-order statistic decomposes arithmetically as

$$\underbrace{p_{S_3} - p_{S_1}}_{\text{simulated total effect}} = \underbrace{(p_{S_2} - p_{S_1})}_{\text{within-auction (sheltered bidding)}} + \underbrace{(p_{S_3} - p_{S_2})}_{\text{participation-margin}}.$$

<figure>
  <img src="../assets/figures/fig_v3_bne_prices.png" alt="BNE simulated prices">
  <figcaption>Figure 4. BNE simulated transaction prices by counterfactual scenario and class.</figcaption>
</figure>

---

## 5. Welfare weights (Saez and Stantcheva 2016)

A social planner aggregating producer and consumer surplus with weight w<sup>SME</sup> on SME producer surplus is indifferent between V0 (full set-aside) and V3 (10% price preference) when

$$w^{\text{SME}}_\star = \frac{\text{Loss}(V_0) - \text{Loss}(V_3)}{\text{SMESurplus}(V_0) - \text{SMESurplus}(V_3)}.$$

The Loss term combines allocative DWL and the marginal-cost-of-public-funds distortion from the welfare arithmetic of [Extensions](extensions.md):

$$\text{Loss} = \underbrace{c_{(1)}^{S_3} - c_{(1)}^{S_1}}_{\text{DWL}_{\text{alloc}}} + \underbrace{\lambda \cdot (p_{S_3} - p_{S_1})}_{\text{MCPF distortion}}.$$

The implied weights w<sup>SME</sup><sub>★</sub> = **2.42 (non-pharma)** and **2.61 (pharma)** under the main specification sit above the 1.2--1.5 range typical of Brazilian cash-transfer programs. Under strict invariance the pharmaceutical weight falls to **0.7**, below the utilitarian benchmark — the diagnostic bifurcation that organizes the policy discussion.

---

## 6. Bridging the structural counterfactual to the DiD coefficient

Four mechanical sources of divergence account for the structural object via additive contributions against the DiD baseline:

| Source | Non-pharma | Pharma |
|---|:---:|:---:|
| (a) Sample restriction (Pregao only, c<sub>ε</sub> ≤ 3, n ≥ 2) | +0.025 | +0.060 |
| (b) UH cleaning (Krasnokutskaya scale shrinkage) | +0.040 | +0.075 |
| (c) Functional form (c<sub>(2)</sub> vs. linear log-mean) | +0.050 | +0.045 |
| (d) Conditioning set (counterfactual vs. realized entry) | +0.020 | +0.005 |
| **Sum + DiD baseline ≈** | **+0.255** | **+0.305** |
| Structural BNE simulation, p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub> | +0.259 | +0.308 |
| Residuals (non-linear interactions) | +0.004 | +0.003 |

The 3--4× gap between the structural and the DiD is informally attributable to the four sources above and is predictable in direction under the maintained structural assumptions. A misspecified model would not be guaranteed to deliver a gap of either consistent sign or consistent magnitude. The fact that the gap obtains in the same direction and at comparable magnitude in both classes is consistent with correct specification of asymmetric IPV with type-removal.

<figure>
  <img src="../assets/figures/fig_v3_gelbach_waterfall.png" alt="Gelbach-style decomposition">
  <figcaption>Figure 5. Gelbach-style waterfall decomposition of the structural object onto its four mechanical sources of divergence from the DiD coefficient.</figcaption>
</figure>

---

## 7. Appendix DiD (validation, not main object)

The reduced-form DiD against the 76 never-treated product groups serves as design validation rather than the main object. With item and month fixed effects, the 18-month coefficient on absolute log-price is **−0.10 to −0.11**, and on the price-to-reference ratio approximately **−0.06**. These magnitudes are reported in Appendix B of the manuscript.

<figure>
  <img src="../assets/figures/fig_eventstudy_prices.png" alt="DiD event study">
  <figcaption>Figure 6. Event study on log winning prices for Group 65 vs. the 76 never-treated product groups (Appendix DiD validation).</figcaption>
</figure>
