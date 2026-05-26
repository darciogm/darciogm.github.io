---
paper: bitter-pills
id: an-009
hypothesis: lost-scale
type: robustness
question: When purchases are aggregated within buyer-item-month cells, do administrative and litigated cells differ in scale and in the fragmentation of repeated demand?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "Mixed pattern: administrative cells carry larger total accepted quantity (greater scale), while litigated cells show more repeated purchase-offer-items (more fragmented repeated demand)."
created: 2026-05-24
script: v10-causal-mechanism/analysis/48_mechanism_evidence.R
target: v10-causal-mechanism/output/tables/tab_aggregation_cells.tex
tags: ["H:lost-scale", aggregation, scale, sourcing, robustness, diagnostic]
design:
  sample: "Common buyer-item-month cells observed under both regimes within BEC group 65 São Paulo pharmaceutical procurement, 2009–2019"
  specification: "Aggregation within buyer-item-month cells, comparing total accepted quantity and the count of repeated purchase-offer-items across administrative and litigated cells"
  notes: "Common buyer-item-month cells are a selected subsample; the evidence is diagnostic and suggestive, not decisive, and supports the scale and sourcing reading only together with the decomposition figure and winner-switching evidence"
---

# AN-009: Aggregation within buyer-item-month cells

!!! econ "Economic intuition"
    Group purchases into buyer-item-month cells and ask two questions: how much was bought, and in how many separate pieces. Administrative cells move more total quantity, consistent with buying at greater scale. Litigated cells are split into more separate purchase-offer-items, consistent with demand arriving in fragmented, repeated batches. Neither fact alone settles the mechanism; together with the decomposition figure and winner switching they point toward a scale and sourcing reading.

## Question

If the regime contrast reflects lost scale and more fragmented sourcing
under litigation, that should show up when purchases are aggregated into
buyer-item-month cells: administrative cells should carry larger total
accepted quantity, while litigated cells should be split across more
repeated purchase-offer-items.

## Design

- **Sample**: common buyer-item-month cells observed under both regimes
  within the BEC group 65 São Paulo pharmaceutical sample, 2009–2019.
- **Specification**: aggregation within buyer-item-month cells,
  comparing total accepted quantity and the count of repeated
  purchase-offer-items across administrative and litigated cells.
- **Role**: diagnostic and suggestive. Common buyer-item-month cells are
  a selected subsample; the pattern supports the scale and sourcing
  reading only together with the decomposition figure and the
  winner-switching evidence.

## Results

| Cell quantity | Administrative cells | Litigated cells |
|---|---|---|
| Total accepted quantity | Larger (greater scale) | Smaller |
| Repeated purchase-offer-items | Fewer | More (more fragmented repeated demand) |

Output: `v10-causal-mechanism/output/tables/tab_aggregation_cells.tex`.

## Interpretation

Confidence: **yellow.** The pattern is mixed but coherent:
administrative cells carry larger total accepted quantity, consistent
with greater scale, while litigated cells show more repeated
purchase-offer-items, consistent with more fragmented repeated demand.
This is diagnostic and suggestive, not decisive. Common buyer-item-month
cells are a selected subsample, so the comparison conditions on cells
that appear under both regimes. The scale and sourcing reading holds
only in combination with the pricing-versus-sourcing decomposition
figure and the winner-switching evidence; on its own this cell-level
pattern does not pin down the mechanism. The reading is yellow because
the evidence is from a single jurisdiction (São Paulo BEC), rests on a
selected subsample, and comes from own project runs.

## Follow-ups

- Read alongside the decomposition figure and winner-switching evidence
  that anchor the [lost-scale hypothesis](../hypotheses/lost-scale.md);
  the cell pattern is only one of three supporting strands.
- Probe how sensitive the quantity and fragmentation contrasts are to
  the definition of the buyer-item-month cell (e.g., quarter rather than
  month).
