---
paper: frequent-losers
id: an-006
hypothesis: timing-discipline
type: robustness
question: Does cobidder concentration survive when the FL score is formed strictly before the target window?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Timing is a LIMIT. Strict ex ante (train 2009–2016, evaluate 2017–2019) survives only inside the always-loser pool: firm-level AUC ~0.77 (FL14 0.767, continuous 0.750). At full-universe item scale it collapses toward random (item-level binary 0.565; full-universe ROC ≈ 0.55, precision@500 ≈ 0). The screen is largely RETROSPECTIVE among incumbents, not a prospective alarm; sequential strict-timing deployment is infeasible."
created: 2026-05-22
script: scripts/27_strict_prospective_holdout.R
target: output/strict_train_threshold/strict_train_threshold.csv
tags: ["H:timing-discipline", "H:exposure-discipline", holdout, ex-ante]
design:
  sample: "Always-loser firms; train window 2009–2016 forms the score, target window 2017–2019"
  specification: "Score formed on pre-target participation only; FL train cutoff = 7 (vs full-panel 14); evaluation against same cobidder set; firm-level and item-level variants reported"
  notes: "Strict ex ante: no post-target information enters the score. Train-period cutoff is naturally smaller than full-panel cutoff because participation history is shorter"
---

!!! warning "Superseded numbers — canonical-target re-estimation (June 4, 2026)"
    This analysis note documents a historical run under the earlier validation label.
    On June 4, 2026 the paper adopted a reproducible, non-circular target (651
    always-loser cobidders; frequent-loser flag never used in the label) and
    re-estimated every result. Where this page conflicts with the
    [paper](../paper.pdf) or the [changelog](../changelog.md), **the paper wins**.

# AN-006: Strict prospective holdout (timing + exposure)

!!! abstract "Intuition (plain-language)"
    A screen is only useful if it would have flagged firms *before* the cases closed. We rebuild it on 2009–2016 data and test it on cobidders adjudicated in 2017–2019. The honest verdict is a limit: discrimination survives only *inside the always-loser pool* (firm-level ~0.77), where the comparison is between incumbents already known to bid heavily. Scale up to the full universe of items and it collapses toward random (item-level binary 0.565; full-universe ROC ≈ 0.55, precision@500 ≈ 0). The footprint is largely *retrospective among incumbents* — it sorts firms a regulator is already watching, rather than raising a prospective alarm. This boundary is part of the contribution, not a number to soften.

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

**Timing is a limit, not a clean pass.** Firm-level discrimination
survives only inside the always-loser pool — a comparison among
incumbents already known to participate heavily — retaining roughly
80–85% of the pooled AUC under strict timing (0.767 vs 0.924 for FL14;
0.750 vs 0.939 for continuous). But that pool is itself the
exposure-selected set; at full-universe item scale the screen collapses
toward random (item-level binary 0.565; full-universe ROC ≈ 0.55,
operational precision@500 ≈ 0). The item-level continuous holds higher
(0.770) but is leakage-sensitive (see
[AN-014](an-014-leakage-audit-d3.md)). Direct-defendant AUC stays at
0.511 (random) in the temporal holdout, matching the predicted null in
[AN-007](an-007-auc-direct-cade.md).

The honest reading: the rank is largely **retrospective among
incumbents**, sorting firms a regulator is already watching rather than
raising a prospective alarm. Sequential strict-timing deployment — refit
the score each period and act on it ex ante — is **infeasible** at
universe scale. This timing boundary is reported as part of the
reach-and-limits map, not minimized.

## Follow-ups

- Window-length sensitivity (alternative train windows).
- Decomposition by modality
  ([AN-016](an-016-gate-d2.md)).
- Operational precision under temporal holdout
  ([AN-013](an-013-precision-at-k-audit.md)).
