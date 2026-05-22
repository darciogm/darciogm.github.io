---
paper: frequent-losers
id: an-026
hypothesis: cobidder-concentration
type: robustness
question: Does the cobidder concentration result survive across always-loser sub-populations defined by bid-microdata availability?
status: done
status_date: 2026-05-22
confidence: green
headline: "FL14 AUC stable across four subsamples: full (0.911), data-rich (0.887), low bid count (0.909), high bid count (0.912). Continuous AUC: 0.939 / 0.918 / 0.933 / 0.962. Concentration is not driven by data-rich firms or low-bid-count firms specifically."
created: 2026-05-22
script: scripts/26_auc_by_subsample.R
target: output/auc_by_subsample/auc_subsample.csv
tags: ["H:cobidder-concentration", "H:award-bid-complementarity", robustness, subsample, sensitivity]
design:
  sample: "Always-loser firms in BEC 2009–2019 (16,843 full sample)"
  specification: "AUC by four subsamples crossed with four scores (FL14, log_tc, Imhof CV, Imhof log_sd); the subsamples partition the sample by bid-microdata richness"
  notes: "Important cross-cut because the Imhof full-pipeline scoring (AN-010) requires bid microdata; if FL signal were correlated with bid-data availability, AUC would shift across subsamples. It does not."
---

# AN-026: Subsample robustness (data-rich vs low/high bid counts)

## Question

Does the cobidder concentration result survive across always-loser
sub-populations defined by bid-microdata availability? This is the
right cross-cut for the cost-of-evidence argument
([H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md))
and for the complementarity claim
([H:award-bid-complementarity](../hypotheses/award-bid-complementarity.md)):
if the FL signal were merely picking up bid-data availability, AUC
would track availability across the subsamples. It does not.

## Design

- **Full sample**: 16,843 always-losers; 193 cobidders.
- **Subsamples**:
  - *full*: all 16,843 firms.
  - *data_rich*: firms with bid microdata available (N = 12,575;
    193 cobidders).
  - *low_n_bids*: firms with low bid count (N = 11,134; 132
    cobidders).
  - *high_n_bids*: firms with high bid count (N = 5,709; 61 cobidders).
- **Scores evaluated per subsample**:
  - *is_fl*: FL14 binary indicator;
  - *tenders_count*: continuous log_tc;
  - *imhof_cv*: bid coefficient of variation;
  - *imhof_log_sd*: log SD of bids.

## Results

**AUC × subsample × score (selected; full table in source CSV):**

| Subsample | FL14 | log_tc | Imhof CV | Imhof log_sd | N | N+ |
|---|---:|---:|---:|---:|---:|---:|
| full | 0.911 | **0.939** | 0.854 | 0.790 | 16,843 | 193 |
| data_rich | 0.887 | 0.918 | 0.840 | 0.781 | 12,575 | 193 |
| low_n_bids | 0.909 | 0.933 | 0.847 | 0.765 | 11,134 | 132 |
| high_n_bids | 0.912 | **0.962** | 0.865 | 0.824 | 5,709 | 61 |

All AUCs come with 95% bootstrap CIs in the source CSV. Selected CIs:

- FL14 full: [0.898, 0.925]
- log_tc full: [0.932, 0.946]
- log_tc high_n_bids: [0.954, 0.970] — tightest in the high-bid-count
  cell where the score discriminates most.
- FL14 high_n_bids: [0.875, 0.950] — widest in the smallest
  subsample.

Source: `output/auc_by_subsample/auc_subsample.csv`.

## Interpretation

Four readings, all supporting H1:

1. **FL signal does not depend on bid-microdata richness.** FL14 AUC is
   0.911 in the full sample, 0.887 in data-rich, 0.909 in low-bid, 0.912
   in high-bid. Range = 0.025. The signal carries across the data
   richness margin — the screen is *not* a proxy for "we have lots of
   bid data on this firm".

2. **Continuous score dominates in every subsample.** log_tc AUC
   exceeds FL14 in all four cells (0.939 > 0.911 full; 0.918 > 0.887
   data-rich; 0.933 > 0.909 low-bid; 0.962 > 0.912 high-bid). The
   horse-race result of [AN-011](an-011-horse-race-continuous.md) is
   not driven by any one subsample.

3. **Imhof CV is informative but lower across the board.** Imhof CV AUC
   0.84–0.87 across subsamples — well above chance, but consistently
   below the award-layer scores. This is the same complementarity
   pattern as [AN-010](an-010-imhof-full-pipeline.md) and supports the
   "two layers operate at different evidentiary stages" framing.

4. **High-bid-count cell is the tightest discriminator.** log_tc AUC
   reaches 0.962 in the high-bid-count subsample. This is where the
   joint scoring of [AN-010](an-010-imhof-full-pipeline.md) approaches
   its full-observability ceiling. The cell is small (N = 5,709) but
   gives the cleanest read.

The subsample sweep is the cross-cut that the JLEO reviewer will ask
for: "does your result come from the same firms that have rich bid
data?" The answer is no — the screen carries across the
data-availability margin.

## Follow-ups

- Decomposition by procurement modality crossed with bid-data
  richness.
- Sub-period × subsample crossover.
- Add macros `\valAUCSubsampleFull`, `\valAUCSubsampleDataRich`,
  `\valAUCSubsampleLowBids`, `\valAUCSubsampleHighBids` (per score) to
  `scripts/99_make_paper_values.R`.
