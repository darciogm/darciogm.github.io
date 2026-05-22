---
id: an-005
hypothesis: exposure-discipline
type: placebo
question: Does cobidder concentration in the FL14 stratum survive a participation-volume-matched placebo ("sham FL")?
status: pending
created: 2026-05-22
script: scripts/25_sham_fl_permutation.R
target: output/tables/tab_sham_fl_permutation.tex
tags: ["H:exposure-discipline", placebo, permutation, sham-fl]
design:
  sample: "Always-loser firms in BEC 2009–2019"
  specification: "Random reassignment of FL14 label preserving marginal participation distribution; recompute cobidder AUC"
  notes: "Permutation-based exposure discipline; B = 1000 draws"
---

# AN-005: Sham FL permutation placebo

## Question

Does cobidder concentration in the FL14 stratum survive a
participation-volume-matched placebo? If the result is driven by raw
participation volume rather than a signal-carrying loser-side footprint,
permuting the FL label while preserving volume should reproduce the
concentration.

## Design

- **Sample**: always-loser firms in BEC 2009–2019.
- **Construction**: random reassignment of the `FL14` label preserving
  the marginal distribution of `tenders_count`; B = 1000 permutations.
- **Outcome**: cobidder AUC under each permutation, compared to observed.

## Results

*Pending.*

## Interpretation

*Pending.* See [H:exposure-discipline](../hypotheses/exposure-discipline.md).

## Follow-ups

- Sensitivity to the matching granularity (tenders_count bins).
