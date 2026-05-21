---
paper: sme-public
id: an-002
hypothesis: entry-thickens-pool
type: causal
question: Does open competition raise the number of bidder firms and valid bids in switched group 65?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Open competition raises log firms in switched group 65 by +0.18 (6m), attenuating to +0.10 (18m), all p<0.01; bid-count effects move in the same direction; the attenuation reflects the control groups' gradual SME-restriction rollout."
created: 2026-05-21
script: scripts/02_analysis.R
target: output/tables/tab_participants.tex
tags: ["H:entry-thickens-pool", didir, firms, bids, fixest, item-fe, item-cluster]
design:
  sample: "BEC standardized goods procurement, all items (not restricted to completed); 1,344 PBUs"
  specification: "y = η_i + γ Pre + β (g65 × Pre) + controls + ε; fixest::feols, lean=TRUE; clustered SE by item"
  fixed_effects: "item; PBU FE in second specification"
  cluster: "item"
  controls: "log quantity; sealed-bid indicator"
---

# AN-002: DiDiR firm and bid count effects

!!! info "Reduced-form motivation layer"
    The numbers below are from the v1–v4 reduced-form DiDiR pipeline
    (`scripts/02_analysis.R` + companions), which the v8 manuscript
    carries as **motivation** in §1 but does not headline. The canonical
    v8 result is the structural counterfactual decomposition — see
    [AN-010](an-010-bne-decomposition.md) (decomposition) and
    [AN-011](an-011-welfare-arithmetic.md) (welfare arithmetic).

## Question

Does opening the auction to non-SMEs raise the number of participating
firms and the number of valid bids in switched group 65? The reduced-form
DiDiR identifies the open-vs-SME-only difference in bidder participation.

## Design

- **Sample**: all items (not restricted to completed) in the BEC parquet
  cache for the 6/12/18-month windows around March 2018.
- **Variation**: same DiDiR as [AN-001](an-001-didir-prices.md).
- **Specification**: same DiDiR equation; outcomes are log firms and
  log valid bids.
- **Outcomes**: log number of bidder firms; log number of valid bids.
- **Identification threats**: secular trend in control groups' rollout
  of SME restrictions across other product groups —
  see Interpretation below.

## Results

| Window | Base log firms | PBU-FE log firms | N |
|---|---:|---:|---:|
| 6m  | +0.1776*** (0.0079) | +0.1821*** (0.0081) | 261,450 |
| 12m | +0.1495*** (0.0062) | +0.1540*** (0.0063) | 524,745 |
| 18m | +0.0926*** (0.0059) | +0.1004*** (0.0060) | 773,263 |

*Item FE; PBU FE in alternating columns; item-clustered SE. \*\*\* p<0.01.*

Bid-count effects (table `tab_validbids.tex`) move in the same direction
with similar magnitude attenuation across windows.

Output: `output/tables/tab_participants.tex`,
`output/tables/tab_validbids.tex`.

## Interpretation

The 6-month estimate implies ~22% more firms in switched group 65 under
open competition; the 18-month estimate ~10%. The attenuation does *not*
mean the policy effect weakened over time — it reflects the *control
groups'* gradual SME restriction rollout. As the controls converged to
SME-only-everywhere, the cross-group DiDiR contrast shrank mechanically.

The mechanical removal of non-SMEs from the eligible pool sets a floor
on the firm-count effect: the post-period bidder count cannot fall
*below* the pre-period count by more than the count of non-SMEs that
participated in the pre-period. The 6-month estimate is probably the
cleanest reading of the policy effect itself; the 18-month is the
conservative cross-window benchmark.

Confidence: **yellow.** The direction is stable; the magnitudes are
window-dependent in a known and interpretable way. The pre-treatment
placebo on firm counts is significant ([AN-004](an-004-placebo-tests.md))
but reflects the same secular trend rather than a group-65-specific
confound.

## Follow-ups

- Type-decomposition of the firm-count response: how much is
  non-SME *removal* versus SME *additional entry*? The structural
  decomposition ([AN-010](an-010-bne-decomposition.md)) separates them;
  the DiDiR cannot.
- Intensive vs extensive bid margin: are bid-count gains driven by more
  firms registering or by within-firm re-bidding? Pregão allows
  multiple bids per firm; a within-firm bid-count decomposition would
  expose strategic re-bidding.
- Item-class heterogeneity: the firm-count response should be larger
  on items where non-SMEs were over-represented pre-policy.
