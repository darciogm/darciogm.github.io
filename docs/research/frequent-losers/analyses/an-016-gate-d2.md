---
id: an-016
hypothesis: price-scope-sign-reversal
type: descriptive
question: D2 gate diagnostic — does the FL screen discriminate cobidders better in Convite or in Pregão environments?
status: pending
created: 2026-05-22
script: scripts/37_gate_d2_modal_auc.R
target: output/tables/tab_gate_d2.tex
tags: ["H:price-scope-sign-reversal", gate-d2, modal-id, convite, pregao]
design:
  sample: "Cobidders split by procurement modality (Convite primary vs Pregão primary)"
  specification: "AUC by modality; bootstrap CI on difference"
  notes: "D2 result: AUC convite_primary 0.816 vs pregão_primary 0.952; bootstrap diff −0.136, p≈0. Direction OPPOSITE to institutional hypothesis. Convite has only 6 cobidders (small N)."
---

# AN-016: Gate D2 — modal-by-modal AUC

## Question

D2 gate diagnostic: does the FL screen discriminate cobidders better in
Convite (sealed-bid, minimum-bidder rule) or in Pregão (electronic
auction) environments? Diagnostic D2 from the 2026-04-30 gate battery.

## Design

- **Sample**: cobidders split by procurement modality (Convite primary vs
  Pregão primary).
- **Specification**: AUC by modality; bootstrap CI on the AUC difference.

## Results

*Pending.* Headline: AUC convite_primary 0.816 vs pregão_primary 0.952;
bootstrap difference −0.136, p ≈ 0. Direction **opposite** to the
institutional minimum-bidder-rule hypothesis. Caveat: convite_primary has
only 6 cobidders (small N+).

## Interpretation

*Pending.* The convite minimum-bidder rule does NOT produce stronger
loser-side signal — disqualifies γ++ winner/loser reframing. Construction
discriminates better in Pregão environments; treat as **scope information**,
not as a positive test of the minimum-bidder-rule theory. See
[H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md).

## Follow-ups

- Diagnostic on the small-N convite stratum (power, exact tests).
