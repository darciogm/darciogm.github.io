---
paper: sme-public
id: an-018
hypothesis: parallel-trends-hold
type: robustness
question: Do Callaway-Sant'Anna (2021) and Sun-Abraham (2021) staggered-DiD estimators reproduce the DiDiR price effect once heterogeneous treatment timing is accounted for?
status: pending
created: 2026-05-21
script: scripts/19_cs2021.R
target: output/tables/tab_cs2021.tex
tags: ["H:parallel-trends-hold", staggered-did, callaway-santanna, sun-abraham, robustness]
design:
  sample: "Same BEC sample as AN-001; treatment cohorts defined by group-level SME-restriction rollout history"
  specification: "Callaway-Sant'Anna (2021) ATT(g, t) and Sun-Abraham (2021) interaction-weighted estimators applied to the price equation"
  notes: "Addresses heterogeneous-timing bias that can contaminate two-way fixed-effects DiD"
---

# AN-018: Staggered-DiD reproductions

## Question

Recent work (de Chaisemartin and D'Haultfœuille 2020; Callaway and
Sant'Anna 2021; Sun and Abraham 2021; Goodman-Bacon 2021) shows that
two-way fixed-effects DiD can be contaminated by heterogeneous treatment
effects across cohorts and time when treatment timing is staggered.
The control groups in [AN-001](an-001-didir-prices.md) were
SME-restricted at different times before March 2018 (the gradual rollout
documented in [AN-004](an-004-placebo-tests.md)). Staggered-DiD
estimators address this.

## Design

- **Sample**: same BEC sample as [AN-001](an-001-didir-prices.md);
  treatment cohorts defined by group-level SME-restriction rollout
  history.
- **Variation**: heterogeneous treatment timing across groups (group 65
  switches in March 2018; other groups had been SME-restricted at
  earlier dates).
- **Specification**:
  - **Callaway-Sant'Anna**: aggregate ATT($g$, $t$) effects across
    cohorts and event times using doubly-robust estimators.
  - **Sun-Abraham**: interaction-weighted event-study coefficients
    that purge the cross-cohort contamination.
- **Outcomes**: aggregate ATT on log prices; comparison to the
  two-way-FE DiDiR coefficient.

## Results

> *Pending — staggered-DiD reproductions are scripted but not yet
> documented here. The expected result is that the aggregate ATT
> reproduces the DiDiR price coefficient (~−0.13) once
> heterogeneous-timing is accounted for; if the two estimators
> diverge significantly, the contamination is meaningful.*

## Interpretation

> *Pending. The most-informative reading is whether the
> staggered-DiD aggregate ATT lies within the standard error of the
> two-way-FE DiDiR coefficient. Convergence is a clean robustness
> check; divergence requires reinterpreting the headline.*

Confidence: **pending.**

## Follow-ups

- Goodman-Bacon decomposition (`scripts/21_goodman_bacon.R`) of the
  two-way-FE DiDiR coefficient into 2×2 building-block comparisons.
  This is the diagnostic that exposes which cohort-time comparisons
  drive the headline; load-bearing for the
  staggered-DiD interpretation.
- Event-study with Sun-Abraham coefficients: the figure-level analog
  of the event study in `output/figures/fig_01_logprices_es.pdf`
  but purged of cross-cohort contamination.
- Cohort-specific ATT decomposition: which control cohort contributes
  most to the aggregate ATT? Worth documenting to expose
  identification leverage.
