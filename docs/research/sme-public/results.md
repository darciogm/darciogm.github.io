---
paper: sme-public
---

# Main Results

The results organize around three findings. **First**, the simulated set-aside price effect is mostly within-auction: the within-auction share is 74.5% in non-pharma and 73.3% in pharma, and stays in the 73--85% range across cost-distribution estimators. **Second**, endogenous SME entry is a partial offset, not the source of the markup: without it the realized price and welfare cost would be 50--60% larger. **Third**, the policy comparison between bidder exclusion and a 10% price preference is conditional on goods characteristics — robust in thick standardized non-pharma markets, model-sensitive in thin heterogeneous pharma markets.

---

## 1. Entry response

| Pregao | **SMEs Pre** | **SMEs Post** | **Non-SMEs Pre** | **Non-SMEs Post** |
|---|:---:|:---:|:---:|:---:|
| Non-pharma | 0.94 | **1.87** | 2.68 | **1.50** |
| Pharma | 0.55 | **1.22** | 2.61 | **1.66** |

SMEs roughly double in both classes; non-SMEs fall sharply. The set-aside changes both the admissible pool and the equilibrium participation response.

---

## 2. Structural decomposition of the set-aside

Define p<sub>S<sub>1</sub></sub> as the simulated winning price under the pre-policy open regime, p<sub>S<sub>2</sub></sub> as the SME-only counterfactual at the pre-policy SME pool, and p<sub>S<sub>3</sub></sub> as the SME-only counterfactual at the observed post-policy SME pool. All numbers are normalized by the item reference price p<sup>ref</sup>.

| | **p<sub>S<sub>1</sub></sub>** (open) | **p<sub>S<sub>2</sub></sub>** (SME-only, fixed pool) | **p<sub>S<sub>3</sub></sub>** (SME-only, post pool) | **Within-auction** (S<sub>2</sub>−S<sub>1</sub>) | **Entry offset** (S<sub>3</sub>−S<sub>2</sub>) | **Total** (S<sub>3</sub>−S<sub>1</sub>) |
|---|:---:|:---:|:---:|:---:|:---:|:---:|
| Non-pharma | 0.759 | 1.152 | 1.018 | **+0.393** | −0.135 | **+0.259** |
| Pharma | 0.656 | 1.141 | 0.964 | **+0.485** | −0.177 | **+0.308** |

The within-auction share — defined as |S<sub>2</sub>−S<sub>1</sub>| / (|S<sub>2</sub>−S<sub>1</sub>| + |S<sub>3</sub>−S<sub>2</sub>|) — is **74.5% in non-pharma** and **73.3% in pharma** under the main specification. The set-aside mainly works by changing the order statistic inside the restricted auction; entry matters, but as a partial offset.

<figure>
  <img src="../assets/figures/fig_v3_decomposition.png" alt="BNE counterfactual decomposition by class">
  <figcaption>Figure 1. Bayes-Nash counterfactual price decomposition by class, under observed equilibrium entry. Bars report the simulated second-order statistic c̄<sub>(2)</sub> normalized by the item reference price under three counterfactual scenarios. The within-auction component dominates the simulated total effect in both classes; the pharmaceutical decomposition is more model-sensitive.</figcaption>
</figure>

---

## 3. Endogenous entry as a partial offset

V2 imposes the full set-aside while holding the SME pool at its pre-policy size. Relative to the realized full-set-aside counterfactual V0:

| | **V2 / V0** |
|---|:---:|
| Non-pharma | 152.0% |
| Pharma | 157.4% |

The fixed-pool simulated effect exceeds the realized one by roughly 50--60%. Both terms in the welfare formula load on this simulated price margin, so a fixed-pool welfare arithmetic would materially overstate the burden of the policy under the model's main specification.

The 50--60% attenuation is conditional on the policy instrument: under V3 (10% price preference) the analogous fixed-pool-vs-realized comparison delivers an attenuation close to zero, since non-SMEs remain in the auction and the participation margin barely moves. The entry response is therefore a property of the full-set-aside instrument, not a free-standing feature of the SME population.

<figure>
  <img src="../assets/figures/fig_v3_entry_insurance.png" alt="Simulated participation-margin offset">
  <figcaption>Figure 2. Simulated price effect under the realized (V0) vs. fixed-pool (V2) counterfactuals. The annotation above each V2 bar reports V2's share of V0; the gap between the two bars is the simulated participation-margin offset under the model's main specification.</figcaption>
</figure>

---

