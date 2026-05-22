---
id: an-020
hypothesis: price-scope-sign-reversal
type: causal
question: Does the 2018 procurement decree shift price dynamics differently across modalities, consistent with the scope reading?
status: pending
created: 2026-05-22
script: scripts/14_did_decreto_2018.R
target: output/tables/tab_did_decreto_2018.tex
tags: ["H:price-scope-sign-reversal", did, decreto-2018, modality]
design:
  sample: "BEC items 2017–2019, by Convite vs Pregão"
  specification: "DiD around 2018 decree; outcome = log negotiated price; FL14 interaction"
  fixed_effects: "Item, modality, year"
  cluster: "Item"
  notes: "Cross-modality DiD on price dynamics"
---

# AN-020: DiD around 2018 procurement decree

## Question

Does the 2018 procurement decree shift price dynamics differently across
modalities (Convite vs Pregão), consistent with the scope reading?

## Design

- **Sample**: BEC items 2017–2019, by Convite vs Pregão.
- **Specification**: difference-in-differences around the 2018 decree;
  outcome = log negotiated price, with FL14 interaction.
- **Fixed effects**: item, modality, year.

## Results

*Pending.*

## Interpretation

*Pending.* Consistency with the scope reading from
[AN-016](an-016-gate-d2.md) and the price-scope interpretation of §7. See
[H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md).

## Follow-ups

- Event-study around the decree date.
