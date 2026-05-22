---
id: an-023
hypothesis: cobidder-concentration
type: robustness
question: Does the operational mapping from theory (loser-side concentration) to implementation (FL14) survive an explicit audit against alternative operationalizations?
status: pending
created: 2026-05-22
script: scripts/47_theory_operationalization_audit.R
target: output/tables/tab_theory_audit.tex
tags: ["H:cobidder-concentration", audit, operationalization, theory]
design:
  sample: "Always-losers in BEC 2009–2019"
  specification: "Alternative operationalizations of loser-side concentration: log_tc continuous; rank-percentile; FL14; FL10; FL20; persistent-loser definitions"
  notes: "Audit aligned with the locked rule: 'frequent losers' is the operational implementation of 'loser-side concentration'"
---

# AN-023: Theory operationalization audit

## Question

Does the operational mapping from theory (loser-side concentration) to
implementation (FL14) survive an explicit audit against alternative
operationalizations? The audit anchors the locked rule of engagement:
*loser-side concentration* is the concept; *frequent losers* is the
implementation.

## Design

- **Sample**: always-losers in BEC 2009–2019.
- **Alternative operationalizations**: continuous `log(1+tenders_count)`;
  rank-percentile; `FL10`; `FL14` (paper convention); `FL20`; alternative
  persistent-loser definitions.
- **Outcome**: cobidder AUC under each operationalization.

## Results

*Pending.*

## Interpretation

*Pending.* The audit transparency block protects against the over-defense of
`FL14` as ontologically special. See
[H:cobidder-concentration](../hypotheses/cobidder-concentration.md).

## Follow-ups

- Sensitivity to definitions of *persistent* across panel windows.