## 4. Sources of the departure from earlier estimates

A 2 × 2 grid in which each axis is a methodological choice — cost distributions raw vs. UH-clean, and entry fixed vs. endogenous — shows the relative gap between the clean-and-endogenous main spec and the raw-and-fixed-pool reduced-form-style proxy is **about 72% in non-pharma and about 44% in pharma**. UH correction accounts for more than half of the gap by changing the right tail of the recovered cost distribution; endogenous entry accounts for the rest by recognizing the policy-induced thickening of the SME pool.

A second decomposition bridges the DiD coefficient itself to the structural counterfactual through four mechanical sources of divergence:

| Source of divergence | Non-pharma | Pharma |
|---|:---:|:---:|
| (a) Sample restriction (Pregao only, c<sub>ε</sub> ≤ 3, n ≥ 2) | +0.025 | +0.060 |
| (b) UH cleaning (Krasnokutskaya scale shrinkage) | +0.040 | +0.075 |
| (c) Functional form (c<sub>(2)</sub> vs. linear log-mean) | +0.050 | +0.045 |
| (d) Conditioning set (counterfactual vs. realized entry) | +0.020 | +0.005 |
| **Sum of contributions** | **+0.135** | **+0.185** |
| Structural BNE simulation, p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub> | +0.259 | +0.308 |

The four contributions cumulate against the DiD baseline of approximately +0.06 (DiD on p<sup>final</sup>/p<sup>ref</sup>) to deliver the structural object up to non-linear interaction residuals of +0.004 and +0.003 in non-pharma and pharma respectively. The 3--4× gap between the structural and the DiD is informally attributable to the four sources documented above and is predictable in direction under the maintained structural assumptions.

---

## 5. Confidence intervals

Cluster bootstrap at the auction level with B = 500 replicates gives the following 95% CIs on p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub> under the all-bidders regime:

| Class | Bootstrap mean | 95% CI |
|---|:---:|:---:|
| Non-pharma | +0.236 | [0.186, 0.289] |
| Pharma | +0.305 | [0.247, 0.364] |

The bootstrap within-auction-share CI is **[64.9%, 88.1%] in non-pharma** and **[62.5%, 82.9%] in pharma**. Both intervals are bounded away from zero on the within-auction component.

---

## 6. Entry cost calibration

Zero-profit implied entry cost per bidder, by class:

| | **κ<sup>SME</sup>** | **κ<sup>¬</sup>** | **κ<sup>¬</sup> / κ<sup>SME</sup>** |
|---|:---:|:---:|:---:|
| Non-pharma | R\$0.55 | R\$2.46 | 4.5× |
| Pharma | R\$0.11 | R\$0.51 | 4.6× |

The roughly 4.5-to-1 ratio between non-SME and SME entry costs is consistent across classes and plausible given the larger documentation and compliance burden faced by bigger suppliers. These magnitudes are a calibration check on the assumed Poisson primitives rather than a structural estimate.

---

## 7. Policy comparison and goods characteristics

Under a 10% SME price preference (V3), SME bids are scored with a 10% discount for winner selection but the government pays the actual bid:

| | **V0 total effect** (full set-aside) | **V3 total effect** (10% preference) |
|---|:---:|:---:|
| Non-pharma | +0.259 | −0.004 |
| Pharma | +0.308 | +0.002 |

The preference rule shifts price by essentially zero in both classes because non-SMEs remain in the auction and continue to discipline the second-order statistic even when an SME wins.

What differs across classes is the **stability of the ranking against the full set-aside**:

- **Non-pharma:** the preference rule dominates V0 under both the main equilibrium-selection specification and the strict-invariance benchmark. Bidder exclusion is robustly dominated by a moderate preference rule in thick standardized markets.
- **Pharma:** the preference rule dominates V0 under the main specification, but the ranking **reverses under strict invariance** — V0's total price effect rises to +0.47, and the implied welfare weight needed to justify it falls to **0.7**. The bifurcation is diagnostic of market structure: in thicker, more standardized markets, bidder exclusion is robustly dominated by a moderate preference rule; in thinner, more heterogeneous markets, the ranking is more sensitive because the identity of the induced entrants matters for equilibrium price formation.

<figure>
  <img src="../assets/figures/fig_v3_optimal_preference.png" alt="Optimal preference instrument">
  <figcaption>Figure 3. Optimal preference instrument by class. The 10% preference is approximately welfare-optimal in non-pharma and lies near the knife-edge in pharma under the main specification.</figcaption>
</figure>
