# Joint award + bid scoring is the full-observability upper bound

!!! info "Pending finding"
    Scaffold for a result reported in §6.1–§6.2 of the
    [manuscript](../paper.md) ("Bid-Layer Benchmark Under Costly
    Observability", "Complementarity Across Information Layers").

🟡 On the cobidder target, a classifier that uses **both** the award-layer
score (FL14 + continuous loss intensity) and the Imhof-style
bid-distribution features achieves the highest AUC. The two layers are
**complementary**, not substitutes: each adds non-redundant information at
the operating points relevant for enforcement triage.

The joint score is the *full-observability upper bound*: what an agency
could achieve if it had already opened the bid layer for every firm. It is
the right benchmark for the gatekeeping comparison in
[Award-layer gatekeeping cuts the bid-microdata pool by 83%](gatekeeping-cuts-pool-83pct.md),
because it answers "how much do we give up by triaging before recovering
bid data?"

**Caveat.** The complementarity result is sample-specific (BEC 2009–2019,
CADE-adjudicated cobidder labels). The increment over the bid-only score
depends on the Imhof feature set chosen as benchmark; the manuscript uses
the seven-feature canonical pipeline. The reading is 🟡 because the
upper-bound claim is restricted to the available adjudication target.

**Sources.**

- *Own analysis*:
  [AN-010](../analyses/an-010-imhof-full-pipeline.md) (Imhof benchmark),
  [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race
  continuous),
  [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized same-sample).
- *Cross-refs*: [H:award-bid-complementarity](../hypotheses/award-bid-complementarity.md);
  [docs/results.md](../results.md).
- *Validation*: backing scripts `scripts/31_imhof_full_pipeline.R`,
  `scripts/34_horse_race_fl_continuous.R`,
  `scripts/36_gate_d1_harmonized.R`.
