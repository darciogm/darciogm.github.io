---
paper: sme-public
---

# Robustness

Six dimensions of robustness feed into the headline: the strict-invariance limiting case; the cost-distribution estimator; the kernel bandwidth used in the Convite GPV cross-check; the bid-level sample filter; the temporal window; and the set of alternative policy variants. The central findings survive them: the within-auction component remains the larger of the two components in both classes, with the share remaining in the **73--85% range** across cost-distribution estimators and across the two specifications of the post-policy SME pool, and the welfare comparison against the 10% price preference remains conditional on goods characteristics rather than universal.

---

## 1. Strict-primitive-invariance benchmark

The limiting case in which F<sub>c</sub><sup>SME,Post</sup> is replaced by F<sub>c</sub><sup>SME,Pre</sup> while preserving the observed post-policy SME entry count.

| | **Total effect** | **Within-auction share** | **Welfare cost (% of p<sub>S<sub>1</sub></sub>, λ = 0.30)** |
|---|:---:|:---:|:---:|
| Non-pharma | +0.29 | 85% | 30.0% |
| Pharma | +0.47 | 79% | 39.2% |

In **non-pharma** the 10% price preference remains Pareto-superior under strict invariance, just as under the main specification. In **pharma** the preference ranking reverses and the implied indifference weight falls to **w<sup>SME</sup><sub>★</sub> = 0.7**, versus 2.61 under the main equilibrium-selection specification.

The bifurcation is diagnostic. Strict invariance imposes that the SMEs entering under the protected regime draw from the same cost distribution as the SMEs that entered under the open regime — the most generous assumption to the policy. The realistic alternative is that protected entrants draw from the higher-cost tail (firms unprofitable under the open regime that become profitable under exclusion), which is what equilibrium selection in the main specification captures. Strict invariance therefore *understates* the welfare cost in pharma; the main-specification cost of 47.0% of p<sub>S<sub>1</sub></sub> is the welfare-conservative number relative to the equilibrium-selection mechanism, not an aggressive upper bound.

---

## 2. Cost-distribution regime

The baseline all-bidders estimator biases the upper tail of F<sub>c</sub><sup>k</sup> slightly downward; losers-only biases it materially upward; a Turnbull NPMLE that treats the winner as left-censored delivers point identification. Three point estimates for p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub>:

| Class | **Losers-only** | **All-bidders (baseline)** | **Turnbull NPMLE** |
|---|:---:|:---:|:---:|
| Non-pharma | 0.275 | **0.259** | 0.246 |
| Pharma | 0.347 | **0.308** | 0.357 |

All cells lie within **16% of the all-bidders point estimate**. Bootstrap CIs overlap materially across regimes. Turnbull raises the within-auction share in pharma from 73% (all-bidders) to **82%** — if anything strengthening the main interpretation.

!!! note "Sensitivity to cost affiliation (Online Appendix)"
    A Gaussian-copula relaxation of the IPV restriction couples the type-specific cost marginals at within-auction correlation ρ<sub>c</sub> ∈ {0, 0.1, 0.2, 0.3}. The within-auction share moves by less than 5 percentage points in either class. The 73--85% range remains valid for ρ<sub>c</sub> ≤ 0.3.

!!! note "Maskin-Riley FPSB calibration of V3 (Online Appendix)"
    Under FPSB equilibrium adjustment, SME bid-function shifts of −0.05 and non-SME shifts of +0.02 deliver a net effect on the second-order statistic of 0.22--0.27% of p<sup>ref</sup>, well within Monte Carlo noise. The V3 vs. V0 policy ranking is preserved in both classes.

---

## 3. Kernel bandwidth (Convite GPV cross-check)

The cross-modality check uses GPV inversion on Convite bids, which requires a kernel density estimate. Silverman's rule-of-thumb h = 1.06 σ̂ n<sup>−1/5</sup> is the baseline; the bandwidth is varied across factors {0.5, 0.75, 1.0, 1.5, 2.0}.

The resulting range of c<sub>0.5</sub> across the eight (period × pharma × type) Convite strata is **1.2--3.6% of the baseline in seven strata**; the thinnest cell (Convite pharma SME Pre, 1,707 auctions) reaches 5.2% and is the only cell where bandwidth dispersion exceeds the BNE Monte Carlo noise of 1--2%. Bandwidth is not a first-order concern for identification.

---

## 4. Bid-level sample filter

The baseline filter is c<sub>ε</sub> ≤ 3 and n ≥ 2.

| Filter | Non-pharma p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub> | Pharma p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub> | Note |
|---|:---:|:---:|---|
| Tight (c<sub>ε</sub> ≤ 2, n ≥ 3) | 0.215 (−15%) | 0.303 (−8%) | |
| Very tight (c<sub>ε</sub> ≤ 1.5, n ≥ 3) | (−31%) | (−25%) | Within-auction share in pharma jumps to 95% |
| **Baseline (c<sub>ε</sub> ≤ 3, n ≥ 2)** | **0.254** | **0.330** | Catches plausible error patterns; preserves 99.6% of data |
| Loose (c<sub>ε</sub> ≤ 5) | 0.257 (+1%) | 0.350 (+6%) | Pharma move concentrated in c<sub>ε</sub> ∈ (3, 5] outliers (likely data-entry errors at 100×-reference level) |

The baseline sits between tight and loose in both classes and is inside the bootstrap CI under any reasonable cut.

---

## 5. Temporal window

Symmetric window around the March 2018 cutoff:

| Class | **18m baseline** | **12m** | **6m** |
|---|:---:|:---:|:---:|
| Total p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub>, non-pharma | +0.272 | +0.267 | +0.269 |
| Total p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub>, pharma | +0.292 | +0.310 | +0.338 |
| Within-auction share, non-pharma | 79.7% | 75.4% | 76.4% |
| Within-auction share, pharma | 67.0% | 73.0% | 73.6% |

The non-pharmaceutical effect is essentially flat across windows; the pharmaceutical effect is monotonically increasing as the window shrinks, consistent with a transitional period in which the within-auction adjustment establishes more quickly than the participation-margin adjustment.

The within-auction share varies by 4.3 percentage points in non-pharma and 6.6 percentage points in pharma across the three windows, and the within-auction component remains the larger of the two components in **all six (class × window) cells**. 18m is the mature, steady-state choice.

---

## 6. Alternative policy variants

| Variant | Description | Δp / V0 |
|---|---|:---:|
| V0 | Full set-aside at observed post-policy SME pool (main) | 100% |
| V1 | Partial set-aside (50% SME-only at Post pool, 50% open at Pre pool) | 33--36% |
| V2 | Full set-aside, SME pool fixed at pre-period size (no participation response) | **152--157%** |
| V3 | 10% SME price preference (Vickrey-equivalent) | ≈ 0% |

V2 isolates what the entry response is worth — without it the simulated policy effect would be materially larger. V1 prices a middle-ground design with roughly proportional fiscal savings at the cost of a more complex administrative rule. V3 shows that a well-targeted preference instrument captures the SME-protection value at essentially zero price cost in thick markets and gives a diagnostic benchmark in thin markets.
