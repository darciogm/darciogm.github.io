---
paper: frequent-losers
---

# Sequential gatekeeping traces a cost-recall frontier

!!! abstract "Intuition (plain-language)"
    Forensic bid analysis is costly, so you cannot run it on every firm. Route it instead through the top of the cheap loser-side ranking: you decide how big a survivor pool to forward to the expensive stage, and each choice buys you a level of recall. There is no single magic cutoff — there is a *frontier*. And "how much you save" depends on how you count cost: by *firms*, a pool of 2,000 looks like an 88% cut; but those survivors are heavy bidders, so by *bid rows* — the data you actually have to recover — the saving is only about 33%. The screen's value is the shape of the frontier, not a headline percentage.

🟡 Used as a sequential gatekeeper, the award-layer ranking traces a
**cost-recall frontier**: each survivor-pool size forwarded to the
costly bid stage buys a level of recall against the adjudication-anchored
cobidders. There is **no universal "83% cut"** — there is a frontier,
and one informative **operating point** on it.

**The honest cost depends on what you count.** At the operating point
K₁ = 2,000 survivors:

- By **firms opened**, the pool falls **~88%** (`\valCostFirmRedTwoK`).
- By **bid rows to recover** — the data an agency actually pays for —
  the saving is only **~33%** (`\valCostBidRowRedTwoK`), because the
  survivors are high-participation firms that carry most of the bid
  volume. The firm count overstates the burden saving.

**Recall at that point.** The sequential award→bid rule recovers
**~0.67** of cobidders at K₁ = 2,000 forwarding the top k = 1,000
([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md),
[AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)) —
versus a random survivor pool of the same size that recovers ~0.10, so
the screen **beats random by roughly 3–12×** across the frontier. It
does not beat the
[full-observability upper bound](full-observability-upper-bound.md)
(joint recall ~0.78 at k = 1,000) — by construction it approximates that
ceiling at lower informational cost.

The **frontier — not a single optimal cutoff — is the design object**.
An agency picks the operating point that fits its forensic budget; the
paper supplies the trade-off curve, not a prescription.

**Caveat.** Pool-reduction numbers are full-obs evaluation figures;
the precision/recall that an agency would experience prospectively is
lower (see the
[audit page](concentration-survives-audits.md): temporal-holdout
precision@500 retains ~53% of the in-sample lift). The bid-row counting
correction is the substantive honesty here: do **not** quote the
88% firm figure as the burden saving. The reading is 🟡 pending
independent replication on a non-BEC procurement panel.

**Sources.**

- *Own analysis*:
  [AN-012](../analyses/an-012-operational-metrics.md) (in-sample
  precision@k),
  [AN-013](../analyses/an-013-precision-at-k-audit.md) (temporal-
  holdout audit),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit
  — defensible verdict),
  [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)
  (sequential envelope — 74% joint recall at 17% microdata),
  [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md)
  (full architecture × k × regime matrix — sequential K=2,000 beats
  joint in temporal holdout),
  [AN-036](../analyses/an-036-cv-precision-stability.md) (K-fold CV
  precision SD ≤ 0.011).
- *Cross-refs*:
  [H:gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md);
  [docs/results.md](../results.md).
- *Macros*: `\valCostFirmRedTwoK` (88% firm reduction at K₁=2,000),
  `\valCostBidRowRedTwoK` (33% bid-row reduction — the honest burden
  figure), `\valCostRecallSeqTwoKkOneK` (0.67 sequential recall),
  `\valCostRecallJointkOneK` (0.78 full-obs ceiling),
  `\valCostRandomRecallTwoK` (0.10 random baseline; 3–12× lift),
  `\valCostPoolN` (16,772), `\valCostNpos` (190 positives),
  `\valFL` (2,735), `\valCobidders` (193).
- *Validation*: backing scripts `scripts/42_operational_metrics.R`,
  `scripts/43_precision_at_k_audit.R`,
  `scripts/40_leakage_audit_d3.R`.
