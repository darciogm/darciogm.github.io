---
paper: bitter-pills
id: an-011
type: descriptive
question: What is the annual fiscal procurement-cost implication of the litigated-urgent price gap, given the Lee-bound midpoint and an admissibility calibration?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "Fiscal procurement-cost implication of $27.8M per year (Lee-bound range $23.9M–$31.7M), from a Lee midpoint of 18.5%, a 50% admissibility calibration, and $300M annual litigated spending."
created: 2026-05-24
script: v10-causal-mechanism/analysis/46_procurement_cost_bound.R
target: v10-causal-mechanism/output/tables/tab_procurement_cost_bound.tex
tags: [procurement-cost, fiscal, lee-bounds, descriptive]
design:
  sample: "Litigated urgent procurement within BEC group 65 São Paulo pharmaceutical procurement, 2009–2019"
  specification: "Fiscal procurement-cost calculation: Lee-bound midpoint price gap applied to litigated spending, scaled by an admissibility calibration"
  notes: "This is a fiscal procurement-cost calculation, not a full welfare estimate; it excludes health benefits and search and compliance costs"
---

# AN-011: Annual fiscal procurement-cost implication

!!! econ "Economic intuition"
    Take the price gap from the Lee bounds, apply it to how much the state spends on litigated urgent purchases each year, and discount it by how much of that spending plausibly could have been sourced through the closest feasible urgent comparison. The arithmetic points to roughly $28M a year in extra procurement outlays. This is an outlay calculation for the state budget, not a full welfare accounting: it deliberately leaves out the health benefits of faster access and the search and compliance costs on the other side of the ledger.

## Question

What is the annual fiscal procurement-cost implication of the
litigated-urgent price gap? The calculation combines the Lee-bound
midpoint gap, the volume of annual litigated spending, and an
admissibility calibration for the share of that spending that could
plausibly have been sourced through the closest feasible urgent
comparison.

## Design

- **Sample**: litigated urgent procurement within the BEC group 65 São
  Paulo pharmaceutical sample, 2009–2019.
- **Specification**: a fiscal procurement-cost calculation. The
  Lee-bound midpoint price gap of 18.5% is applied to $300M of annual
  litigated spending, scaled by a 50% admissibility calibration; the
  reported range traces the Lee lower and upper bounds.
- **Scope**: this is a fiscal procurement-cost calculation, not a full
  welfare estimate. It excludes health benefits and search and
  compliance costs.

## Results

| Quantity | Value |
|---|---:|
| Lee midpoint gap | 18.5% |
| Admissibility calibration | 50% |
| Annual litigated spending | $300M |
| Fiscal procurement-cost implication (per year) | $27.8M |
| Lee-bound range | $23.9M–$31.7M |

Output: `v10-causal-mechanism/output/tables/tab_procurement_cost_bound.tex`.

## Interpretation

Confidence: **yellow.** Applying the 18.5% Lee midpoint gap to $300M of
annual litigated spending, scaled by a 50% admissibility calibration,
yields a fiscal procurement-cost implication of $27.8M per year, with a
Lee-bound range of $23.9M–$31.7M. This is a fiscal procurement-cost
calculation, not a full welfare estimate: it captures the extra outlay
the state budget bears and deliberately excludes the health benefits of
faster access and the search and compliance costs. The reading is yellow
because the figure depends on a calibrated admissibility share, rests on
a single-jurisdiction sample (São Paulo BEC), and comes from own project
runs.

## Follow-ups

- Trace how the implication moves under alternative admissibility
  calibrations and annual-spending assumptions (see the companion
  sensitivity tables `tab_procurement_cost_sensitivity.tex` and
  `tab_procurement_cost_spending_sensitivity.tex`).
- A full welfare accounting would require monetizing the health benefits
  of faster access and the search and compliance costs; that is outside
  the scope of this fiscal calculation.
