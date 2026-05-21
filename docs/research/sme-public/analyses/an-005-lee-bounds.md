---
paper: sme-public
id: an-005
hypothesis: parallel-trends-hold
type: robustness
question: How tight are Lee (2009) sample-selection bounds on the DiDiR price coefficient?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Lee bounds on log prices run from −0.131 (lower) to −0.123 (upper); both endpoints are highly significant. Differential completion across the policy break has negligible impact on the headline estimate. Distance bounds: +10.78 / +10.80 km (lower/upper)."
created: 2026-05-21
script: scripts/07_advanced.R
target: output/tables/tab_lee_bounds.tex
tags: ["H:parallel-trends-hold", lee-bounds, sample-selection, robustness, advanced]
design:
  sample: "BEC items with non-missing completion indicator; 18-month window"
  specification: "Lee (2009) trimming bounds applied to the DiDiR price coefficient, conditional on completion (oc_item_status == 1); trimming proportion 8.82% on distance"
  notes: "The price equation conditions on completed items; if the treatment shifts completion rates, the conditional coefficient is selection-biased"
---

# AN-005: Lee bounds on the DiDiR price coefficient

## Question

The price and distance regressions condition on completion (i.e., the
item was successfully procured). If the treatment shifts completion
rates, the conditional coefficient confounds the policy effect with
differential selection into the sample. Lee (2009) bounds correct for
this by trimming the outcome distribution in the *excess-selected* cell.

## Design

- **Sample**: 18-month window; both completed and non-completed items
  (completion indicator from `oc_item_status`).
- **Variation**: same DiDiR as [AN-001](an-001-didir-prices.md).
- **Specification**: Lee (2009) trimming bounds — the conditional
  outcome distribution in the cell with the higher completion rate is
  trimmed at the proportion required to match the lower-completion
  cell, producing tight bounds on the conditional coefficient.
- **Outcomes**: log prices, distance.

## Results

| Outcome | Lower bound | Upper bound | Trimming proportion |
|---|---:|---:|---:|
| Log prices | −0.1306*** (0.0096) | −0.1227*** (0.0085) | (see note) |
| Distance (km) | +10.775*** (2.232) | +10.804*** (2.233) | 8.82% |

*Item-clustered SE. \*\*\* p<0.01.*

Output: `output/tables/tab_lee_bounds.tex`.

## Interpretation

The bounds on log prices are tight: a gap of ~0.008 between lower and
upper endpoints, well below the standard error of the point estimate.
Both endpoints reject zero at p<0.01. Sample selection through
differential completion has *negligible* impact on the price
coefficient.

The distance bounds are essentially identical at both endpoints
(+10.78 vs +10.80 km), with an 8.82% trimming proportion. The
distance estimate is therefore *not* driven by selection on completion.

Confidence: **yellow.** The Lee bounds discipline the
selection-on-completion margin; they do not address other identification
threats (parallel trends, cost shocks). The full identification battery
is in [AN-004](an-004-placebo-tests.md), [AN-005](an-005-lee-bounds.md),
[AN-006](an-006-honestdid.md). The reading is yellow because all three
are own-project robustness checks rather than independent replications.

## Follow-ups

- Composition-margin Lee bound: extend the trimming logic to the
  SME-winner indicator
  ([AN-009](an-009-sme-winner-extensions.md)) to bound the
  composition-shift coefficient against differential completion.
- Two-margin selection: completion *and* item-attribute coverage may
  both be selective. A joint selection model (or a Heckman two-step)
  would extend the Lee bound; not in scope for the current paper.
