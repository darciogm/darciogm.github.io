---
paper: frequent-losers
---

# Exposure explains the ranking — no robust residual survives the audits

<!-- REVISED: canonical-target reframe 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    The natural skeptic's reply is "of course cartel-linked firms score high — they bid a lot, and your score just counts bids." The audits stress-test exactly that: strip out raw bidding volume, hold opportunity fixed, and ask the permutations whether anything is left. The answer under the reproducible non-circular label is: essentially nothing. Within a fixed opportunity stratum the ranking is at chance, and the marginal nested increment fails the permutation tests. The honest reading is that exposure — generic co-participation arithmetic — explains the concentration, not a residual loss-intensity signal.

🟡 Under the reproducible non-circular label (651 always-loser
cobidders), the audit disciplines of §4.2 of the
[manuscript](../paper.md) **deflate** the residual signal from
[the cobidder concentration finding](cobidders-concentrated-in-fl-stratum.md)
to nothing robust. Each audit strips a cheap mechanical explanation; once
opportunity is held fixed, **no robust residual ordering survives net of
opportunity** — the within-stratum AUC is at chance, the matched
permutation is non-significant, and the FL-enrichment is non-significant.

1. **Opportunity discipline** ([AN-005](../analyses/an-005-sham-fl-permutation.md)).
   Holding participation fixed via opportunity-cell permutation and
   matched-stratum comparison, the within-stratum loss-intensity score is
   at **chance (ROC 0.471; FL14 0.507)**. The nested increment over the
   exposure-only benchmark is **+0.010 (DeLong p = 0.013)** — marginal at
   best, and **not robust across designs**: matched-stratum label
   permutation gives p = 0.127 (ns) and FL-enrichment within matched
   strata gives p = 0.067 (ns). Negative controls corroborate the
   opportunity account: a real-vs-placebo comparison is statistically
   indistinguishable (p = 0.46), and a high-volume-winner null sits
   *above* the real signal (p = 0.91). Most of the raw lift *is*
   opportunity, and what is left does not survive permutation.

2. **Leakage discipline** ([AN-014](../analyses/an-014-leakage-audit-d3.md)).
   The in-sample item-level numbers attenuate sharply under out-of-fold
   CV at firm level and then under temporal holdout. The attenuation is
   **honest, not a triumph**: under the broad label the disciplined
   numbers leave no robust residual ordering. Direct-defendant AUC stays
   near random (0.49–0.51) in every scenario.

3. **Timing discipline** ([AN-006](../analyses/an-006-strict-prospective-holdout.md),
   [AN-013](../analyses/an-013-precision-at-k-audit.md)). Strict ex ante
   ranking (score formed on 2009–2016 only) **fails on the full universe**
   (ROC 0.474, below chance; precision@500 = recall@500 = 0). A residue
   survives only inside the training always-loser pool (continuous ROC
   0.684; FL14 binary 0.646), i.e., among incumbents the labels
   retrospectively anchor — not as a prospective screen.

4. **Clustered randomization inference** ([AN-013](../analyses/an-013-precision-at-k-audit.md)).
   Clustering the null at the item-group × year level (B = 1,000), the
   ROC, PR, and prec@500 p-values are ≈ 0.001 but **case-coverage breadth
   is not significant (p = 0.103)** — the concentration is real but not
   broad-based across cases.

The audited (not the in-sample) numbers are what the cost-of-evidence
architecture of §6 must rely on, and they do not support a residual
loss-intensity claim.

**Caveat.** The surviving residual is at chance and the permutations are
non-significant. The reading is 🟡 — single-source on BEC — and the
deflationary decomposition itself is the contribution, not a screen that
works.

**Sources.**

- *Own analysis*:
  [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL
  placebo, formal p < 1/2,000 / 32 σ above null),
  [AN-006](../analyses/an-006-strict-prospective-holdout.md) (timing
  discipline),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k
  temporal holdout),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3),
  [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)
  (universe scope matrix),
  [AN-028](../analyses/an-028-exposure-stratum-balance.md) (within-FL
  standardized-diff battery, 7 dimensions),
  [AN-029](../analyses/an-029-three-classifier-timing-battery.md)
  (three-classifier × cobid_post2019 truly-OOT target),
  [AN-030](../analyses/an-030-market-persistence.md) (8.7% firm
  persistence — temporal holdout is fresh population).
- *Cross-refs*:
  [H:exposure-discipline](../hypotheses/exposure-discipline.md);
  [H:timing-discipline](../hypotheses/timing-discipline.md);
  [docs/robustness.md](../robustness.md).
- *Macros*: `\valExpWithinAUC` (0.471, ≈chance), `\valExpIncrement`
  (+0.010), `\valExpDeLongP` (0.013), `\valStrictUnivAUC` (0.474),
  `\valStrictPoolAUC` (0.684), `\valClusterRIcovP` (0.103),
  `\valMainCobidders` (651).
- *Validation*: backing scripts `scripts/25_sham_fl_permutation.R`,
  `scripts/27_strict_prospective_holdout.R`,
  `scripts/40_leakage_audit_d3.R`,
  `scripts/43_precision_at_k_audit.R`.
