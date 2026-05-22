---
paper: frequent-losers
---

# Joint award + bid scoring is the full-observability upper bound

🟡 On the cobidder target, a classifier that uses **both** the award-
layer score (FL14 or continuous log_tc) and the Imhof-style bid-
distribution features achieves the highest AUC: **0.955 [0.943, 0.967]**
with FL14 + Imhof, and **0.962 [0.954, 0.969]** with continuous + Imhof
([AN-010](../analyses/an-010-imhof-full-pipeline.md)).

The two layers are **complementary**, not substitutes:

- **Imhof seven-feature pipeline alone**: AUC 0.888 [0.865, 0.911].
- **FL14 binary alone**: AUC 0.903 [0.884, 0.923].
- **Continuous log_tc alone**: AUC 0.884 [0.860, 0.908].
- **Joint**: AUC 0.955–0.962 — gain of ~0.05–0.07 over each layer
  individually.

The joint score is the *full-observability upper bound*: what an
agency could achieve if it had already opened the bid layer for every
firm. It is the right benchmark for the gatekeeping comparison in
[Award-layer gatekeeping cuts the bid-microdata pool by 83%](gatekeeping-cuts-pool-83pct.md):
"how much do we give up by triaging before recovering bid data?"

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
- *Macros*: `\valAUCImhofFull` (0.888), `\valImhofFLBin` (0.903),
  `\valImhofComboBin` (0.955), `\valImhofComboCont` (0.962),
  `\valAUCImhofCV` (0.585), `\valImhofPoolN` (16,779).
- *Validation*: backing scripts `scripts/31_imhof_full_pipeline.R`,
  `scripts/49_imhof_incremental_value.R`,
  `scripts/34_horse_race_fl_continuous.R`,
  `scripts/36_gate_d1_harmonized.R`.
