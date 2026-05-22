---
id: an-009
hypothesis: cobidder-profile-distinct
type: descriptive
question: Do cobidders inside the FL14 stratum operate in more concentrated product portfolios than non-cobidder FLs, and are FL-flagged winners less concentrated overall?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Cobidder product HHI 0.380 vs non-cobidder FL HHI 0.288 (Cohen's d +0.39); winners that face FL bidders have HHI 0.178 vs 0.303 for non-FL-faced winners (FL bidders compete in more contestable markets)."
created: 2026-05-22
script: scripts/19_network_heterogeneity_2d.R
target: output/figures/fig_network_hhi.png
tags: ["H:cobidder-profile-distinct", network, hhi, product-concentration]
design:
  sample: "FL14 stratum, with cobidder vs non-cobidder split; complementary winner-side HHI from script 44 consolidation"
  specification: "Product-portfolio HHI per firm; network distance to direct CADE defendants (shared tenders, shared buyers); winner-side HHI (FL-faced vs non-FL-faced)"
  notes: "Two complementary HHI angles: (i) within-FL stratum cobidder vs non-cobidder product concentration; (ii) winner-side market concentration when FL bidders are present"
---

# AN-009: Network proximity and product-portfolio HHI

## Question

Do cobidders inside the FL14 stratum operate in more concentrated
product portfolios than non-cobidder FLs, and are FL-flagged winners
less concentrated overall?

## Design

- **Sample**: FL14 stratum, with cobidder vs non-cobidder split;
  complementary winner-side HHI from the consolidated panel.
- **Outcomes**:
  - *Cobidder profile*: product-portfolio HHI per firm.
  - *Winner-side*: HHI faced by winners when FL bidders are present vs
    not.

## Results

**Cobidder vs non-cobidder FL product concentration:**

| Metric | Cobidders | Non-cobidder FL | Cohen's d |
|---|---:|---:|---:|
| Product-portfolio HHI | 0.380 | 0.288 | +0.39 |

**Winner-side concentration (FL-bidder presence indicator):**

| Setting | HHI faced by winners |
|---|---:|
| FL-bidder present | 0.178 |
| Non-FL bidder | 0.303 |

Macros: `\valBridgeHHICob`, `\valBridgeHHIFLnc`, `\valBridgeHHID`,
`\valFLwinnerHHI`, `\valNonFLwinnerHHI`.

Auxiliary bid-level ratios (from the consolidated v8 panel):
`\valFLBidWinnerRatio` = 1.846 (FL bid/winner ratio) vs
`\valNonFLBidWinnerRatio` = 1.426 (non-FL).

## Interpretation

Two complementary readings:

1. **Within-FL cobidders are more product-concentrated** than non-
   cobidder FLs (0.380 vs 0.288), consistent with focal-portfolio cover
   bidding rather than diffuse high-volume losing.
2. **FL-bidder-present markets are less concentrated** on the winner
   side (0.178 vs 0.303): the markets where FL bidders show up are more
   contestable in their winner distribution. This is the scope context
   for the price-scope reading
   ([AN-019](an-019-rdd-cap-price.md),
   [H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md)).

The two patterns sit together: cobidders are deployed against a few
focal product verticals (high own-HHI), but in those verticals the
winner side is competitive (low winner-HHI). The cover-bidding role is
exactly to insert losers in a competitive winner environment.

## Follow-ups

- Decomposition by sub-period.
- Sensitivity to alternative network-distance definitions (1-hop vs
  2-hop).
- Heterogeneity in the unified-mechanism quadrants
  ([AN-024](an-024-unified-mechanism.md)).
