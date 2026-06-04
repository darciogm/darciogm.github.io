---
paper: frequent-losers
---

# CADE-adjacent cobidders concentrate in the FL14 stratum

!!! abstract "Intuition (plain-language)"
    A bid-rigging ring needs losers: someone has to submit losing bids on purpose so the auction looks competitive while the pre-chosen firm wins. Those firms leave a footprint — they show up over and over and never win. So when we rank firms purely by how persistently they lose, the firms that bid next to convicted cartelists rise to the top. But most of that lift is simply *opportunity*: firms that bid a lot have more chances to sit next to anyone. Once you hold opportunity fixed and ask whether *losing intensity* adds anything beyond raw exposure, the genuine signal is small — real, but small. The honest finding is the increment, not the raw concentration.

🟡 In São Paulo's BEC procurement platform (2009–2019), the
frequent-loser ranking concentrates **adjudication-anchored cobidders**
inside the always-loser stratum. These 193 cobidders are firms that bid
alongside direct CADE defendants in adjudicated cartel environments —
they are **exposure-anchored, not certified cartel members**. The raw
ranking separates them strongly, but the raw number is mostly an
artifact of *opportunity*.

**The decomposition is the finding.** An exposure-only benchmark — a
score that knows nothing but how often a firm bids — already reaches
**AUC = 0.946** against the cobidder target
([AN-004](../analyses/an-004-cobidder-baseline.md)). Once we condition on
that opportunity (a within-stratum comparison that holds bidding volume
fixed), the loss-intensity score retains **AUC = 0.7715**, and the
**genuine increment of losing intensity beyond raw exposure is only
+0.042** (DeLong p ≈ 2.1 × 10⁻⁶;
[AN-011](../analyses/an-011-horse-race-continuous.md)). The signal is
**statistically real but modest**: most of the apparent concentration is
opportunity, and a thin sliver is loss-intensity content.

The concentration is what motivates the sequential architecture: the
cheap award layer **orders forensic priority** for where to start the
costly bid-recovery stage — it does not identify cartelists.

**Caveat.** The cobidder set (193 firms) is defined relative to CADE-
adjudicated cartel environments in 2009–2019; the scope is therefore
tied to adjudication coverage rather than to a universal cartel
population, and "cobidder" denotes adjudication-anchored exposure, never
membership. The reading is 🟡 because the genuine increment is small,
the audits attenuate it further
([AN-005](../analyses/an-005-sham-fl-permutation.md),
[AN-006](../analyses/an-006-strict-prospective-holdout.md),
[AN-013](../analyses/an-013-precision-at-k-audit.md),
[AN-014](../analyses/an-014-leakage-audit-d3.md)), and the result is
single-source on BEC. The disconfirming null against direct defendants
([AN-007](../analyses/an-007-auc-direct-cade.md)) is the predicted scope
boundary. Promotion to a generalizable claim would require independent
replication on a non-BEC procurement panel.

**Sources.**

- *Own analysis*:
  [AN-004](../analyses/an-004-cobidder-baseline.md) (baseline AUC),
  [AN-001](../analyses/an-001-zero-win-rank.md) (rank construction),
  [AN-011](../analyses/an-011-horse-race-continuous.md) (continuous vs
  binary), [AN-012](../analyses/an-012-operational-metrics.md)
  (operational metrics),
  [AN-025](../analyses/an-025-cutoff-sweep-robustness.md) (cutoff
  sweep, 19-threshold inverted-U),
  [AN-026](../analyses/an-026-subsample-robustness.md) (subsample
  AUC band 0.89-0.96),
  [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)
  (universe × class scope matrix),
  [AN-029](../analyses/an-029-three-classifier-timing-battery.md)
  (three-classifier × out-of-time targets).
- *Cross-refs*:
  [H:cobidder-concentration](../hypotheses/cobidder-concentration.md);
  [docs/results.md](../results.md).
- *Macros*: `\valExpOnlyAUC` (0.946 exposure-only benchmark),
  `\valExpWithinAUC` (0.7715 within-stratum), `\valExpIncrement` (+0.042
  genuine increment), `\valExpDeLongP` (≈2.1×10⁻⁶),
  `\valCobidders` (193), `\valFL` (2,735).
- *Validation*: backing scripts `scripts/02_analysis.R`,
  `scripts/12_build_item_value.R`, `scripts/33_auc_direct_cade.R`,
  `scripts/34_horse_race_fl_continuous.R`.
