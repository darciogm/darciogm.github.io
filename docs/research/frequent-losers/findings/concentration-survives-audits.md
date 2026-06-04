---
paper: frequent-losers
---

# Cobidder concentration survives exposure, leakage, and timing audits

!!! abstract "Intuition (plain-language)"
    The natural skeptic's reply is "of course cartel-linked firms score high — they bid a lot, and your score just counts bids." The audits stress-test exactly that: strip out raw bidding volume, remove the firms that built the score, and force the score to predict cobidders it has never seen. The concentration weakens but does not vanish (operational performance is roughly half the in-sample best case). What is left after the cheap mechanical explanations are removed is genuine signal, not an artifact of counting.

🟡 The genuine loss-intensity increment from
[the cobidder concentration finding](cobidders-concentrated-in-fl-stratum.md)
survives the audit disciplines of §4.2 of the
[manuscript](../paper.md) — but the surviving signal is **modest, not
triumphant**. Each audit strips a cheap mechanical explanation; what
remains is real but attenuated, and the manuscript reports the
attenuation, not just the in-sample peak.

1. **Opportunity discipline** ([AN-005](../analyses/an-005-sham-fl-permutation.md)).
   Holding bidding volume fixed via opportunity-cell permutation and
   matched-stratum comparison, the within-stratum loss-intensity score
   adds a **genuine +0.042** over the exposure-only benchmark (DeLong
   p ≈ 2.1 × 10⁻⁶). Volume-matching alone does not reproduce the
   concentration — but most of the raw lift *was* opportunity.

2. **Leakage discipline** ([AN-014](../analyses/an-014-leakage-audit-d3.md)).
   Item-level raw AUC of 0.995 attenuates to **0.891 [0.887, 0.894]**
   under out-of-fold CV at firm level, then to **0.864 [0.858, 0.870]**
   under temporal holdout. This staircase is **honest attenuation, not a
   triumph**: the drop of ~0.10–0.13 is the cost of disciplining
   leakage, and the remaining AUC above 0.85 is the audited number we
   stand behind. Direct-defendant AUC stays at ~0.49–0.51 (random) in
   every scenario.

3. **Timing discipline** ([AN-006](../analyses/an-006-strict-prospective-holdout.md),
   [AN-013](../analyses/an-013-precision-at-k-audit.md)). Strict ex
   ante (score formed on 2009–2016 only): firm-level AUC falls to
   **0.767 [0.734, 0.800]** under ex ante training; precision@500 drops
   from in-sample 0.132 to temporal-holdout **0.070** (retention 53%;
   lift 11.5× → 6.1×).

4. **Clustered randomization inference** ([AN-013](../analyses/an-013-precision-at-k-audit.md)).
   Clustering the null at the case level (B = 1,000), the observed
   PR-AUC of 0.126 clears the case-clustered null (p ≈ 0.015) — but the
   margin is **thin**, and case-coverage breadth is not significant
   (p ≈ 0.32). The signal survives clustered inference, narrowly.

The audited (not the in-sample) numbers are what support the
cost-of-evidence architecture of §6.

**Caveat.** Retention is partial and the surviving signal is small. The
manuscript reports both the in-sample and the audited columns and relies
on the audited ones. The reading is 🟡 — informative but single-source —
because the audit chain has specification choices and the BEC panel is
the only labeled environment.

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
- *Macros*: `\valExpIncrement` (+0.042), `\valExpDeLongP` (≈2.1×10⁻⁶),
  `\valAUCitemCV` (0.891), `\valAUCitemTemp` (0.864),
  `\valStrictFLAUC` (0.767), `\valPrecInSFivehu` (0.132),
  `\valPrecTHFivehu` (0.070), `\valOpRetentionFiveHund` (53%),
  `\valClusterRIp` (0.015), `\valClusterRIcovP` (0.32).
- *Validation*: backing scripts `scripts/25_sham_fl_permutation.R`,
  `scripts/27_strict_prospective_holdout.R`,
  `scripts/40_leakage_audit_d3.R`,
  `scripts/43_precision_at_k_audit.R`.
