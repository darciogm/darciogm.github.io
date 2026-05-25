---
paper: frequent-losers
id: an-025
hypothesis: cobidder-concentration
type: robustness
question: How does cobidder AUC vary as the FL cutoff sweeps from FL2 through FL100, and is FL14 picking up an arbitrary plateau or a peak?
status: done
status_date: 2026-05-22
confidence: green
headline: "The cutoff sweep (tenders_count > k) forms a clean inverted-U. The paper's FL14 (≥ 14, i.e. the > 13 cutoff) sits at the peak: AUC 0.924, 2,735 firms, 193 cobidders. Tighter cutoffs (FL15+) decline as cobidders get excluded. FL14 sits at the top of a broad high plateau, not on a fragile spike."
created: 2026-05-22
script: scripts/22_continuous_vs_binary.R
target: output/continuous_vs_binary/auc_threshold_sweep.csv
tags: ["H:cobidder-concentration", robustness, cutoff-sweep, sensitivity]
design:
  sample: "Always-loser firms in BEC 2009–2019 (16,843 firms); cobidder set = 193 firms"
  specification: "AUC against cobidder labels under FL cutoffs ∈ {2, 3, 5, 6, 7, ..., 23, 30, 50, 75, 100}; reports AUC, N firms above cutoff, and N CADE cobidders above cutoff at each level"
  notes: "Complementary to AN-002 (which compares FL14 against the Tukey Q3+1.5×IQR alternative) and AN-023 (which audits the operationalization mapping)"
---

# AN-025: Cutoff-sweep robustness (FL2 through FL100)

!!! abstract "Intuition (plain-language)"
    If we sweep the cutoff from k = 2 through k = 100, how does discrimination change? AUC rises monotonically to a peak at k = 13 (0.92), then declines smoothly as the cutoff starts to exclude the cobidders themselves. The FL10–FL15 plateau is uniformly above 0.90. The paper's FL14 choice sits on a wide high plateau, not at a fragile peak.

## Question

How does cobidder AUC vary as the FL cutoff sweeps from FL2 through
FL100, and is FL14 picking up an arbitrary plateau or a peak? The
sweep documents the full robustness profile that would be hidden by
reporting only the headline FL14 number.

## Design

- **Sample**: 16,843 always-loser firms in BEC 2009–2019.
- **Positive class**: 193 cobidders ([AN-003](an-003-cade-bec-linkage.md)).
- **Sweep**: cutoff `tenders_count > k` for k ∈ {2, 3, 5, 6, 7, 8, 9, 10,
  11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 30, 50, 75, 100}.
- **At each cutoff**: AUC, N firms above cutoff, N CADE cobidders above
  cutoff (the latter measures whether cobidders get "cut off" themselves
  at tighter thresholds).

## Results

Selected cutoffs from the full sweep (source CSV has 19+ rows):

| Cutoff (k) | AUC | N above cutoff | N cobidders above |
|---:|---:|---:|---:|
| 2 | 0.730 | 9,186 | 193 |
| 5 | 0.833 | 5,757 | 193 |
| 7 | 0.868 | 4,574 | 193 |
| 10 | 0.902 | 3,442 | 193 |
| **13** (≡ paper FL14, ≥ 14) | **0.924** | **2,735** | **193** |
| 14 (≡ FL15, > 14) | 0.911 | 2,537 | 186 |
| 15 | 0.884 | 2,385 | 174 |
| 18 | 0.834 | 1,981 | 150 |
| 20 | 0.824 | 1,778 | 144 |
| 30 | 0.744 | 1,118 | (declining) |
| 50 | 0.662 | 545 | (declining) |
| 100 | 0.568 | 163 | (declining) |

Source: `output/continuous_vs_binary/auc_threshold_sweep.csv`.

![Threshold stability: AUC across 19 FL cutoffs](../assets/figures/fig_07_threshold_stability.png)

*Figure: AUC as a function of the FL cutoff value k, for cobidder
discrimination. The shape is a clean inverted U: rising from k=2 to
peak at k=13 (AUC 0.924), declining smoothly afterward. The FL10–FL15
plateau is ≥ 0.90; the FL14 paper choice sits on the high plateau,
not at a fragile peak.*

The shape is a clean **inverted U**:

- *Rising branch (k = 2 → 13)*: AUC rises monotonically from 0.730 to
  0.924. Tighter cutoffs progressively concentrate the cobidder signal.
- *Peak*: k = 13 (AUC = 0.924). This is one tender below the IQR
  threshold statistic (`\valThresholdStat` = 13.5, rounded to 14).
- *Plateau (k = 10–14)*: AUC = 0.902–0.924 across five consecutive
  cutoffs. The FL14 choice sits on the **high plateau**, not at a
  fragile peak.
- *Falling branch (k = 15 → 100)*: AUC falls from 0.884 toward 0.57 as
  the cutoff tightens past the point where cobidders themselves get
  excluded (N cobidders above cutoff drops from 193 at k=13 to 144 at
  k=20 to <50 at k=100).

## Interpretation

The sweep accomplishes three things:

1. **Plateau confirms the paper's choice is not arbitrary.** The
   median + 1.5 × IQR rule lands at k = 14 (statistic = 13.5), which is
   one bucket off the empirical AUC peak of k = 13 (0.924). The FL14
   cutoff is auditable (median + 1.5 × IQR is a textbook quantile
   rule) and sits at the top of a wide plateau. A reviewer asking
   "why this specific cutoff?" is answered: any cutoff in the FL10–
   FL15 range gives AUC > 0.90.

2. **Falling branch shows the construct has the right shape.** If the
   FL signal were spurious, tighter cutoffs would not produce
   monotonically smaller AUC after the peak. The clean inverted-U is
   what one would expect under the loser-side cover-bidding
   interpretation: too-loose cutoffs include many non-cobidder
   always-losers (false positives); too-tight cutoffs exclude the
   cobidders themselves (false negatives at the construct level — the
   N cobidders above cutoff column shows this directly).

3. **The paper's FL14 (≥ 14) IS the peak of the sweep.** Because the
   sweep indexes cutoffs as `> k`, the paper's ≥ 14 rule is the `> 13`
   row: AUC 0.924, 2,735 firms, 193 cobidders — matching the headline
   AUC in [AN-004](an-004-cobidder-baseline.md). The `> 14` (FL15) row
   sits one bucket tighter at 0.911. There is no auditability trade-off
   against a higher peak; the IQR-defined FL14 sits at the top of a
   broad high plateau.

This is the robustness check that converts H1 from "single-cutoff
result" to "robust across a wide cutoff band". See
[H:cobidder-concentration](../hypotheses/cobidder-concentration.md).

## Follow-ups

- Same sweep on temporal-holdout sample (the inverted U should retain
  shape but with depressed levels — interaction with
  [AN-013](an-013-precision-at-k-audit.md)).
- Sweep on the strict-train pool of
  [AN-006](an-006-strict-prospective-holdout.md).
- Add macros `\valAUCSweepK10`, `\valAUCSweepK13`, `\valAUCSweepK14`,
  `\valAUCSweepK20` to the `scripts/99_make_paper_values.R` pipeline so
  that the sweep numbers enter values.tex on the next refresh.
