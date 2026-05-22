---
id: an-002
hypothesis: cobidder-concentration
type: robustness
question: Is the FL14 binary cutoff stable across IQR threshold definitions, and how does it compare to Tukey-standard cutoffs?
status: pending
created: 2026-05-22
script: scripts/04_figures.R
target: output/figures/fig_02_iqr_identification.png
tags: ["H:cobidder-concentration", iqr-threshold, robustness, fl14]
design:
  sample: "Always-loser firms in BEC LANCES panel 2009–2019"
  specification: "FL14 = median + 1.5 × IQR (paper convention); alternative cutoffs at median + IQR, Q3 + 1.5 × IQR (Tukey), percentile-90"
  notes: "Paper uses median + 1.5 × IQR — intentional deviation from Tukey Q3 + 1.5 × IQR"
---

# AN-002: IQR threshold and FL14 cutoff stability

## Question

Is the FL14 binary cutoff stable across IQR threshold definitions, and how
does it compare to Tukey-standard cutoffs? The paper deliberately uses
`median + 1.5 × IQR`, not the Tukey `Q3 + 1.5 × IQR`.

## Design

- **Sample**: always-loser firms in BEC 2009–2019.
- **Alternative cutoffs**: median + IQR, median + 1.5 × IQR (paper),
  Tukey Q3 + 1.5 × IQR, percentile-90.
- **Outcome**: cobidder AUC under each cutoff; sample size above cutoff.

## Results

*Pending.*

## Interpretation

*Pending.* See [H:cobidder-concentration](../hypotheses/cobidder-concentration.md).

## Follow-ups

- Decomposition of cutoff sensitivity into participation distribution
  shifts vs cobidder distribution shifts.
