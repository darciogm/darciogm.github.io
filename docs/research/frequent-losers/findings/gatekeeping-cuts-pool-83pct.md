# Award-layer gatekeeping cuts the bid-microdata pool by 83%

🟡 Used as a gatekeeper, the FL14 ranking **cuts the bid-microdata pool
required for the forensic stage by 83%** while still recovering **131
of 193 adjudicated cobidders (68%)**. This is the cost-of-evidence
headline of the paper: the award layer pays for itself by triaging
where costly bid recovery should begin.

The in-sample operational metrics: precision@500 = 0.132 (lift 11.5×),
precision@1000 = 0.097 (lift 8.5×), recall@1000 = 50%
([AN-012](../analyses/an-012-operational-metrics.md)).

Under temporal-holdout discipline (the operationally honest column):
precision@500 = **0.070** (lift 6.1×, retention 53%), precision@1000 =
**0.066** (retention 68%); recall@500 = 18%, recall@1000 = 34%
([AN-013](../analyses/an-013-precision-at-k-audit.md)).

The gatekeeping arithmetic is the operational architecture relevant
for agencies that cannot afford to open the bid layer for every firm.
The joint-scoring upper bound from
[AN-010](../analyses/an-010-imhof-full-pipeline.md) (AUC 0.955) is the
full-observability counterfactual that gatekeeping approximates at
lower cost.

**Caveat.** Recovery and pool-reduction numbers are in-sample; the
operational reading uses the **temporal-holdout precision@k**
([AN-013](../analyses/an-013-precision-at-k-audit.md)), which retains
roughly half the in-sample lift. The 83% pool cut is robust (it is a
property of the ranking + cutoff, not of the evaluation regime); the
precision claim is calibrated against the audited column.

The reading is 🟡 pending independent replication on a non-BEC
procurement panel.

**Sources.**

- *Own analysis*:
  [AN-012](../analyses/an-012-operational-metrics.md) (in-sample
  precision@k),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (temporal-
  holdout audit),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit
  — defensible verdict).
- *Cross-refs*:
  [H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md);
  [docs/results.md](../results.md).
- *Macros*: `\valFL` (2,735 firms above cutoff), `\valCobidders` (193),
  `\valPrecInSFivehu` (0.132 in-sample), `\valPrecTHFivehu` (0.070
  temporal), `\valLiftTHFivehu` (6.1×), `\valOpRetentionFiveHund`
  (53%), `\valOpFlaggedFiveHund` (35 cobidders flagged in top-500
  temporal holdout).
- *Validation*: backing scripts `scripts/42_operational_metrics.R`,
  `scripts/43_precision_at_k_audit.R`,
  `scripts/40_leakage_audit_d3.R`.
