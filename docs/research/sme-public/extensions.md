---
paper: sme-public
---

# Welfare and Extensions

The welfare consequences of the set-aside are class-heterogeneous from the start. Under the main equilibrium-selection specification, the welfare cost is **28.7% of p<sub>S<sub>1</sub></sub> in non-pharma** and **47.0% in pharma** at λ = 0.30. The price effect is therefore only the beginning of the welfare account.

---

## 1. Welfare arithmetic

Per-auction welfare loss of the SME-only set-aside relative to the open regime:

$$\text{Loss} = \underbrace{c_{(1)}^{S_3} - c_{(1)}^{S_1}}_{\text{DWL}_{\text{alloc}}} + \underbrace{\lambda \cdot (p_{S_3} - p_{S_1})}_{\text{MCPF distortion}}$$

The first term is the **allocative wedge**: by how much the winner's production cost is higher in the restricted regime than in the open regime. The second term is the **tax-distortion loss** on the government's extra outlay Δ<sub>gov</sub>, scaled by the marginal cost of public funds λ. The transfer from government to SMEs (Δ<sub>gov</sub> minus the allocative wedge) is zero-sum in a social-planner ledger and is not destruction.

### Point estimates at λ = 0.30 (Ballard, Shoven, and Whalley 1985 benchmark)

| | **Δ<sub>gov</sub>** | **DWL<sub>alloc</sub>** | **Implicit transfer** | **MCPF distortion** | **Total Loss / p<sub>S<sub>1</sub></sub>** |
|---|:---:|:---:|:---:|:---:|:---:|
| Non-pharma | 0.242 | 0.150 | 0.092 | 0.073 | **28.7%** |
| Pharma | 0.328 | 0.210 | 0.118 | 0.098 | **47.0%** |

The allocative component dominates in both classes, but especially in pharma, where a thin SME pool and higher goods heterogeneity make bidder exclusion more likely to route the contract to a high-cost protected winner.

<figure>
  <img src="../assets/figures/fig_v3_welfare_forest.png" alt="Welfare loss intervals">
  <figcaption>Figure 1. Welfare loss as % of p<sub>S<sub>1</sub></sub>, by class and MCPF λ. Circles and horizontal whiskers report cluster-bootstrap mean and 95% CI under the main specification; triangles report the strict-invariance benchmark. The dotted vertical line marks the 11.8% benchmark implied by the DiD coefficient of −0.11 in absolute log-prices.</figcaption>
</figure>

---

## 2. Endogenous entry as a partial offset in welfare units

The fixed-pool counterfactual exceeds the realized post-policy counterfactual by 52% in non-pharma and 57% in pharma. Both terms in the welfare formula load on the simulated price margin, so a fixed-pool welfare calculation would be roughly 50--60% larger than the realized one in normalized units. Endogenous entry does not change the ranking against the preference rule in non-pharma; it does materially reduce the welfare burden of bidder exclusion under the model's main specification.

---

## 3. Confidence intervals

Cluster bootstrap with B = 500 replicates delivers 95% CIs on Loss / p<sub>S<sub>1</sub></sub> at λ = 0.30:

| Class | **Bootstrap mean** | **95% CI** |
|---|:---:|:---:|
| Non-pharma | 28.1% | [21.3%, 35.3%] |
| Pharma | 45.6% | [35.1%, 56.2%] |

The intervals leave no doubt about the ordering. Even the lower bound in pharma is above the non-pharma point estimate. The class heterogeneity is not sampling noise around a common welfare effect; it is a structural feature of the protected pool and the good being procured.

---

## 4. Sensitivity to λ (MCPF)

For λ ∈ {0.20, 0.30, 0.40} (point estimates):

| Class | λ = 0.20 | λ = 0.30 | λ = 0.40 |
|---|:---:|:---:|:---:|
| Non-pharma | 25.6% | **28.7%** | 31.8% |
| Pharma | 42.0% | **47.0%** | 52.0% |

Each 0.10 increment in λ adds about 3 percentage points in non-pharma and about 5 points in pharma. The level moves, but the **class ranking does not**. The non-pharma V3 > V0 ranking holds across λ ∈ [0.15, 0.45] under both specifications; the pharma V3 > V0 ranking holds across the same range under the main specification but reverses to V0 > V3 under strict invariance.

---

## 5. Welfare-weight implicit in the current regime

Following the generalized social-marginal-welfare-weight framework of Saez and Stantcheva (2016), a planner aggregating producer and consumer surplus with weight w<sup>SME</sup> on SME producer surplus is indifferent between the full set-aside (V0) and the 10% price preference (V3) when

