---
id: an-009
hypothesis: cobidder-profile-distinct
type: descriptive
question: Do cobidders inside the FL14 stratum operate in more concentrated product portfolios and closer to legal cartel anchors in network terms?
status: pending
created: 2026-05-22
script: scripts/19_network_heterogeneity_2d.R
target: output/figures/fig_network_hhi.png
tags: ["H:cobidder-profile-distinct", network, hhi, product-concentration]
design:
  sample: "FL14 stratum, with cobidder vs non-cobidder split"
  specification: "Product-portfolio HHI; network distance to direct CADE defendants (shared tenders, shared buyers)"
  notes: "Two-way heterogeneity figure: network proximity × product HHI"
---

# AN-009: Network proximity and product-portfolio HHI

## Question

Do cobidders inside the FL14 stratum operate in more concentrated product
portfolios and closer to legal cartel anchors in network terms?

## Design

- **Sample**: FL14 stratum, split by cobidder indicator.
- **Outcomes**: product-portfolio HHI; network distance to direct CADE
  defendants (shared tenders, shared buyers, co-bidder graph proximity).
- **Specification**: two-dimensional heterogeneity figure plus mean
  comparison with bootstrap CIs.

## Results

*Pending.*

## Interpretation

*Pending.* See [H:cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md).

## Follow-ups

- Sensitivity to network-distance definition (1-hop, 2-hop).
