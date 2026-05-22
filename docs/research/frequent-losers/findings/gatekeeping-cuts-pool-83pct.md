# Award-layer gatekeeping cuts the bid-microdata pool by 83%

!!! info "Pending finding"
    Scaffold for the headline result reported in §6.3 of the
    [manuscript](../paper.md) ("Gatekeeping the Forensic Stage").

🟡 Used as a gatekeeper, the FL14 ranking **cuts the bid-microdata pool
required for the forensic stage by 83%** while still recovering **131 of
193 adjudicated cobidders** (~68%). This is the cost-of-evidence headline
of the paper: the award layer pays for itself by triaging where costly bid
recovery should begin.

The gatekeeping arithmetic is the operational architecture relevant for
agencies that cannot afford to open the bid layer for every firm; the
joint-scoring upper bound from
[AN-010](../analyses/an-010-imhof-full-pipeline.md) is the
full-observability counterfactual that gatekeeping approximates at lower
cost.

**Caveat.** Recovery and pool-reduction numbers are in-sample; the
operational reading uses the **temporal-holdout precision@k** in
[AN-013](../analyses/an-013-precision-at-k-audit.md), which retains roughly
half the in-sample lift (precision@500 = 0.070 vs 0.132 in-sample). The
83% pool cut is robust; the precision claim is calibrated against the
audited column. The reading is 🟡 pending independent replication.

**Sources.**

- *Own analysis*:
  [AN-012](../analyses/an-012-operational-metrics.md) (in-sample
  precision@k),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (temporal holdout
  audit),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit).
- *Cross-refs*: [H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md);
  [docs/results.md](../results.md).
- *Validation*: backing scripts `scripts/42_operational_metrics.R`,
  `scripts/43_precision_at_k_audit.R`,
  `scripts/40_leakage_audit_d3.R`.
