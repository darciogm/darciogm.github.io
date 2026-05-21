---
paper: sme-public
id: an-014
hypothesis: ipv-clock-admissible
type: robustness
question: What auction-level heterogeneity correction is applied to drop-out prices (Krasnokutskaya 2011 in spirit), and what are the resulting intraclass correlations?
status: pending
created: 2026-05-21
script: v7-jpube-tight/scripts/40_uh_variance.R
target: v7-jpube-tight/output/uh_decomposition.parquet
tags: ["H:ipv-clock-admissible", krasnokutskaya, unobserved-heterogeneity, icc, scale-correction]
design:
  sample: "Pregão drop-outs from AN-013, by class and bidder type"
  specification: "y_it = log(b_it / p_t^ref) = a_t + e_it; method-of-moments decomposition of between-auction vs within-auction variance; best-linear-predictor shrinkage removes a_t"
  source_panel: "BEC event log"
  notes: "ICCs reported per cell; cleaned exp(e_it) enters the BNE simulation"
---

# AN-014: Auction-level heterogeneity correction

## Question

Bids in a single auction can move together because of common
auction-level scale factors (volume, delivery burden, regulatory
documentation, item-specific complexity). Normalization by the buyer
reference price absorbs cross-item scale differences but does not
remove all auction-level heterogeneity. A Krasnokutskaya (2011)-style
correction decomposes log normalized bids into an auction-level scale
component and a bidder-specific component, and removes the auction-level
component before the structural simulation.

## Design

- **Sample**: Pregão drop-outs from
  [AN-013](an-013-pregao-dropouts.md), by class and bidder type.
- **Variation**: within-auction vs between-auction variance in
  $y_{it} = \log(b_{it} / p_t^{\mathrm{ref}})$.
- **Specification**: method-of-moments variance decomposition; identify
  the between-auction variance from co-movement of bids within
  auctions; remove the estimated $\hat{a}_t$ via best-linear-predictor
  shrinkage.
- **Outcomes**: per-cell intraclass correlation (ICC); cleaned bid
  distribution $\exp(\hat{e}_{it})$ for downstream BNE simulation.

## Results

> *Pending AN-page interpretation — the underlying decomposition is run
> and the macros are in `values.tex`. Headline ICCs in the main cells
> range from **0.36** (Pregão non-pharma SMEs, `\iccNpSme`) to **0.59**
> (Pregão pharma non-SMEs, `\iccPharmaNonSme`) — values comparable to
> procurement settings where this correction is standard. Per-cell
> breakdown across the four type-class pairs and pre/post pending.*

## Interpretation

> *Pending. Once results are recorded, the interpretation should
> address (i) whether the ICC magnitudes are comparable to procurement
> settings where this correction is standard, (ii) which cells exhibit
> the largest auction-level variance (and hence the most cleaning),
> and (iii) whether the dominance ordering in
> [AN-010](an-010-bne-decomposition.md) survives the correction.
> Important: the correction removes common auction-level scale
> variation but does **not** purge bidder-type selection,
> product-level composition, or post-policy changes in the active SME
> pool.*

Confidence: **pending.**

## Follow-ups

- Cross-modality contrast: how does the cleaned ICC compare to the
  cross-modality first-price recovery
  (`v7-jpube-tight/scripts/38_cross_modality.R`)? Different auction
  formats should produce different ICCs.
- ICC stability across the policy break: a discontinuous shift in the
  ICC at March 2018 would indicate the auction-level scale structure
  changed under the policy. Worth checking.
- Update-version sensitivity: `v7-jpube-tight/scripts/43_uh_invariance_update.R`
  re-estimates the correction with iterative refinement; the
  decomposition should be stable across iterations.
