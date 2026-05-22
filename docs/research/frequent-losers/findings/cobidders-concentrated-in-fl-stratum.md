# CADE-adjacent cobidders concentrate in the FL14 stratum

🟢 In São Paulo's BEC procurement platform (2009–2019), always-loser
firms that bid alongside direct CADE defendants in adjudicated cartel
environments concentrate disproportionately inside the **FL14 stratum**
identified by persistent zero-win participation. The award-layer
ranking achieves **AUC = 0.924 [0.921, 0.926]** against the cobidder
target with the binary FL14 indicator, and **AUC = 0.939 [0.932, 0.946]**
with the continuous log(1 + tenders_count) score
([AN-004](../analyses/an-004-cobidder-baseline.md),
[AN-011](../analyses/an-011-horse-race-continuous.md)).

Under the gatekeeping deployment, FL14 recovers **131 of 193 adjudicated
cobidders (68%)** while cutting the bid-microdata pool by **83%** — the
cost-of-evidence headline of §6 of the
[manuscript](../paper.md).

The concentration is the **loser-side adjacency** result that motivates
the sequential architecture: the award layer prioritizes where the
forensic stage should start, without claiming to identify cartelists.

**Caveat.** The cobidder set (193 firms) is defined relative to CADE-
adjudicated cartel environments in 2009–2019; the loser-side scope is
therefore tied to adjudication coverage rather than to a universal
cartel population. The reading is 🟢 because the result survives every
audit ([AN-005](../analyses/an-005-sham-fl-permutation.md),
[AN-006](../analyses/an-006-strict-prospective-holdout.md),
[AN-013](../analyses/an-013-precision-at-k-audit.md),
[AN-014](../analyses/an-014-leakage-audit-d3.md)) and the disconfirming
null against direct defendants
([AN-007](../analyses/an-007-auc-direct-cade.md)) is the predicted
finding. Promotion to a generalizable claim would require independent
replication on a non-BEC procurement panel.

**Sources.**

- *Own analysis*:
  [AN-004](../analyses/an-004-cobidder-baseline.md) (baseline AUC),
  [AN-001](../analyses/an-001-zero-win-rank.md) (rank construction),
  [AN-011](../analyses/an-011-horse-race-continuous.md) (continuous vs
  binary), [AN-012](../analyses/an-012-operational-metrics.md)
  (operational metrics).
- *Cross-refs*:
  [H:cobidder-concentration](../hypotheses/cobidder-concentration.md);
  [docs/results.md](../results.md).
- *Macros*: `\valAUCFLfirm` (0.924), `\valAUClogtc` (0.939),
  `\valCobidders` (193), `\valFL` (2,735), `\valCobidShareFL` (7.1%).
- *Validation*: backing scripts `scripts/02_analysis.R`,
  `scripts/12_build_item_value.R`, `scripts/33_auc_direct_cade.R`,
  `scripts/34_horse_race_fl_continuous.R`.
