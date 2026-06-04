---
paper: frequent-losers
---

# Joint award + bid scoring is the full-observability upper bound

!!! abstract "Intuition (plain-language)"
    Suppose a regulator had everything — every bid, fully recorded — and ran the classic bid-distribution screens too. Would the cheap loser-side signal still matter? Yes: combining both does best (AUC ≈ 0.96), and the gain over either one alone shows the two are measuring *different things*. The loser-side signal is not a budget substitute for bid microdata; it carries information the bid screens miss. This combined model is the best-case ceiling — a useful benchmark, but it assumes data a regulator usually does not have.

🟡 On the cobidder target, a classifier that uses **both** the award-
layer score (FL14 or continuous log_tc) and the Imhof-style bid-
distribution features achieves the highest AUC: **0.955 [0.943, 0.967]**
with FL14 + Imhof, and **0.962 [0.954, 0.969]** with continuous + Imhof
([AN-010](../analyses/an-010-imhof-full-pipeline.md)). This 0.962 is the
**full-observability upper bound** — it is achievable only by *recovering
the bid layer for every firm*, the very cost the cheap award-layer screen
exists to avoid.

The two layers are **complementary** — a division of labor, not
substitutes:

- **Imhof seven-feature pipeline alone**: AUC 0.888 [0.865, 0.911].
- **FL14 binary alone**: AUC 0.921 [0.914, 0.928].
- **Continuous log_tc alone**: AUC 0.884 [0.860, 0.908].
- **Joint**: AUC 0.955–0.962 — gain of ~0.05–0.07 over each layer
  individually.

The joint score is the *ceiling*: what an agency could achieve if it had
already opened the bid layer for every firm. It is the right benchmark
for the cost-recall comparison in
[the sequential gatekeeping frontier](gatekeeping-cuts-pool-83pct.md):
"how much recall do we give up by triaging *before* paying to recover
bid data?" By construction, **the sequential award-then-bid rule never
beats this bound** — it approximates it at lower informational cost.

Note also that the **Imhof CV-only** specification (the pure
bid-distribution moments) achieves AUC = 0.585 [0.553, 0.616] — close
to chance. The Imhof pipeline reaches 0.888 only because it includes
participation features that are correlated with FL. The award-layer
signal is therefore not redundant; it is necessary for the bid-
distribution pipeline to reach its headline AUC in the first place.

**Caveat.** The complementarity result is sample-specific (BEC 2009–
2019, CADE-adjudicated cobidder labels, pool of 16,779 firms with both
award and bid features available). The increment over the bid-only
score depends on the Imhof feature set chosen as benchmark; the paper
uses the seven-feature canonical pipeline
\citep{imhof2018screening,imhof2019detecting,wallimann2023machine}.
The reading is 🟡 because the upper-bound claim is restricted to the
available adjudication target.

**Sources.**

- *Own analysis*:
  [AN-010](../analyses/an-010-imhof-full-pipeline.md) (Imhof
  benchmark + joint),
  [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race
  continuous),
  [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized same-sample),
  [AN-033](../analyses/an-033-imhof-incremental-delong.md) (formal
  DeLong incremental: Imhof + FL Δ = +0.096, p = 1.2 × 10⁻²⁶; FL
  marginal beyond TC = +0.003),
  [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)
  (sequential envelope demonstrates complementarity at operational
  level).
- *Cross-refs*:
  [H:award-bid-complementarity](../hypotheses/award-bid-complementarity.md);
  [docs/results.md](../results.md).
- *Macros*: `\valImhofFull` (0.888), `\valImhofFLBin` (0.921),
  `\valImhofComboBin` (0.955), `\valImhofComboCont` (0.962),
  `\valAUCImhofCV` (0.585), `\valImhofPoolN` (16,779).
- *Validation*: backing scripts `scripts/31_imhof_full_pipeline.R`,
  `scripts/49_imhof_incremental_value.R`,
  `scripts/34_horse_race_fl_continuous.R`,
  `scripts/36_gate_d1_harmonized.R`.
