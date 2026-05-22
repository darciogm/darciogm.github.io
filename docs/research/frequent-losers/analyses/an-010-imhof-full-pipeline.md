---
id: an-010
hypothesis: award-bid-complementarity
type: causal
question: How does the seven-feature Imhof–Wallimann bid-distribution pipeline perform on the cobidder target, and what is the increment from adding the award-layer score?
status: pending
created: 2026-05-22
script: scripts/31_imhof_full_pipeline.R
target: output/tables/tab_imhof_pipeline.tex
tags: ["H:award-bid-complementarity", imhof, bid-distribution, horse-race]
design:
  sample: "Firms with both award and bid features available in BEC 2009–2019"
  specification: "Bid-only Imhof seven-feature pipeline; bid + award joint score; same-sample AUC; DeLong test for difference"
  notes: "Imhof features include CV, kurtosis, skewness, relative rank, percent diff to lowest"
---

# AN-010: Imhof full pipeline benchmark

## Question

How does the seven-feature Imhof–Wallimann bid-distribution pipeline
perform on the cobidder target, and what is the increment from adding the
award-layer score? The joint score is the full-observability upper bound.

## Design

- **Sample**: firms with both award and bid features available.
- **Outcome**: cobidder indicator.
- **Specifications**:
  - bid-only: seven Imhof features
    \citep{imhof2018screening,imhof2019detecting,wallimann2023machine};
  - award + bid: joint feature set.
- **Outcome metric**: AUC; DeLong test for AUC difference.

## Results

*Pending.* Headline (from prior runs): Imhof full pipeline AUC 0.888 vs FL
AUC 0.903 — gap is *complementarity*, not dominance.

## Interpretation

*Pending.* See [H:award-bid-complementarity](../hypotheses/award-bid-complementarity.md).
The gap should not be sold as "outperforms"; the headline is
"comparable discrimination at lower informational cost".

## Follow-ups

- Marginal AUC contribution of each Imhof feature in the joint model.
