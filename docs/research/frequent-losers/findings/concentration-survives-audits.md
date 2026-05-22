# Cobidder concentration survives exposure, leakage, and timing audits

🟡 The cobidder concentration result from
[CADE-adjacent cobidders concentrate in the FL14 stratum](cobidders-concentrated-in-fl-stratum.md)
survives the three audit disciplines introduced in §4.2 of the
[manuscript](../paper.md) — though the operational deployment metrics
are roughly half the in-sample upper bound.

1. **Exposure discipline** ([AN-005](../analyses/an-005-sham-fl-permutation.md)).
   Participation-volume placebos (sham FL permutation) put the
   permutation AUC at 0.713–0.783 — substantially below the observed
   0.924. Volume-matching alone does not reproduce the concentration.

2. **Leakage discipline** ([AN-014](../analyses/an-014-leakage-audit-d3.md)).
   Item-level raw AUC of 0.995 drops to **0.891 [0.887, 0.894]** under
   out-of-fold CV at firm level, then to **0.864 [0.858, 0.870]** under
   temporal holdout. Drop ~0.10–0.13 under audit; remaining AUC above
   0.85 sustains the operational claim. Direct-defendant AUC stays at
   ~0.51 (random) in every scenario.

3. **Timing discipline** ([AN-006](../analyses/an-006-strict-prospective-holdout.md),
   [AN-013](../analyses/an-013-precision-at-k-audit.md)). Strict ex
   ante (score formed on 2009–2016 only): firm-level AUC drops from
   0.924 (FL14 in-sample) to **0.767 [0.734, 0.800]** under ex ante
   training. Precision@500 drops from in-sample 0.132 to temporal-
   holdout **0.070** (retention 53%; lift 11.5× → 6.1×).

The audit-survived numbers are what support the operational architecture
of §6.

**Caveat.** Audit retention is partial. The 53% precision retention is
honest; the AUC stays above 0.85, the precision drops by half. The
manuscript reports both columns. The reading is 🟡 — informative but
single-source — because the audit chain has multiple specification
choices and the BEC panel is the only labeled environment.

**Sources.**

- *Own analysis*:
  [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL placebo),
  [AN-006](../analyses/an-006-strict-prospective-holdout.md) (timing
  discipline),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k
  temporal holdout),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3).
- *Cross-refs*:
  [H:exposure-discipline](../hypotheses/exposure-discipline.md);
  [H:timing-discipline](../hypotheses/timing-discipline.md);
  [docs/robustness.md](../robustness.md).
- *Macros*: `\valAUCitemCV` (0.891), `\valAUCitemTemp` (0.864),
  `\valAUCStrictFirmFL` (0.767), `\valPrecInSFivehu` (0.132),
  `\valPrecTHFivehu` (0.070), `\valOpRetentionFiveHund` (53%),
  `\valLeakTautLow`–`\valLeakTautHigh` (0.10–0.13 attenuation).
- *Validation*: backing scripts `scripts/25_sham_fl_permutation.R`,
  `scripts/27_strict_prospective_holdout.R`,
  `scripts/40_leakage_audit_d3.R`,
  `scripts/43_precision_at_k_audit.R`.
