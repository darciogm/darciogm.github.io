---
paper: sme-public
id: an-017
hypothesis: exclusion-dominates
type: robustness
question: Does the exclusion-dominant decomposition survive a strict-invariance specification that holds the SME pool composition fixed at the pre-policy distribution while keeping observed post-policy SME entry counts?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Strict invariance ($F_c^{SME,Post} = F_c^{SME,Pre}$ with observed post-policy SME counts) keeps the total price effect positive: $S_3 - S_1$ = 0.29 (non-pharma) and 0.47 (pharma), with within-auction (exclusion) shares rising to 85% (non-pharma) and 79% (pharma). The exclusion-dominant ordering is not driven by composition change in the active SME pool."
created: 2026-05-21
script: v7-jpube-tight/scripts/57_strict_invariance.R
target: v7-jpube-tight/output/strict_invariance.parquet
tags: ["H:exclusion-dominates", "H:static-welfare-loss-large", strict-invariance, robustness, sensitivity, composition]
design:
  sample: "Structural cells (non-pharma standardized; pharma boundary)"
  specification: "BNE decomposition with SME pool composition constrained to match pre-policy distribution ($F_c^{SME,Post} = F_c^{SME,Pre}$) while keeping observed post-policy SME entry counts; isolates participation channel from composition-of-active-SMEs channel within $S_3-S_2$"
  notes: "Strict-invariance sensitivity reported alongside the main specification in paper §6.3"
---

# AN-017: Strict-invariance specification

!!! abstract "Intuition (plain-language)"
    Maybe the result is an artifact of how the SME pool's composition changes after the policy. Strict invariance freezes the SME cost distribution at its pre-policy shape while keeping observed entry counts. The price effect not only survives — the exclusion share rises to 85% — so composition change is not what drives dominance.

## Question

The protected-pool offset $S_3 - S_2$ combines additional SME
participation with changes in the active SME pool composition observed
post-policy. The strict-invariance specification fixes the SME cost
distribution at the pre-policy distribution but keeps observed
post-policy SME bidder counts — testing whether the dominance ordering
of [H:exclusion-dominates](../hypotheses/exclusion-dominates.md) is
driven by compositional churn in the active SME pool or by the
underlying type-cost gradient.

## Design

- **Sample**: structural cells from
  [AN-010](an-010-bne-decomposition.md).
- **Variation**: BNE decomposition with the constraint
  $F_c^{\mathrm{SME,Post}} = F_c^{\mathrm{SME,Pre}}$ while observed
  post-policy SME entry counts are retained.
- **Specification**: re-run the BNE simulation under the strict
  constraint; report the resulting total effect and within-auction
  (exclusion) share.
- **Outcomes**: strict-invariance net $S_3 - S_1$; corresponding
  exclusion share; comparison to the main specification.

## Results

From `v7-jpube-tight/output/strict_invariance.parquet` (paper §6.3):

| Class | Main $S_3-S_1$ | Strict-inv $S_3-S_1$ | Main share | Strict-inv share |
|---|---:|---:|---:|---:|
| Non-pharma | 0.227 | **0.29** | 72.0% | **85%** |
| Pharma     | 0.309 | **0.47** | 68.8% | **79%** |

Under strict invariance, both the total price effect and the exclusion
share are *larger* than in the main specification.

## Interpretation

**Composition is not what makes the exclusion component dominate.**
Holding the SME cost distribution fixed at the pre-policy level
*increases* both the total effect and the exclusion share. If
compositional churn in the active SME pool had been responsible for
the exclusion-dominant ordering, freezing composition would have
made the offset disappear and the net effect would have grown larger
through that offset reduction; instead, the same direction (lost
discipline > offset) holds, more sharply.

**What composition *does* affect.** The non-strict-invariance
specification reduces the net effect because the post-policy SME pool
has a *cleaner* (lower-cost) cost distribution than the pre-policy
SME pool — a positive selection effect into the protected market that
partially offsets the lost competitive discipline. Under strict
invariance that offset is shut off by construction, leaving the
full lost-discipline channel exposed.

**Composition matters more for the pharma welfare ranking.** Pharma's
strict-invariance share rises 10.2 pp (68.8 → 79); non-pharma's
rises 13 pp (72.0 → 85). Both are large, but composition explains a
larger fraction of the *pharma* protected-pool offset, consistent with
the boundary-case treatment of pharma in
[AN-016](an-016-pharma-boundary.md).

Confidence: **yellow.** The strict-invariance comparison is a clean
"composition-off" / "composition-on" cross-check. It is yellow rather
than green because it inherits the structural recovery's restrictions
(IPV-clock, UH correction) — same caveat ladder as the rest of the
Cluster B/C structural pieces.

## Follow-ups

- Mechanism decomposition of $S_3 - S_2$ into *pure entry* (count
  change with composition fixed) vs *pure composition* (composition
  change with count fixed). Currently the strict-invariance fixes
  composition and lets count vary, isolating one direction. The
  complementary cut would expose the residual entry channel.
- Drug-class cross-cut in pharma: identify which therapeutic
  sub-classes drive the active-pool composition shift; this would
  refine the pharma boundary-case statement.
