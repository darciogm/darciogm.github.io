# Cobidder concentration survives exposure, leakage, and timing audits

!!! info "Pending finding"
    Scaffold for a result reported in §4.2 of the
    [manuscript](../paper.md) and the
    [Validation Audits appendix](../paper.md).

🟡 The cobidder concentration result from
[Cobidders concentrate in the FL14 stratum](cobidders-concentrated-in-fl-stratum.md)
survives the three audit disciplines introduced in §4.2 of the manuscript:

1. **Exposure discipline.** Participation-volume placebos (sham FL
   permutation) and same-(product × buyer × year × modality) opportunity-set
   audits do not collapse the concentration to baseline.
2. **Leakage discipline.** Out-of-fold and temporal-holdout retraining
   reduces AUC from raw item-level ~0.99 to ~0.86–0.89 but preserves the
   operational claim.
3. **Timing discipline.** Scores formed strictly before the target window
   retain discrimination, though precision@k drops to ~half of the
   in-sample level.

The audit-survived result is what supports the operational architecture in
§6.

**Caveat.** Audit retention is partial: precision@k under temporal holdout
is ~50% lower than in-sample, and the AUC against direct defendants stays
at ~0.50 in every scenario (which is the predicted finding, not a
failure). The reading is 🟡 because the audit chain is long and each link
introduces residual specification choice; transparency on the
audit-attenuation magnitudes is the JLEO-disciplined way to report this.

**Sources.**

- *Own analysis*:
  [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL placebo),
  [AN-006](../analyses/an-006-strict-prospective-holdout.md) (timing
  discipline),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k
  temporal holdout),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3).
- *Cross-refs*: [H:exposure-discipline](../hypotheses/exposure-discipline.md);
  [H:timing-discipline](../hypotheses/timing-discipline.md);
  [docs/robustness.md](../robustness.md).
- *Validation*: backing scripts `scripts/25_sham_fl_permutation.R`,
  `scripts/27_strict_prospective_holdout.R`,
  `scripts/40_leakage_audit_d3.R`,
  `scripts/43_precision_at_k_audit.R`.
