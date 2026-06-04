---
paper: frequent-losers
---

# Joint award + bid scoring is the full-observability upper bound — conditional and case-fragile

<!-- REVISED: canonical-target reframe 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    Suppose a regulator had everything — every bid, fully recorded — and ran the classic bid-distribution screens too. Would the cheap loser-side signal still add anything? Sometimes. Under a random cross-validation split the combined model does best, but the two layers perform comparably (award ≈ bid), and once folds are grouped by case the combined model falls *below* award-only on precision–recall. So the loser-side signal is not a budget substitute for bid microdata, and the complementarity is conditional and case-fragile — not a dominance result. This combined model is a best-case ceiling that assumes data a regulator usually does not have.

🟡 On the 651-cobidder target, a transparent bid-moment random-forest
benchmark inspired by Imhof–Wallimann-style screens and the award-layer
score perform **comparably on the pooled diagnostic**, and combining them
only conditionally helps
([AN-010](../analyses/an-010-imhof-full-pipeline.md)). On the same-sample
gatekeeping pool, the bid random forest reaches ROC 0.665, the award
FL-only screen 0.665, and the combined model 0.727 — comparable, not a
clean ceiling above both.

On the retained pool A (16,731 firms, 651 positives), the two layers are
**comparable and the combination is fragile**:

- **Award continuous (fixed score)**: ROC 0.760 / PR 0.143.
- **Award FL14**: ROC 0.688 / PR 0.098.
- **Bid random forest (Imhof moments)**: ROC 0.717 / PR 0.116 under
  random CV, falling to **0.626 / 0.062 under case-grouped folds**.
- **Combined RF**: ROC 0.756 / PR 0.188 under random CV, but
  **0.689 / 0.103 under case-grouped folds — below award-only's 0.143
  PR**.

So the combined model beats award on PR under random CV (+0.045) but
**falls below award-only under case-grouped folds**. The "full
observability" reading is a best-case ceiling, not a guarantee: the
sequential award-then-bid rule approximates it only at lower
informational cost, and the complementarity is **conditional on this
implemented benchmark and case-fragile** (Spearman award–bid 0.544).

**Caveat.** The result is sample-specific (BEC 2009–2019,
CADE-adjudicated cobidder labels, pool of 16,731 firms with both award
and bid features available) and the increment depends on the bid-moment
feature set chosen as benchmark; the paper uses a transparent bid-moment
random forest inspired by
\citep{imhof2018screening,imhof2019detecting,wallimann2023machine}.
The reading is 🟡 because the comparison is restricted to the available
adjudication target and the combined gain does not survive case-grouped
folds.

**Sources.**

- *Own analysis*:
  [AN-010](../analyses/an-010-imhof-full-pipeline.md) (Imhof
  benchmark + joint),
  [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race
  continuous),
  [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized same-sample),
  [AN-033](../analyses/an-033-imhof-incremental-delong.md) (incremental
  decomposition — complementarity conditional on the implemented
  benchmark),
  [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)
  (sequential envelope demonstrates complementarity at operational
  level — case-fragile).
- *Cross-refs*:
  [H:award-bid-complementarity](../hypotheses/award-bid-complementarity.md);
  [docs/results.md](../results.md).
- *Macros*: `\valImhofFull` (0.717 random / 0.626 case-grouped),
  `\valImhofFLBin` (0.688), `\valImhofComboCont` (0.756 random / 0.689
  case-grouped), `\valAwardCont` (0.760), `\valImhofPoolN` (16,731),
  `\valMainCobidders` (651).
- *Validation*: backing scripts `scripts/31_imhof_full_pipeline.R`,
  `scripts/49_imhof_incremental_value.R`,
  `scripts/34_horse_race_fl_continuous.R`,
  `scripts/36_gate_d1_harmonized.R`.
