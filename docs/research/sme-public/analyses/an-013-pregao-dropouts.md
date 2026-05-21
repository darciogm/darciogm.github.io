---
paper: sme-public
id: an-013
hypothesis: ipv-clock-admissible
type: descriptive
question: How are losing-bidder drop-out prices extracted from BEC Pregão event-log data, and what is the per-cell coverage of the structural sample?
status: pending
created: 2026-05-21
script: v7-jpube-tight/scripts/35_pregao_dropouts.R
target: v7-jpube-tight/output/dropouts/dropouts_panel.parquet
tags: ["H:ipv-clock-admissible", structural-extraction, pregao-event-log, drop-outs, sample-construction]
design:
  sample: "BEC Pregão event log spanning the March 2018 cutoff; classes = non-pharma standardized, pharma; types = SME, non-SME"
  specification: "Extract losing bidder exit prices and final-state bids from event log; normalize by buyer reference price; build per-cell empirical distributions"
  source_panel: "BEC event log"
  notes: "Foundation for the entire structural pipeline (AN-014 through AN-017)"
---

# AN-013: Pregão drop-out extraction

## Question

How does the project build the structural sample from BEC Pregão
event-log data? Specifically: (i) how are losing-bidder exit prices
identified in the event stream, (ii) what filters apply (item value,
auction format, completion status), and (iii) what is the per-cell
coverage of the structural sample?

## Design

- **Sample**: BEC Pregão event log for the structural window
  (spanning March 2018). Cells defined by class
  (non-pharma standardized; pharma) × period (pre/post) × bidder type
  (SME / non-SME).
- **Variation**: identification of *which* bid in the event log
  represents a *losing bidder exit price* — the bid after which that
  firm submits no further bids and another firm wins.
- **Specification**: parse the event log per item, identify the firm
  exit timeline, take each firm's *final* observed bid as the
  drop-out observation, normalize by the buyer reference price.
- **Outcomes**: per-cell drop-out count; per-cell empirical
  distribution of $\log(b_{it} / p_t^{\mathrm{ref}})$.

## Results

> *Pending — script extraction is run in `v7-jpube-tight/`. Once the
> per-cell coverage table and the drop-out distribution shapes are
> documented, fill in this section with the cell-by-cell counts and
> the implied sample size for downstream BNE simulations.*

## Interpretation

> *Pending. Once results are recorded, the interpretation should
> address (i) whether the drop-out count per cell is large enough to
> support the structural simulations, (ii) which cells have the
> sparsest coverage and therefore the largest model uncertainty, and
> (iii) whether censoring patterns (the winner does not drop out) are
> stable across cells.*

Confidence: **pending.**

## Follow-ups

- Censoring sensitivity: report the share of items where the winner's
  final bid is treated as an upper-bound observation vs as the actual
  drop-out, and how this varies pre vs post. The Turnbull NPMLE
  variant in `v7-jpube-tight/scripts/48_turnbull_fc.R` should be
  cross-referenced.
- Per-firm filter sensitivity: minimum drop-out count per firm,
  minimum auction size, etc.
  (`v7-jpube-tight/scripts/52_filter_sensitivity.R`).
- Cross-modality contrast: the same extraction logic on Convite
  first-price bids gives a structurally different object (a strategic
  bid rather than a willingness-to-supply exit); the GPV inversion in
  `v7-jpube-tight/scripts/38_cross_modality.R` recovers a cost
  distribution comparable to the Pregão one.
