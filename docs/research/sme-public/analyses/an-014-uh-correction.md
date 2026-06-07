---
paper: sme-public
id: an-014
hypothesis: ipv-clock-admissible
type: robustness
question: Does the Krasnokutskaya-style auction-level heterogeneity correction (a) remove common scale shocks without mechanically generating the exclusion-dominant decomposition, and (b) does relaxing within-auction independence to a Gaussian copula leave the decomposition intact?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Krasnokutskaya-style decomposition reports Pregão ICCs from 0.36 (non-pharma SMEs) to 0.59 (pharma non-SMEs). Cleaned $\\exp(\\hat e_{it})$ feeds the BNE simulation. Gaussian-copula relaxation with within-auction cost correlation up to ρ_c=0.3: exclusion share drifts <5 pp and net effect drifts <10% — exclusion-dominant decomposition survives moderate dependence."
created: 2026-05-21
script: v7-jpube-tight/scripts/40_uh_variance.R
target: v7-jpube-tight/output/uh_decomposition.parquet
tags: ["H:ipv-clock-admissible", krasnokutskaya, unobserved-heterogeneity, icc, scale-correction, gaussian-copula]
design:
  sample: "Pregão drop-outs from AN-013, by class and bidder type"
  specification: "y_it = log(b_it / p_t^ref) = a_t + e_it; method-of-moments decomposition of between-auction vs within-auction variance; best-linear-predictor shrinkage removes â_t. Gaussian-copula relaxation: within-auction cost correlation ρ_c ∈ {0, 0.1, 0.2, 0.3}"
  source_panel: "BEC event log"
  notes: "Removes common auction-level scale but does NOT purge bidder-type selection or post-policy SME pool composition changes"
---

# AN-014: Auction-level heterogeneity correction + dependence relaxation

!!! abstract "Intuition (plain-language)"
    Some auctions are simply expensive across the board (a common cost shock). The Krasnokutskaya-style correction strips out that shared component so the decomposition reflects firm-level cost differences, not common shocks — and it checks the result survives letting bidders' costs be correlated within an auction. The exclusion-dominant story holds.

## Question

Two diagnostic concerns about the structural recovery:

1. **Common auction-level scale shocks**: Bids in a single auction can
   move together because of volume, delivery burden, regulatory
   documentation, or item-specific complexity. Normalization by the
   buyer reference price absorbs cross-item scale differences but not
   these auction-level co-movements. Does a
   Krasnokutskaya (2011)-style heterogeneity correction *mechanically*
   produce the exclusion-dominant decomposition by removing too much
   variance, or does the decomposition survive?
2. **Within-auction cost independence**: The IPV-clock interpretation
   assumes types draw independent costs within each auction. If
   moderate within-auction cost correlation exists (sourcing shocks,
   common input prices), does it overturn the decomposition?

## Design

- **Sample**: Pregão drop-outs from
  [AN-013](an-013-pregao-dropouts.md), by class and bidder type.
- **Variation**: within-auction vs between-auction variance in
  $y_{it} = \log(b_{it} / p_t^{\mathrm{ref}})$.
- **Specification (UH correction)**: method-of-moments variance
  decomposition; estimate $\hat{a}_t$ as auction-level scale
  component; remove via best-linear-predictor shrinkage; use cleaned
  $\exp(\hat{e}_{it})$ for downstream BNE simulation.
- **Specification (dependence relaxation)**: re-run BNE simulation
  under a Gaussian-copula joint distribution with within-auction cost
  correlation $\rho_c \in \{0, 0.1, 0.2, 0.3\}$.
- **Outcomes**: per-cell intraclass correlation (ICC); cleaned bid
  distribution; exclusion share + net effect across $\rho_c$ grid.

## Results

**Intraclass correlations** (paper §3): Pregão ICCs in the main cells
range from **0.36 (non-pharma SMEs)** to **0.59 (pharma non-SMEs)** —
comparable to procurement settings where the Krasnokutskaya correction
is standard (e.g., Krasnokutskaya 2011's Florida road auctions).

**Gaussian-copula dependence relaxation** (paper §6.2):

- Within-auction cost correlation tested up to $\rho_c = 0.3$.
- Across the $\rho_c$ grid:
  - Exclusion share moves by **less than 5 percentage points**.
  - Total effect moves by **less than 10 percent**.

Filter sensitivity at $c_\epsilon \leq 3$ and 6/12/18-month windows
also leave the exclusion component as the larger component in both
classes.

Output: `v7-jpube-tight/output/uh_decomposition.parquet`; documented in
`paper_v8.tex` §6.2 (Willingness-to-supply recovery and auction
primitives).

## Interpretation

**Common scale shocks do not produce the exclusion result.** After the
UH correction removes auction-level scale, the cleaned per-cell cost
distributions still generate the exclusion-dominant decomposition. The
correction *narrows* the simulation's noise but does not change the
qualitative ordering.

**Moderate within-auction cost correlation does not overturn the
decomposition.** Allowing within-auction $\rho_c$ up to 0.3 — a
substantial deviation from the IPV-clock independence assumption —
moves the exclusion share by less than 5 pp and the total effect by
less than 10%. This is not a test that IPV-clock holds; it is a test
that *moderate* deviations from IPV-clock are not the reason the
decomposition reads as it does. It bounds one specific deviation —
within-auction cost *dependence*. A complementary margin bounds a
*different* deviation: a type-differential exit *markup* (firms quitting
the clock above cost). Treating exits as Haile–Tamer bounds, the
exclusion-dominant ordering survives a differential markup up to 0.29 of
the exit price (non-pharma) and the entire [0, 0.30] grid (pharma) — see
[AN-013](an-013-pregao-dropouts.md) and the
[IPV-clock hypothesis page](../hypotheses/ipv-clock-admissible.md).

**What the correction does *not* purge.** Two channels remain in the
cleaned distribution: (i) bidder-type selection (SMEs vs non-SMEs
genuinely have different cost distributions, which is the substantive
finding the paper builds on); (ii) post-policy SME pool composition
changes (selection into the protected market, sourcing or product-mix
changes). The strict-invariance check
([AN-017](an-017-strict-invariance.md)) is the test for whether the
second channel matters for the *dominance ordering*.

Confidence: **yellow.** The UH correction is methodologically standard;
the ICC magnitudes are comparable to other procurement settings; the
dependence-relaxation grid is informative. The reading remains yellow
rather than green because the correction is a *necessary discipline*
on the structural recovery, not a *proof* that the recovered objects
are literal costs.

## Follow-ups

- ICC stability across the policy break: re-estimate ICCs separately
  in pre and post periods. A discontinuous shift would indicate the
  auction-level scale structure changed under the policy.
- Iterative refinement
  (`v7-jpube-tight/scripts/43_uh_invariance_update.R`): the decomposition
  should be stable across iterative updates of the correction.
- Cross-modality consistency: per `paper_v8.tex` §6.2, the Convite
  first-price GPV recovery and Pregão drop-out recovery line up in the
  key pharma non-SME pre-period cell after UH correction — a
  cross-modality discipline that deserves its own AN page.
