---
paper: frequent-losers
---

# Raw ranking concentrates adjudication-anchored cobidders — but the lift is opportunity

<!-- REVISED: canonical-target reframe 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    A bid-rigging ring needs losers: someone has to submit losing bids so the auction looks competitive while the pre-chosen firm wins. Those firms leave a footprint — they show up over and over and never win. So when we rank firms purely by how persistently they lose, the firms that bid next to convicted cartelists rise toward the top. But almost all of that lift is simply *opportunity*: firms that bid a lot have more chances to sit next to anyone. Once you hold opportunity fixed and ask whether *losing intensity* adds anything beyond raw exposure, essentially nothing survives — the within-comparison ordering is at chance. The honest finding is that the raw concentration is generic co-participation arithmetic, not a residual cartel signal.

🟡 In São Paulo's BEC procurement platform (2009–2019), the
frequent-loser ranking concentrates **adjudication-anchored cobidders**
inside the always-loser stratum. The canonical validation label is the
**651 always-loser cobidders** — unique always-loser firms that share at
least one BEC tender-item with a BEC-active direct CADE defendant; direct
defendants are excluded and the frequent-loser flag is **never used to
construct the label** (composition: 341 FL14 / 310 non-FL). "Cobidder"
denotes adjudication-anchored exposure, never membership. The raw ranking
separates them (ROC 0.761, lift@500 ≈ 5.6×), but that separation is
almost entirely *opportunity*.

**The decomposition is the finding.** An exposure-only benchmark — a
model that knows nothing but how often and where a firm could bid —
already reaches **ROC ≈ 0.90** unconditionally and **0.713** on the
exposed subset against the cobidder target
([AN-004](../analyses/an-004-cobidder-baseline.md)). Once we condition on
opportunity (a within-stratum comparison that holds participation fixed),
the loss-intensity score retains only **ROC = 0.471 — indistinguishable
from chance** (FL14 within-stratum 0.507), and the nested increment of
the score over exposure alone is **+0.010** (DeLong p = 0.013;
[AN-011](../analyses/an-011-horse-race-continuous.md)). That marginal
positive does not survive the permutation designs: matched-stratum label
permutation gives p = 0.127 (ns), and FL-enrichment within matched strata
gives p = 0.067 (ns). **There is no robust residual signal net of
opportunity.**

FL14 *enrichment* is descriptive and real at the unconditional level —
P(cobidder | FL14) = 12.5% vs 2.2% for non-FL always-losers (≈5.7×) — but
this enrichment is generic co-participation arithmetic and is **not
significant within matched opportunity strata** (p = 0.067). The
concentration is what motivates the sequential architecture: the cheap
award layer **concentrates forensic priority** for where to start the
costly bid-recovery stage — it does not identify cartelists.

**Caveat.** The cobidder set (651 firms) is defined relative to
CADE-adjudicated cartel environments in 2009–2019; the scope is tied to
adjudication coverage rather than to a universal cartel population. The
reading is 🟡 because the within-stratum residual is at chance, the
permutation and enrichment tests are non-significant, and the result is
single-source on BEC. Negative controls corroborate the opportunity
account (real ≈ placebo, p = 0.46; high-volume-winner null *above* real,
p = 0.91;
[AN-005](../analyses/an-005-sham-fl-permutation.md),
[AN-006](../analyses/an-006-strict-prospective-holdout.md),
[AN-013](../analyses/an-013-precision-at-k-audit.md),
[AN-014](../analyses/an-014-leakage-audit-d3.md)). The null against direct
defendants ([AN-007](../analyses/an-007-auc-direct-cade.md)) is the
predicted scope boundary.

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
- *Macros*: `\valExpOnlyAUC` (0.713 exposed / 0.9045 unconditional
  exposure-only benchmark), `\valExpWithinAUC` (0.471 within-stratum,
  ≈chance), `\valExpIncrement` (+0.010 nested increment, p = 0.013),
  `\valMainCobidders` (651), `\valMainCobFL` (341), `\valMainCobNonFL`
  (310), `\valFL` (2,735).
- *Validation*: backing scripts `scripts/02_analysis.R`,
  `scripts/12_build_item_value.R`, `scripts/33_auc_direct_cade.R`,
  `scripts/34_horse_race_fl_continuous.R`.
