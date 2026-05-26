---
paper: frequent-losers
id: an-006
hypothesis: timing-discipline
type: robustness
question: Does cobidder concentration survive when the FL score is formed strictly before the target window?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Strict ex ante (train 2009–2016, evaluate 2017–2019) firm-level AUC drops from in-sample 0.924 (FL14) / 0.939 (continuous) to 0.767 [0.734, 0.800] and 0.750 [0.706, 0.795] respectively; concentration retains operational meaning under timing discipline."
created: 2026-05-22
script: scripts/27_strict_prospective_holdout.R
target: output/strict_train_threshold/strict_train_threshold.csv
tags: ["H:timing-discipline", "H:exposure-discipline", holdout, ex-ante]
design:
  sample: "Always-loser firms; train window 2009–2016 forms the score, target window 2017–2019"
  specification: "Score formed on pre-target participation only; FL train cutoff = 7 (vs full-panel 14); evaluation against same cobidder set; firm-level and item-level variants reported"
  notes: "Strict ex ante: no post-target information enters the score. Train-period cutoff is naturally smaller than full-panel cutoff because participation history is shorter"
---

# AN-006: Strict prospective holdout (timing + exposure)

!!! abstract "Intuition (plain-language)"
    A screen is only useful if it would have flagged firms *before* the cases closed. We rebuild it on 2009–2016 data and test it on cobidders adjudicated in 2017–2019. Discrimination falls from in-sample 0.924 to 0.767 — the honest cost of using a real-time information set instead of hindsight. Lower, but well above random: the loser-side footprint forms early enough to carry operational value for a regulator, not merely retrospective fit.

## Question

Does cobidder concentration survive when the FL score is formed strictly
before the target window? The audit constructs the ex ante variant
that mimics enforcement deployment: score in hand at time t, target
window t+1.

## Design

- **Sample**: always-loser firms; train window 2009–2016 forms the
  score; evaluation window 2017–2019.
- **Variants**:
  - *Firm-level FL14 (train)*: binary cutoff retrained on the 2009–2016
    pool. Train-cutoff = 7 (vs full-panel statistic 13.5; smaller because
    history is shorter).
  - *Firm-level continuous*: `log(1 + tenders_count_train)`.
  - *Item-level*: `any_fl_train_binary` and `log_max_tc_train` at the
    item level for 2017–2019 tenders.

## Results

| Holdout variant | AUC | 95% CI |
|---|---:|---|
| Firm FL14 (train binary) | 0.767 | [0.734, 0.800] |
| Firm continuous (log_tc train) | 0.750 | [0.706, 0.795] |
| Item-level FL (any_fl_train_binary) | 0.565 | [0.564, 0.566] |
| Item-level continuous (log_max_tc_train) | 0.770 | [0.764, 0.776] |
| Item-level vs direct CADE (temporal holdout) | 0.511 | [0.510, 0.513] |

Macros: `\valAUCStrictFirmFL`, `\valAUCStrictFirmFLCI`,
`\valAUCStrictFirmTC`, `\valAUCStrictItemFL`, `\valAUCStrictItemTC`,
`\valAUCItemDirectTemp`.

## Interpretation

Firm-level concentration retains roughly 80–85% of the in-sample AUC
under strict timing (0.767 vs 0.924 for FL14; 0.750 vs 0.939 for
continuous). The item-level binary collapses (0.565) — the binary
indicator loses too much information when projected to item granularity
— while the item-level continuous holds at 0.770. Direct-defendant AUC
stays at 0.511 (random) in the temporal holdout, matching the predicted
null in [AN-007](an-007-auc-direct-cade.md).

The drop is the honest discipline price: in-sample numbers overstate
operational discrimination, but the rank still ranks cobidders well above
random.

## Follow-ups

- Window-length sensitivity (alternative train windows).
- Decomposition by modality
  ([AN-016](an-016-gate-d2.md)).
- Operational precision under temporal holdout
  ([AN-013](an-013-precision-at-k-audit.md)).
