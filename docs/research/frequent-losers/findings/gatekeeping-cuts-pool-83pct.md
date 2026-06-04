---
paper: frequent-losers
---

# Sequential gatekeeping traces a cost-recall frontier

<!-- REVISED: canonical-target reframe 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    Forensic bid analysis is costly, so you cannot run it on every firm. Route it instead through the top of the cheap loser-side ranking: you decide how big a survivor pool to forward to the expensive stage, and each choice buys you a level of recall. There is no single magic cutoff and no optimal K — there is a *frontier*. And "how much you save" depends on what you count: by *firms*, a pool of 2,000 looks like an 88% cut; but those survivors are heavy bidders, so by *bid rows* — the data you actually have to recover — the saving is only about 33%. A smaller pool (K₁ = 1,000) even beats K₁ = 2,000 at the same k here. This is a retrospective recovery-footprint design, not measured agency budget savings.

🟡 Used as a sequential gatekeeper on the validated incumbent ranking,
the award-layer ranking traces a **cost-recall frontier**: each
survivor-pool size forwarded to the costly bid stage buys a level of
recall against the 651 adjudication-anchored cobidders. There is **no
universal cut and no optimal K** — only a frontier of operating points.

**The honest cost depends on what you count, with explicit denominators.**
On pool A (16,731 firms, 651 positives) at the operating point
K₁ = 2,000 survivors (sequential, evaluated at k = 500):

- By **firms opened** (denominator 16,731 firms), the pool falls
  **~88.1%** (`\valCostFirmRedTwoK`).
- By **bid rows to recover** — the data an agency actually pays for —
  the saving is only **~32.7%** (`\valCostBidRowRedTwoK`), because the
  survivors are high-participation firms that carry most of the bid
  volume. The firm count overstates the burden saving.

**No optimal K.** A *smaller* pool, K₁ = 1,000, recovers more true
positives at k = 500 (124 TP, prec 0.248) than K₁ = 2,000 (116 TP,
prec 0.232) — one more reason no operating point is "optimal"
([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md),
[AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)).
Sequential at K₁ = 1,000 recovers 124 of the joint upper bound's 133
true positives at k = 500 (≈93%) at far lower informational cost.

The **frontier — not a single optimal cutoff — is the design object**.
An agency picks an operating point that fits its forensic budget; the
paper supplies the trade-off curve, not a prescription.

**Caveat.** Because strict timing for the bid rerank is not available
with the current LANCES features, the frontier should be read as a
**retrospective cost-footprint design** conditional on the validated
incumbent ranking, not a fully prospective deployment test. These are
recovery-footprint reductions with stated denominators, **not measured
agency budget savings**; do **not** quote the 88% firm figure as the
burden saving. The reading is 🟡 pending independent replication on a
non-BEC procurement panel.

**Sources.**

- *Own analysis*:
  [AN-012](../analyses/an-012-operational-metrics.md) (in-sample
  precision@k),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (temporal-
  holdout audit),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit
  — defensible verdict),
  [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)
  (sequential envelope — no optimal K; K₁=1,000 beats K₁=2,000 at k=500),
  [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)
  (full architecture × k × regime matrix — recovery-footprint accounting),
  [AN-036](../analyses/an-036-cv-precision-stability.md) (K-fold CV
  precision SD ≤ 0.011).
- *Cross-refs*:
  [H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md);
  [docs/results.md](../results.md).
- *Macros*: `\valCostFirmRedTwoK` (88.1% firm reduction at K₁=2,000,
  denominator 16,731 firms), `\valCostBidRowRedTwoK` (32.7% bid-row
  reduction — the honest burden figure),
  `\valCostTPSeqOneK` (124 TP at K₁=1,000), `\valCostTPSeqTwoK` (116 TP
  at K₁=2,000), `\valCostTPJoint` (133 joint upper-bound TP),
  `\valCostPoolN` (16,731), `\valMainCobidders` (651), `\valFL` (2,735).
- *Validation*: backing scripts `scripts/42_operational_metrics.R`,
  `scripts/43_precision_at_k_audit.R`,
  `scripts/40_leakage_audit_d3.R`.
