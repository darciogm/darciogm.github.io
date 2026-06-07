---
paper: sme-public
---

# Robustness and Threat Assessment

The diagnostics below do not *prove* the maintained auction model. They ask the
narrower question the paper needs: **is the exclusion-dominant decomposition
overturned by any one of the main threats to its interpretation?** It is not. No
single check is decisive, and several leave real residual concerns; what they
show together is that the headline price-formation conclusion is not
mechanically driven by any one threat. All numbers are from the v8 macro
registry (`v8-jpube/output/values.tex`); the full table is Table&nbsp;5 of the
manuscript.

!!! abstract "Intuition (plain-language)"
    Every check here asks the question a skeptic would: could the
    exclusion-dominant result be an artifact rather than the policy? If it were
    a pre-existing trend, fake treatment dates would light up — they don't. If
    it hinged on how the winner's hidden cost is treated, the three censoring
    methods would disagree — they don't (the exclusion share stays 74–82%). If a
    smaller eligible pool quietly raised collusion, the co-bidding screens would
    intensify after the cutoff — they don't. No single check proves the auction
    model; together they show the headline is not manufactured by any one threat.

## Threat assessment (Table 5)

| Threat | Diagnostic | Finding | Remaining limitation |
|---|---|---|---|
| Weak reduced form | Balance checks, placebo cutoffs, modern DiD estimators | Timing and sign supported; magnitude attenuates under CS/BJS | Not a stand-alone causal estimate of the legal reinterpretation |
| Winner censoring | Losers-only, all-bidders, Turnbull NPMLE | Exclusion share remains large under each treatment | Winner costs are not directly observed |
| Bidder-count process | Poisson baseline; empirical class-period-type counts (OA-D.2) | Exclusion shares 69.4% / 63.1% (NP/PH); ranking unchanged | No full entry model; counts are equilibrium objects |
| Protected-pool composition | Strict-invariance benchmark | Exclusion still dominates the price decomposition | Pharmaceutical welfare ranking remains composition-sensitive |
| Coordination and conduct | Conley close-pair screens; Bajari–Ye ratios | No post-policy intensification of clustering | Baseline clustering remains; broader conduct not ruled out |
| Reference-price evolution | DiD on $\log p^{\mathrm{ref}}$; stable-reference quartile placebo | Price effect survives where $p^{\mathrm{ref}}$ is stable | Heterogeneous $p^{\mathrm{ref}}$ movement not fully ruled out |
| Threshold manipulation | McCrary density test at the R\$80,000 threshold | No detectable bunching of items | Does not rule out all buyer-side adaptation |
| Static policy benchmark | $\lambda$ grid; strict invariance; preference grid | Non-pharmaceutical welfare ranking is stable | Not an implementation forecast; pharma ranking conditional |

---

## 1. Reduced-form timing and scale

The reduced form is used for timing, sign, and approximate scale only. The
18-month benchmark is **−0.113** (10–11% price movement) and is stable across
6-, 12-, and 18-month windows. Excluding the BEC platform-enablement months
before mass take-up moves the coefficient from −0.109 to −0.087 (SE 0.012), and
pre-reform placebo cutoffs are smaller in magnitude (−0.013, −0.030, −0.034)
than the real-cutoff estimates.

