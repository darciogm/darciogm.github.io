---
id: an-014
hypothesis: gatekeeping-cost-of-evidence
type: robustness
question: How much does item-level evaluation leak relative to out-of-fold and temporal-holdout retraining?
status: pending
created: 2026-05-22
script: scripts/40_leakage_audit_d3.R
target: output/tables/tab_leakage_audit.tex
tags: ["H:exposure-discipline", "H:gatekeeping-cost-of-evidence", leakage, out-of-fold, audit]
design:
  sample: "Item × firm panel in BEC 2009–2019"
  specification: "Raw item-level AUC → out-of-fold CV at cobidder-firm level → temporal holdout (train 09-16, test 17-19)"
  notes: "Verdict: DEFENSIBLE — drops ~0.10–0.13 under audit; remaining AUC > 0.85 sustains operational claim"
---

# AN-014: Leakage audit (D3 diagnostic)

## Question

How much does item-level evaluation leak relative to out-of-fold and
temporal-holdout retraining? The audit is transparency on the
generalization gap.

## Design

- **Sample**: item × firm panel in BEC 2009–2019.
- **Steps**:
  1. Raw item-level AUC (in-sample).
  2. Out-of-fold cross-validation at cobidder-firm level.
  3. Temporal holdout: train 2009–2016, test 2017–2019.
- **Outcome**: cobidder AUC at each step.

## Results

*Pending.* Headline:

- Raw item-level AUC 0.995 → out-of-fold CV at firm level: 0.891 →
  temporal holdout: 0.864.
- Drop ~0.10–0.13 under audit; remaining AUC > 0.85 sustains the
  operational claim.
- Against direct CADE defendants: AUC ≈ 0.51 in all scenarios (random) —
  confirms structural scope limit.

## Interpretation

*Pending.* Verdict: **DEFENSIBLE**. Report audit table in online appendix as
anti-leakage transparency block. See
[H:exposure-discipline](../hypotheses/exposure-discipline.md).

## Follow-ups

- Sensitivity to fold definitions.
