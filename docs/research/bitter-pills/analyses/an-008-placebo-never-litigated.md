---
paper: bitter-pills
id: an-008
hypothesis: placebo-and-dynamics
type: placebo
question: Do never-litigated items show a spurious negotiated-price gap that would indicate a generic platform or time-trend explanation rather than a litigation-specific effect?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "On never-litigated items the negotiated-price placebo coefficient is −0.020 (SE 0.032), economically and statistically null, so generic platform or time-trend stories do not generate the regime contrast."
created: 2026-05-24
script: v10-causal-mechanism/analysis/20_falsification_and_supplier_fe.R
target: v10-causal-mechanism/output/tables/tab_placebo.tex
tags: ["H:placebo-and-dynamics", placebo, falsification, robustness]
design:
  sample: "Never-litigated items within the BEC group 65 São Paulo pharmaceutical sample, 2009–2019"
  specification: "Negotiated-price placebo regression on items that are never subject to litigation, testing for a spurious gap"
  notes: "Falsification check against generic platform-wide or time-trend explanations; not a stand-alone identification design"
---

# AN-008: Placebo on never-litigated items

!!! econ "Economic intuition"
    If the price gap were really driven by something generic, a platform-wide pricing quirk or a common time trend, it should also appear on items that are never litigated. It does not. The placebo coefficient on never-litigated items is essentially zero, so the regime contrast is not a mechanical feature of the platform or the calendar.

## Question

A concern with the regime contrast is that it could reflect a
platform-wide pricing pattern or a common time trend rather than
anything specific to litigation. If so, a comparable gap should surface
on items that are never litigated. This page tests for that spurious
gap.

## Design

- **Sample**: never-litigated items within the BEC group 65 São Paulo
  pharmaceutical sample, 2009–2019.
- **Specification**: a negotiated-price placebo regression estimated on
  items that are never subject to litigation, testing whether a spurious
  gap arises where none should.
- **Role**: a falsification check against generic platform or
  time-trend explanations; it is not a stand-alone identification
  design.

## Results

| Quantity | Coefficient | SE |
|---|---:|---:|
| Negotiated-price placebo | −0.020 | 0.032 |

Output: `v10-causal-mechanism/output/tables/tab_placebo.tex`.

## Interpretation

Confidence: **yellow.** The negotiated-price placebo coefficient is
−0.020 with a standard error of 0.032: economically and statistically
null. A generic platform-wide or time-trend mechanism would have
produced a non-trivial gap on never-litigated items; the absence of one
falsifies those explanations. This is a falsification check, not a
stand-alone identification design. The reading is yellow because the
evidence is from a single jurisdiction (São Paulo BEC) and rests on own
project runs.

## Follow-ups

- Pair this falsification with the dynamic event-study and
  Honest-DiD sensitivity diagnostics in
  [AN-010](an-010-dynamic-bjs-honestdid.md), which together populate the
  [placebo-and-dynamics hypothesis](../hypotheses/placebo-and-dynamics.md).
- Re-estimate the placebo within narrower therapeutic subgroups to
  confirm the null is not masking offsetting subgroup effects.