The conservative reading is necessary: 7 of 9 pre-period covariates exceed the
0.10 normalized-difference threshold, and modern DiD variants attenuate the
point estimate — BJS imputation **−0.056** and Callaway–Sant'Anna **−0.017**,
the divergence predicted by the heterogeneity-robust DiD literature
(de Chaisemartin–D'Haultfœuille, Goodman-Bacon, Sun–Abraham).

The structural and reduced-form magnitudes are of the same order once take-up is
netted out. The full-exclusion structural effect (**+0.227** of the reference
price) scaled by the **43%** realized SME-only adherence implies an average
realized price movement of **≈10%**, in line with the **10–11%** reduced-form
DiD. This is a consistency check, not an identity: the DiD is in log points and
averages over additional product-time variation, while the structural object is
a per-auction reference-price-normalized level.

---

## 2. Willingness-to-supply recovery and auction primitives

The concern is that the decomposition could be an artifact of how exits are
converted into model-based costs — winner censoring, common auction-level
shocks, format-specific recovery, bidder dependence, or the exit-at-cost reading
itself. These define five independent margins on the load-bearing IPV-clock
interpretation; the conclusion survives each (see the
[IPV-clock hypothesis page](hypotheses/ipv-clock-admissible.md)).

- **Winner censoring.** Net price effects are similar across losers-only /
  all-bidders / Turnbull NPMLE inputs: **0.275 / 0.259 / 0.246** (non-pharma) and
  **0.347 / 0.308 / 0.357** (pharma). The Turnbull exclusion share stays large
  (**74.0%** non-pharma, **82.0%** pharma), so the result is not driven by
  treating the winner's final bid as an exact cost.
- **Auction-level heterogeneity.** A Krasnokutskaya-style correction removes
  common scale shocks before simulation (Pregão ICCs 0.36–0.59). A
  Gaussian-copula relaxation allowing within-auction cost correlation up to
  $\rho_c = 0.3$ moves the exclusion share by **<5 pp** and the total effect by
  **<10%** across the grid.
- **Cross-modality.** A Convite first-price GPV recovery lines up with the
  Pregão drop-out recovery in the load-bearing pharmaceutical non-SME pre-period
  cell, providing a cross-format discipline (not a proof of IPV).
- **Filters and windows.** Tightening/loosening the $c_\epsilon \le 3$ filter and
  using 6-, 12-, or 18-month windows leaves exclusion the larger component in
  both classes.
- **Exit-at-cost itself.** The sharpest version of the recovery concern is the
  exit-at-cost interpretation: drop-outs may sit *above* cost if firms quit the
  clock while still profitable. Following Haile–Tamer (2003), exits are treated
  as **bounds** on cost. A markup *common* to all bidders cancels in the
  decomposition differences (they compare order statistics across pools), so the
  binding threat is a **type-differential** markup $c = \text{exit}\times(1-m_k)$.
  In the worst case (SME costs pushed below their exits, non-SMEs held at face
  value, entry held fixed), the exclusion-dominant ordering — net effect positive
  *and* absolute exclusion share above one half — survives a differential markup
  up to **0.29** of the exit price in non-pharma and **across the entire [0, 0.30]
  grid** in pharma. A reversal would require SMEs to leave ~30% more of their
  surplus unbid than non-SMEs at *every* auction — implausible, and in the
  direction that already biases against the finding. The Pregão clock is
  near-continuous, so the mechanical Haile–Tamer increment bound is tight; this
  margin bounds the residual *behavioral* slack.

---

## 3. Protected-pool composition

The main modeling threat is that the protected-pool offset $S_3-S_2$ combines
participation with composition — it is an active-bidder object, not a primitive
from a selection model. The **strict-invariance** benchmark sets
$F_c^{\mathrm{SME,Post}} = F_c^{\mathrm{SME,Pre}}$ while keeping observed
post-policy entry counts. The total price effect remains positive (**+0.29**
non-pharma, **+0.47** pharma), and exclusion shares *rise* to **85% / 79%**.
Composition is not what makes exclusion dominate the price decomposition; it
matters most for the pharmaceutical welfare ranking, treated as a boundary case.

---

## 4. Coordination

If repeated bidder pairs coordinate exits, drop-out prices could reflect conduct
rather than willingness to supply. The screens detect baseline clustering; the
identifying question is narrower — does clustering *intensify* after non-SMEs are
removed? It does not.

- **Conley close-pair screen.** Non-pharma realized shares are stable: **16.9% →
  16.8%** (null means 10.6 / 10.2). Pharma falls from **27.6% → 24.4%**.
- **Bajari–Ye T1 ratio.** Non-pharma falls from **2.63 → 1.83**; pharma from
  **1.29 → 1.11**.

These weaken the differential-coordination story, not the broader possibility of
noncompetitive conduct: residual baseline clustering (1.6–1.9× the null mean)
remains a limitation.

---

## 5. Static policy benchmark

The non-pharmaceutical welfare ranking $V_3 \succ V_0$ holds across
$\lambda \in [0.15, 0.45]$ under **both** the main and strict-invariance
specifications. In pharmaceuticals the ranking remains conditional on whether the
post-policy SME pool is modeled directly or held invariant. The result is not an
artifact of exact Vickrey equivalence: a Maskin–Riley first-price upper-bound
adjustment is at most **5%** of the reference price, while the simulated
$V_0$–$V_3$ price gap is **22–26%**.

---

## 6. Reference-price evolution

Because the structural objects are normalized by buyer reference prices,
endogenous reference-price movement could contaminate interpretation. A direct
TWFE DiD on $\log p^{\mathrm{ref}}$ moves by only **−0.027** (SE 0.011)
non-pharma and **−0.033** (SE 0.012) pharma — small relative to the corresponding
DiD on $\log p^{\mathrm{final}}$ (−0.074 / −0.144). The residual price effect
after subtracting the $p^{\mathrm{ref}}$ component is about **4.7%** (non-pharma)
and **11.2%** (pharma).

The internal placebo tightens this. Items in the lowest quartile of
$|\Delta \log p^{\mathrm{ref}}|$ — where the reference price was effectively
stable — still show a price effect of **−0.044** (non-pharma) and **−0.092**
(pharma), about two-thirds of the class-specific DiD. The headline movement is
not concentrated among items whose reference prices moved.

---

## 7. Threshold manipulation

The canonical buyer-side gaming threat is splitting purchases around the
R\$80,000 item-eligibility threshold. A McCrary density test shows no detectable
bunching: post $T = 1.06$ ($p = 0.29$), pre $T = -1.43$ ($p = 0.15$). Over 90% of
Group&nbsp;65 items have reference values below R\$30,000, so systematic
manipulation around the threshold would be visible if present. This rules against
the canonical threshold-gaming channel, consistent with the mild
reference-price movement above.

---

!!! quote "What the diagnostics establish"
    Taken together, the checks do not prove the maintained auction model. They
    show that the exclusion-dominant decomposition is not overturned by the main
    mechanical threats: reduced-form timing, winner censoring, common scale
    shocks, protected-pool composition, bidder dependence, reference-price
    evolution, or threshold manipulation. When the excluded bidders are the ones
    disciplining the price-forming order statistic, set-asides are costly because
    they replace competition with eligibility.
