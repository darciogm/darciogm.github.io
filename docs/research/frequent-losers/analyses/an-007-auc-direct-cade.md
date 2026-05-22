---
id: an-007
hypothesis: direct-defendants-null
type: placebo
question: Does the FL score discriminate direct CADE defendants? It should not — by design.
status: pending
created: 2026-05-22
script: scripts/33_auc_direct_cade.R
target: output/tables/tab_auc_direct_cade.tex
tags: ["H:direct-defendants-null", placebo, scope-check, auc]
design:
  sample: "All BEC firms; positive label = 47 direct CADE defendants"
  specification: "AUC of FL14 (binary) and log(1+tenders_count) (continuous) over the full panel, with direct-defendant indicator as positive class"
  notes: "Predicted finding: AUC ≈ 0.50. A non-null result would undermine the loser-side scope reading."
---

# AN-007: AUC against direct CADE defendants

## Question

Does the FL score discriminate direct CADE defendants? Under the loser-side
scope interpretation, it should not — the score is built over zero-win
firms and cannot rank designated winners. A null AUC is the predicted
finding.

## Design

- **Sample**: all BEC firms (not restricted to always-losers).
- **Outcome**: direct-defendant indicator (1 if firm is one of the 47
  direct CADE defendants).
- **Specification**: AUC of `FL14` and `log(1+tenders_count)`.
- **Identification**: scope-check placebo; the null is the predicted
  finding under the loser-side reading.

## Results

*Pending.* Headline number from prior runs: AUC ≈ 0.49–0.50.

## Interpretation

*Pending.* See [H:direct-defendants-null](../hypotheses/direct-defendants-null.md).

## Follow-ups

- Decomposition of direct defendants by role (winner, coordinator) and
  AUC by role.