$$w^{\text{SME}}_\star = \frac{\text{Loss}(V_0) - \text{Loss}(V_3)}{\text{SMESurplus}(V_0) - \text{SMESurplus}(V_3)}.$$

| | **Loss differential** | **SME-surplus differential** | **w<sup>SME</sup><sub>★</sub>** |
|---|:---:|:---:|:---:|
| Non-pharma | 0.223 | 0.092 | **2.42** |
| Pharma | 0.308 | 0.118 | **2.61** |

A planner willing to pay the non-pharma fiscal cost of bidder exclusion would have to value one real of SME surplus at **more than twice a real of general welfare**, even in a thick market where a preference rule achieves nearly the same allocative objective. Under strict invariance, the non-pharma preference ranking is unchanged; the pharmaceutical indifference weight falls to **0.7**, below the utilitarian benchmark.

<figure>
  <img src="../assets/figures/fig_v3_welfare_weight.png" alt="Implicit welfare weight">
  <figcaption>Figure 2. Implicit welfare weight w<sup>SME</sup><sub>★</sub> required to prefer the full set-aside over a 10% price preference, by class and specification. The grey band marks the 1.2--1.5 range typical of Brazilian cash-transfer programs; the dashed vertical line marks the utilitarian benchmark w = 1.</figcaption>
</figure>

---

## 6. Scaling to the furosemida vignette

A pair of furosemida 40 mg purchases by the same Sao Paulo public buyer in February 2018 (open regime, ten firms bidding, clearing price ~12% below reference) and October 2018 (post-cutoff, three SMEs, clearing price just above reference) anchors the magnitudes.

Applying the pharmaceutical-class point estimates to that single purchase:

| | **Value (units of p<sup>ref</sup>)** |
|---|:---:|
| Government's extra outlay Δ<sub>gov</sub> | +0.328 |
| of which: allocative DWL | 0.210 |
| of which: implicit transfer to SME winner | 0.118 |
| Tax-distortion welfare cost (λ = 0.30) | 0.098 |
| **Total welfare loss / p<sub>S<sub>1</sub></sub>** | **47.0%** |

The per-auction number scales; the group-level fiscal consequence is substantial, and the welfare consequence is larger still.

---

## 7. Why the structural welfare loss exceeds the DiD benchmark

Two mechanical features drive the departure from the DiD benchmark of 11.8%:

- **Different functionals on different conditioning sets.** The DiD recovers the average log-price difference between regimes conditional on item and month fixed effects, on completed transactions only. The structural object is the simulated mean of c<sub>(2)</sub> under each counterfactual entry profile, on UH-clean cost residuals, expressed as a ratio of the reference price. The two functionals differ both in transformation (log-price difference vs. level of c<sub>(2)</sub>/p<sup>ref</sup>) and in conditioning set.
- **Tax distortion was not priced in the DiD benchmark.** The MCPF term λ · Δ<sub>gov</sub> adds about nine percentage points of p<sub>S<sub>1</sub></sub> in non-pharma and fifteen in pharma at λ = 0.30.

The 3--4× gap between the structural and the DiD is informally attributable to these differences and is **predictable in direction** under the maintained assumptions: the second-order statistic of an SME-only draw, expressed as a level relative to the open-regime baseline, is necessarily larger than the average log-price change averaged over the realized distribution conditional on item fixed effects. A misspecified model would not be guaranteed to deliver a gap of either consistent sign or consistent magnitude.

---

## 8. Extensions the paper does not attempt

Three extensions represent natural follow-on work:

- **Quantity response.** The buyer's adjustment to higher prices is treated as inelastic at observed values. At a typical demand elasticity for essential medical supplies ε ∈ [0.1, 0.3], the quantity adjustment to the simulated 11% log-price increase would shave the fiscal cost by roughly 1--3 percentage points of p<sub>S<sub>1</sub></sub>.
- **Dynamic capacity accumulation.** SME firms protected by the rule may build production capacity that persists beyond the policy window — an externally validated mechanism in Ferraz et al. (2016) and Szerman (2023).
- **General-equilibrium SME surplus.** The partial-equilibrium SMESurplus measure used in the welfare-weight identity could be extended to a GE framework with option value, capacity persistence, and private-sector spillovers.

Each is a margin a fully dynamic-general-equilibrium model would price; each would tend to enlarge the SME-side benefit and could shift the welfare-weight comparison. None changes the organizing lesson: the welfare ranking of bidder-exclusion rules is conditional on market structure.
