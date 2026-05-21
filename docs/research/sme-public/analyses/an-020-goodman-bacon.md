---
paper: sme-public
id: an-020
hypothesis: parallel-trends-hold
type: robustness
question: Does the Goodman-Bacon (2021) decomposition of the TWFE DiD coefficient show that all weight falls on the clean treated-vs-never-treated 2×2 comparison, with no contamination from forbidden treated-vs-already-treated comparisons?
status: done
status_date: 2026-05-21
confidence: green
headline: "Goodman-Bacon decomposition reports weight = 1.000 on the clean treated-vs-untreated 2×2 comparison for all four outcomes (log prices, log firms, log bids, distance) — zero weight on forbidden treated-vs-already-treated comparisons. The TWFE DDR coefficient is identification-equivalent to the clean 2×2; the heterogeneous-timing-bias concern that motivates CS2021 and Sun-Abraham does not apply to this single-cohort design."
created: 2026-05-21
script: scripts/21_goodman_bacon.R
target: output/tables/tab_bacon.tex
tags: ["H:parallel-trends-hold", goodman-bacon, twfe, decomposition, clean-2x2, no-contamination]
design:
  sample: "BEC parquet cache, 18-month window; codigogrupo × month panel"
  specification: "bacondecomp::bacon decomposition of TWFE β into weighted 2×2 comparisons; group×month aggregation"
  fixed_effects: "group + month (TWFE)"
  notes: "Single-cohort design with never-treated controls — at most 2 comparison types possible (clean Treated vs Untreated; trivial Within time-only)"
---

# AN-020: Goodman-Bacon TWFE decomposition

## Question

The two-way fixed-effects DiD coefficient is a weighted average of all
2×2 comparisons implicit in the panel. When some controls are
*already-treated* before the treatment cohort, the TWFE coefficient
can include "forbidden" comparisons that contaminate the estimate
\citep{goodmanbacon2021}. The Callaway-Sant'Anna and Sun-Abraham
corrections in [AN-018](an-018-cs2021-staggered.md) reproduce the
DDR — but is that because the TWFE was *clean to begin with*, or
because the corrections happen to give similar magnitudes? The
Goodman-Bacon decomposition answers this directly.

## Design

- **Sample**: BEC parquet cache, 18-month window; aggregated to
  codigogrupo × month to manage panel size.
- **Specification**: `bacondecomp::bacon(y ~ treat, id_var = id_grp,
  time_var = data_oc_numb)` on a balanced group × month panel where
  `treat = 1` if codigogrupo == "65" AND month ≥ 698 (March 2018).
- **Decomposition components**:
  1. **Treated vs Untreated** — the clean 2×2 comparison between
     group 65 and the never-treated 76 groups. Desired estimate.
  2. **Within** — time-only variation absorbed by group FE; trivial.
  3. **Treated vs Already-treated** — would be the forbidden
     comparison if some controls had been treated *earlier than*
     group 65. In our setting this cannot arise: no group within
     the 18-month window switches regime before March 2018.
- **Outcomes**: log prices, log firms, log bids, distance (km).

## Results

**Per-outcome decomposition** (table `tab_bacon.tex`):

| Outcome | Comparison type | Weight | Weighted avg. estimate |
|---|---|---:|---:|
| Log prices | Treated vs Untreated | **1.000** | 0.370 |
| Log firms  | Treated vs Untreated | **1.000** | −0.041 |
| Log bids   | Treated vs Untreated | **1.000** | 0.037 |
| Distance   | Treated vs Untreated | **1.000** | −37.99 |

**Zero weight on any other comparison type.** The decomposition collapses
to the clean 2×2 in every outcome.

Output: `output/tables/tab_bacon.tex`,
`output/tables/diag_bacon.txt`.

## Interpretation

**The TWFE DDR is identification-equivalent to the clean 2×2.** In a
single-cohort design with never-treated controls, the Goodman-Bacon
decomposition cannot produce forbidden treated-vs-already-treated
comparisons because there is no variation in treatment timing among
the controls. All weight falls on the clean Treated-vs-Untreated 2×2.
This is the strongest possible structural answer to the
heterogeneous-timing-bias concern raised by CS2021 and Sun-Abraham:
*the bias does not exist here by construction*.

**Reading vs CS2021 + Sun-Abraham convergence.** AN-018 shows the
three estimators converge on direction and (for SA) on magnitude.
This AN supplements that by showing the convergence is *not
coincidence*: the DDR was a clean estimator on this design, the
modern corrections do not change what they do not need to change.

**The 0.370 magnitude is the group-month aggregate, not the
item-level DDR.** Goodman-Bacon at the group-month panel aggregates
item-level effects via group means; the magnitude differs from the
item-level DDR (0.113 after sign-flip) but the *decomposition
property* (weight = 1 on clean 2×2) is what this analysis identifies.

Confidence: **green.** This is the rare AN that earns green within
the project. The Goodman-Bacon decomposition is structural — the
weight = 1.000 result is a mathematical property of the design (single
cohort, never-treated controls), not an empirical estimate that
could be noisy. There is no within-project replication to do; the
result is what it is.

## Follow-ups

- [AN-018](an-018-cs2021-staggered.md) (CS2021 + Sun-Abraham) is the
  complementary check that the *magnitudes* survive when the
  contamination — even if formally absent — is corrected for
  explicitly.
- The result also serves [H:price-discipline-loss](../hypotheses/price-discipline-loss.md)
  by ruling out heterogeneous-timing as a confound on the price
  coefficient.
