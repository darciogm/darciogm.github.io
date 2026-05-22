---
id: an-004
hypothesis: cobidder-concentration
type: descriptive
question: Does the FL14 stratum contain a disproportionate share of CADE-adjudication-anchored cobidders relative to the always-loser baseline?
status: pending
created: 2026-05-22
script: scripts/02_analysis.R
target: output/tables/tab_cobidder_baseline.tex
tags: ["H:cobidder-concentration", baseline, fl14, auc]
design:
  sample: "Always-loser firms in BEC 2009–2019"
  specification: "AUC of FL14 (binary) and log(1+tenders_count) (continuous) with cobidder indicator as positive class"
  notes: "Baseline measurement before audit discipline; cobidder set defined in AN-003"
---

# AN-004: Baseline cobidder concentration in FL14 stratum

## Question

Does the FL14 stratum contain a disproportionate share of CADE-adjudication-
anchored cobidders relative to the always-loser baseline? This is the
headline triage result.

## Design

- **Sample**: always-loser firms in BEC 2009–2019.
- **Outcome**: cobidder indicator (1 if firm is in the cobidder set from
  [AN-003](an-003-cade-bec-linkage.md)).
- **Specification**: AUC of `FL14` (binary) and `log(1+tenders_count)`
  (continuous) over the always-loser set.
- **Identification**: descriptive baseline; audit-discipline variants in
  [AN-005](an-005-sham-fl-permutation.md) and
  [AN-006](an-006-strict-prospective-holdout.md).

## Results

*Pending.* Headline numbers: 131/193 cobidders in FL14 stratum; pool
reduction 83% when used as gatekeeper (cf.
[AN-012](an-012-operational-metrics.md)).

## Interpretation

*Pending.* See [H:cobidder-concentration](../hypotheses/cobidder-concentration.md).

## Follow-ups

- Decomposition by adjudication-anchor sub-period.
