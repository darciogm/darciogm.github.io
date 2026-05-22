---
id: an-022
hypothesis: price-scope-sign-reversal
type: placebo
question: Does the loser-side ranking generate similar cobidder concentration when restricted to Pregão-only auctions?
status: pending
created: 2026-05-22
script: scripts/46_falsification_pregao_only.R
target: output/tables/tab_falsification_pregao.tex
tags: ["H:price-scope-sign-reversal", falsification, pregao-only]
design:
  sample: "Pregão-only sub-panel of BEC 2009–2019"
  specification: "Replicate baseline cobidder AUC restricted to Pregão items"
  notes: "Modality-restricted falsification — does the loser-side rank work outside the institutional minimum-bidder rule?"
---

# AN-022: Pregão-only falsification

## Question

Does the loser-side ranking generate similar cobidder concentration when
restricted to Pregão-only auctions? The test isolates the modality
contribution from the cross-modal scope variation in
[AN-016](an-016-gate-d2.md).

## Design

- **Sample**: Pregão-only sub-panel of BEC 2009–2019.
- **Specification**: baseline cobidder AUC restricted to Pregão items.

## Results

*Pending.*

## Interpretation

*Pending.* Bears on the scope interpretation. See
[H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md)
and [AN-016](an-016-gate-d2.md).

## Follow-ups

- Convite-only counterpart with small-N power diagnostic.
