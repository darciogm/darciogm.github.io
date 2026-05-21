---
paper: sme-public
id: an-017
hypothesis: exclusion-dominates
type: robustness
question: Does the exclusion-dominant decomposition survive a strict-invariance specification that holds the SME pool fixed in composition across the policy break?
status: pending
created: 2026-05-21
script: v7-jpube-tight/scripts/57_strict_invariance.R
target: v7-jpube-tight/output/strict_invariance.parquet
tags: ["H:exclusion-dominates", "H:static-welfare-loss-large", strict-invariance, robustness, sensitivity]
design:
  sample: "Structural cells (non-pharma standardized; pharma boundary)"
  specification: "BNE decomposition with the SME pool composition (not just count) held fixed at the pre-policy distribution; isolates the participation channel from the composition-of-active-SMEs channel within S_3 − S_2"
  notes: "Strict-invariance sensitivity that paper §4 reports alongside the main specification"
---

# AN-017: Strict-invariance specification

## Question

The protected-pool offset $S_3 - S_2$ combines additional SME
participation with changes in the *active* SME pool composition. The
strict-invariance specification holds the SME pool composition fixed
at the pre-policy distribution to isolate the participation channel —
testing whether the dominance ordering of
[H:exclusion-dominates](../hypotheses/exclusion-dominates.md) is
driven by compositional churn or by the underlying type-cost gradient.

## Design

- **Sample**: structural cells from
  [AN-010](an-010-bne-decomposition.md).
- **Variation**: BNE decomposition with the post-policy SME cost
  distribution constrained to match the pre-policy distribution
  (composition held fixed; only participation count varies between
  $S_2$ and $S_3$).
- **Specification**: re-run the BNE simulation under the strict
  constraint; compare the resulting $S_3' - S_2$ offset to the
  baseline $S_3 - S_2$.
- **Outcomes**: strict-invariance $S_3'$; corresponding exclusion
  share and welfare arithmetic; sensitivity of the dominance
  ordering.

## Results

> *Pending — the strict-invariance specification is computed but not
> yet documented here. Per paper §4, the **non-pharma ranking is
> stable** across the main and strict-invariance specifications; the
> **pharma ranking is not**, which is the reason pharma is treated as
> a boundary case in
> [AN-016](an-016-pharma-boundary.md).*

## Interpretation

> *Pending. The most-informative comparison is the difference between
> $S_3 - S_2$ (baseline, mixes participation and composition) and
> $S_3' - S_2$ (strict invariance, isolates participation). A small
> difference says the offset is dominated by participation; a large
> difference says composition of the active SME pool changes
> meaningfully under the policy. In non-pharma the difference is small
> and the dominance ordering survives; in pharma the difference is
> meaningful and the ordering is fragile.*

Confidence: **pending.**

## Follow-ups

- Per-class sensitivity sweep: vary the strictness of the invariance
  constraint (e.g., constrain mean only, or mean + variance, or full
  distribution) to expose where the pharma fragility comes from.
- Within-class composition: which sub-cells of SMEs drive the active-pool
  composition shift in pharma? Drug-class cross-cuts would isolate
  whether specific therapeutic categories are responsible.
- Welfare-arithmetic implications: re-run
  [AN-011](an-011-welfare-arithmetic.md) under strict invariance to
  expose whether the 28.9% non-pharma welfare loss is stable to this
  specification choice.
