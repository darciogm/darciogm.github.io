---
id: an-006
hypothesis: timing-discipline
type: robustness
question: Does cobidder concentration survive when the FL score is formed strictly before the target window?
status: pending
created: 2026-05-22
script: scripts/27_strict_prospective_holdout.R
target: output/tables/tab_strict_holdout.tex
tags: ["H:timing-discipline", "H:exposure-discipline", holdout, ex-ante]
design:
  sample: "Always-loser firms; train window 2009–2016, target window 2017–2019"
  specification: "Score formed on pre-target participation; cobidder classification restricted to strict ex ante variant"
  notes: "Relaxed (any-time cobidder) vs strict (pre-target cobidder)"
---

# AN-006: Strict prospective holdout (timing + exposure)

## Question

Does cobidder concentration survive when the FL score is formed strictly
before the target window? Both relaxed and strict ex ante variants are
reported.

## Design

- **Sample**: always-loser firms; train window 2009–2016 forms the FL
  score, target window 2017–2019 is the evaluation set.
- **Variants**:
  - *Relaxed*: score uses pre-target participation; cobidder classification
    uses any-time participation.
  - *Strict*: score uses pre-target participation; cobidder classification
    restricted to pre-target cobidders.
- **Outcome**: cobidder AUC under each variant.

## Results

*Pending.*

## Interpretation

*Pending.* See [H:timing-discipline](../hypotheses/timing-discipline.md).

## Follow-ups

- Window-length sensitivity (e.g., 2009–2014 train).
