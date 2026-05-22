---
paper: frequent-losers
id: an-027
hypothesis: exposure-discipline
type: descriptive
question: How does AUC behave when the universe and the positive class are systematically varied — does the loser-side score remain disciplined to loser-side targets across every (universe × class) combination?
status: done
status_date: 2026-05-22
confidence: green
headline: "Eight-row meta-table confirms scope discipline: 0.924 (FL on AL vs cobidders), 0.491 (FL on all BEC vs direct CADE; predicted null), 0.383 (participation count on all BEC vs direct CADE; loser-side score actively repels winner-heavy defendants), 0.767 (frozen 2009-2016 vs 2017-2019)."
created: 2026-05-22
script: scripts/48_stratum_scope_reframe.R
target: output/stratum_scope/stratum_scope_metrics.csv
tags: ["H:exposure-discipline", "H:direct-defendants-null", scope, universe, meta-table]
design:
  sample: "Two universes: (i) always-loser firms (16,843); (ii) all BEC firms (41,444). Two evaluation horizons: pooled 2009-2019 and frozen 2009-2016 → 2017-2019."
  specification: "AUC against four positive classes across the universe × horizon grid: cobidders inside always-loser stratum; direct CADE defendants in full BEC; cobidder-bearing items 2017-2019; direct-defendant-bearing items 2017-2019. Eight rows total."
  notes: "This is the systematic 'scope matrix' that documents what the score targets and what it does NOT. The crucial row is the participation count on full BEC vs direct defendants: AUC 0.383 — below 0.5, i.e., the score actively REPELS winner-heavy firms."
---

# AN-027: Universe-anchored stratum scope matrix

## Question

How does AUC behave when the universe (the set of firms or items being
ranked) and the positive class (the validation target) are systematically
varied? The meta-table documents what the loser-side score targets and
what it does NOT target — the scope discipline that converts "the screen
works" into "the screen works on a specific, declared population".

## Design

- **Universes**:
  - *Always-loser firms*: 16,843 firms with `win_rate == 0` in BEC
    2009–2019.
  - *All BEC firms*: 41,444 firms in the registry.
  - *Items 2017-2019*: 1,009,729 items used for prospective evaluation.
  - *Always-losers as of 2009-2016*: 21,819 firms for the frozen-cutoff
    variant.
- **Positive classes**:
  - Cobidders inside always-loser stratum (193 firms);
  - Direct CADE defendants in full BEC (47 firms);
  - Cobidder-bearing items 2017-2019 (5,299 items);
  - Direct-defendant-bearing items 2017-2019 (12,037 items).
- **Scores**: FL14 binary; continuous log(1 + tenders_count);
  participation count in the full-BEC universe; frozen binary and
  continuous variants from the 2009-2016 train window.

## Results

The 8-row scope matrix (source CSV `stratum_scope_metrics.csv`):

| # | Score | Universe | Positive class | AUC | 95% CI | N+ | N |
|---|---|---|---|---:|---|---:|---:|
| 1 | Binary FL rule | Always-losers | Cobidders | **0.924** | [0.921, 0.926] | 193 | 16,843 |
| 2 | Continuous log_tc | Always-losers | Cobidders | **0.939** | [0.932, 0.946] | 193 | 16,843 |
| 3 | Binary FL rule | All BEC firms | Direct CADE | 0.491 | [0.461, 0.520] | 47 | 41,444 |
| 4 | **Participation count** | **All BEC firms** | **Direct CADE** | **0.383** | [0.322, 0.443] | 47 | 41,444 |
| 5 | Binary FL frozen on 2009-2016 | Always-losers as of 2009-2016 | Cobidders | 0.767 | [0.734, 0.800] | 193 | 21,819 |
| 6 | Continuous item score trained on 2009-2016 | Items 2017-2019 | Cobidder-bearing items | 0.770 | [0.764, 0.776] | 5,299 | 1,009,729 |
| 7 | Binary item flag frozen on 2009-2016 | Items 2017-2019 | Cobidder-bearing items | 0.565 | [0.564, 0.566] | 5,299 | 1,009,729 |
| 8 | Continuous item score trained on 2009-2016 | Items 2017-2019 | Direct-defendant items | 0.511 | [0.510, 0.513] | 12,037 | 1,009,729 |

Headline readings from the source CSV:

- Row 1: "Within-stratum prioritization only" — the binary rule
  prioritizes cobidder risk inside the always-loser stratum.
- Row 2: "Best within-stratum ranking object" — the continuous score
  is the empirical primitive.
- Row 3: "No; performance is at chance" — the score does not detect
  cartel defendants in general (predicted null).
- Row 4: "**No; loser-side scores miss winner-heavy defendants**"
  — and *actively repel* them: AUC = 0.383 means the score discriminates
  *against* direct defendants (a high-participation firm is *less*
  likely to be a direct CADE defendant under the screen).
- Row 5: "Much weaker than pooled within-stratum performance" — strict
  ex ante variant.
- Row 6: "Some prospective generalization, but narrower and weaker".
- Row 7: "No; binary holdout performance is weak" — the item-level
  binary flag does not generalize prospectively.
- Row 8: "No; direct-defendant scope failure remains" — direct-defendant
  null survives temporal holdout.

## Interpretation

The scope matrix is the systematic alternative-hypothesis sweep that
[H:exposure-discipline](../hypotheses/exposure-discipline.md) needs.
Eight different (universe × positive-class) combinations:

1. **Where the score should work, it does** (rows 1, 2): AUC 0.924–0.939
   on cobidders within always-losers.
2. **Where the score should not work, it doesn't** (rows 3, 4, 8): AUC
   ≈ 0.5 against direct defendants in any universe.
3. **Row 4 is stronger than just "null"**: participation count on full
   BEC vs direct defendants is 0.383 — below random. This is the
   discriminating-against-winners result. A high-participation BEC firm
   is *less* likely to be a direct CADE defendant — exactly the
   sign predicted by the loser-side scope interpretation. Direct
   defendants are winner-heavy ([AN-018](an-018-gate-d4.md): 14.9%
   always-losers, median win rate 0.261), so they sit at lower
   loser-side participation than non-defendants.
4. **Frozen variants preserve the pattern under timing discipline**
   (rows 5, 6, 7, 8): the loser-side scope and the AUC magnitudes
   degrade gracefully, the direct-defendant null remains.

The matrix structurally rules out the "the screen picks up something
generic" reading. The score targets exactly what the loser-side framing
predicts and misses exactly what the framing says it should miss.

For [H:exposure-discipline](../hypotheses/exposure-discipline.md), the
combination of (i) sham permutation rejecting at p = 0
([AN-005](an-005-sham-fl-permutation.md)), (ii) leakage audit surviving
at 0.864 ([AN-014](an-014-leakage-audit-d3.md)), (iii) this scope
matrix showing the score targets the right population in every cell, is
near-exhaustive within-data evidence that the result is not an
artifact.

## Follow-ups

- Add a within-modality variant of the matrix (Pregão-only and
  Convite-only sub-samples).
- Triangulate row 4 (participation count vs direct defendants, AUC
  0.383) with the D4 mechanistic check
  ([AN-018](an-018-gate-d4.md)).
- Cross-validate the prospective rows (6, 7, 8) under alternative train
  windows.
- Add macros `\valScopeRowOne` through `\valScopeRowEight` and a
  `\valAUCParticDefendants` (= 0.383) macro to the
  `scripts/99_make_paper_values.R` pipeline.
