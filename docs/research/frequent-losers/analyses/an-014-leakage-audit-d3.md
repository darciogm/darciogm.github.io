---
paper: frequent-losers
id: an-014
hypothesis: gatekeeping-cost-of-evidence
type: robustness
question: How much does item-level evaluation leak relative to out-of-fold and temporal-holdout retraining?
status: done
status_date: 2026-05-22
confidence: green
headline: "Verdict: DEFENSIBLE. Item-level AUC drops from 0.995 (raw) to 0.891 [0.887, 0.894] (OOF CV) to 0.864 [0.858, 0.870] (temporal holdout). Direct-defendant AUC stays at ~0.51 (random) under every regime."
created: 2026-05-22
script: scripts/40_leakage_audit_d3.R
target: output/leakage_audit_d3/leakage_audit_d3.csv
tags: ["H:exposure-discipline", "H:gatekeeping-cost-of-evidence", leakage, out-of-fold, audit]
design:
  sample: "Item × firm panel in BEC 2009–2019"
  specification: "Three-step audit chain: (i) raw item-level AUC; (ii) out-of-fold CV at cobidder-firm level; (iii) temporal holdout (train 2009–2016, test 2017–2019)"
  notes: "Direct-defendant AUC reported across all three steps as null reference; drop ~0.10–0.13 under audit"
---

# AN-014: Leakage audit (D3 diagnostic)

## Question

How much does item-level evaluation leak relative to out-of-fold and
temporal-holdout retraining? The audit is the transparency block on the
generalization gap.

## Design

- **Sample**: item × firm panel in BEC 2009–2019.
- **Steps**:
  1. *Raw item-level AUC* (in-sample item-firm panel — leaks
     repeated-firm structure).
  2. *Out-of-fold cross-validation* at cobidder-firm level (no firm
     appears in both train and test folds).
  3. *Temporal holdout*: train 2009–2016, test 2017–2019.
- **Outcome**: cobidder AUC at each step; direct-defendant AUC as null
  reference at each step.

## Results

| Step | Cobidder AUC | Direct-defendant AUC |
|---|---:|---:|
| Raw item-level | 0.995 [0.995, 0.995] | 0.506 [0.505, 0.507] |
| Out-of-fold CV at firm | 0.891 [0.887, 0.894] | — |
| Temporal holdout (firm) | 0.864 [0.858, 0.870] | 0.511 [0.510, 0.513] |

Macros: `\valAUCitemRaw`, `\valAUCitemCV`, `\valAUCitemCVCI`,
`\valAUCitemTemp`, `\valAUCitemTempCI`, `\valAUCitemDirect`,
`\valAUCItemDirectTemp`, `\valLeakStructLow`, `\valLeakStructHigh`,
`\valLeakTautLow`, `\valLeakTautHigh`.

The cobidder AUC drops 0.104 from raw to OOF, and another 0.027 from
OOF to temporal holdout — totalling **~0.10–0.13 attenuation**
(`\valLeakTautLow`–`\valLeakTautHigh`). The remaining AUC band of
0.86–0.89 (`\valLeakStructLow`–`\valLeakStructHigh`) is the structural
discriminating performance the operational claim relies on.

## Interpretation

**Verdict: DEFENSIBLE.** Item-level evaluation leaks repeated-firm
structure, inflating AUC to ~1.0. The disciplined OOF and temporal-
holdout columns drop the AUC by 0.10–0.13 but leave it above 0.85 —
operationally informative. Direct-defendant AUC stays at ~0.51 in every
scenario (predicted null,
[AN-007](an-007-auc-direct-cade.md)), confirming the structural scope
limit independently of evaluation regime.

The audit is reported as an anti-leakage transparency block in the
online appendix of the paper. Its purpose is to neutralize the JLEO-
reviewer suspicion that ~1.0 AUC numbers signal leakage rather than
real discrimination.

## Follow-ups

- Sensitivity to fold definitions (firm vs item vs item-PBU).
- Re-estimation under alternative cobidder definitions.
- Triangulation with [AN-006](an-006-strict-prospective-holdout.md).
