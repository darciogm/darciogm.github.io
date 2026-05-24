---
id: an-004
hypothesis: thin-market-supplier-leverage
type: robustness
question: Does the litigated-urgent price gap concentrate in thin markets — off-formulary molecules and shallow supplier pools — where suppliers retain leverage?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "The litigated-urgent gap concentrates in thin and off-formulary markets, consistent with residual supplier leverage where the pool is shallow."
created: 2026-05-24
script: v9-jpube-short/analysis/52_market_depth_heterogeneity.R
target: v9-jpube-short/output/tables/tab_market_depth_heterogeneity.tex
tags: ["H:thin-market-supplier-leverage", market-depth, formulary, heterogeneity, robustness]
design:
  sample: "Urgent panel; litigated-versus-administrative urgent gap split by formulary status and market depth"
  specification: "Litigated-versus-administrative urgent log-price gap interacted with formulary status and market-depth bins; fixed effects and clustering as in the within-firm and bounds specifications"
  notes: "Diagnostic that locates where the cost margin sits, not a separate identification design; deep-market interpretation reads alongside AN-003"
---

# AN-004: Market-depth and formulary heterogeneity in the urgent gap

!!! abstract "Intuition (plain-language)"
    The same urgent purchase looks very different depending on how many suppliers can plausibly serve it. Where many firms compete and the item is a routine public-formulary molecule bought again and again, the litigation cost margin is small. Where the supplier pool is shallow or the molecule sits off the public formulary, the same court order leaves more room for a supplier to hold the price up. This page maps where the urgent gap concentrates — it is a diagnostic that locates the margin, not a fresh identification design.

## Question

Does the litigated-urgent price gap concentrate in thin markets — off-formulary
molecules and shallow supplier pools — where suppliers retain leverage? This
asks **where** the cost margin sits across the urgent panel, complementing the
within-firm result in [AN-003](an-003-within-firm-pricing.md), which shows the
same boundary along quantity, formulary, and period cuts.

## Design

- **Sample**: the urgent panel, with the litigated-versus-administrative urgent
  log-price gap split by formulary status and market depth.
- **Variation**: litigated-urgent versus administrative-urgent within stratum,
  interacted with formulary status (SUS formulary versus non-formulary) and
  market-depth bins.
- **Specification**: the urgent gap interacted with formulary status and
  market-depth bins, with fixed effects and PBU clustering as in the within-firm
  and bounds specifications.
- **Reading**: diagnostic. It locates the cost margin across market types; it is
  **not** a separate identification design.

## Results

| Market type | Urgent gap |
|---|---|
| Deep market, SUS-formulary | Small / near zero |
| Thin market, non-formulary | Larger |

*UTG = litigated-versus-administrative urgent gap, split by formulary status and
market depth. The detailed bins and coefficients are in the output table.*

Output: `v9-jpube-short/output/tables/tab_market_depth_heterogeneity.tex`.

## Interpretation

The litigated-urgent gap is concentrated where the supplier pool is shallow and
where the molecule sits off the public (SUS) formulary. In deep, formulary
markets — the markets that carry most of the urgent volume — the gap is small,
mirroring the near-zero within-firm baseline in
[AN-003](an-003-within-firm-pricing.md). In thin, off-formulary markets, the gap
is larger, consistent with residual supplier leverage where few firms can serve
the order. This is the deep-market interpretation: the core paper result — that
the cost margin is sourcing rather than a broad same-firm markup — holds where
markets are deep and repeatedly traded, and supplier leverage reappears at the
thin-market and earlier-market edges.

Confidence: **yellow.** This is a diagnostic that locates the margin across
market types, not a standalone identification design — it inherits the
identification of the bounds and within-firm specifications and reads alongside
them. The administrative urgent channel remains the selected, larger, closest
feasible urgent-procurement comparison rather than a random or clean
counterfactual. The reading is yellow because the evidence is
single-jurisdiction (São Paulo BEC) and from own-project runs.

## Follow-ups

- Tie the thin-market leverage here to the within-firm quantity, formulary, and
  period splits — see [AN-003](an-003-within-firm-pricing.md).
- Connect deep-market depth to the lost-scale channel, since deep markets are
  where demand aggregation has the most to lose under fragmentation — see
  [AN-005](an-005-pricing-sourcing-decomposition.md).
- Check whether the thin-market gap is driven by a narrow set of molecules or
  buyers via an aggregation-cell sensitivity — see
  [AN-009](an-009-aggregation-cells.md).
