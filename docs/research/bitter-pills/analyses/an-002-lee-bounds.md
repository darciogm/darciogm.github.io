---
paper: bitter-pills
id: an-002
hypothesis: utg-gap-selection-bounded
type: robustness
question: Holding urgency fixed, how much more does the litigated urgent channel cost than the closest administrative urgent comparison, once selection into litigation is bounded?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "Naive litigated-over-administrative gap is 29.5%; Lee bounds tighten it to 15.9%–21.1% under monotonicity."
created: 2026-05-24
script: v10-causal-mechanism/analysis/40_utg_lee_bounds.R
target: v10-causal-mechanism/output/tables/tab_urgent_and_bounds.tex
tags: ["H:utg-gap-selection-bounded", lee-bounds, urgent, selection, robustness]
design:
  sample: "Urgent winner panel (naive regression N=61,620; Lee-trimmed N=45,624); administrative-urgent versus litigated-urgent purchases within item×year×PBU strata"
  specification: "Lee (2009) trimming bounds on the administrative-minus-litigated log-price coefficient, trimming within item×year×PBU strata; standard errors as reported"
  notes: "The administrative urgent channel is selected, larger, and the closest feasible urgent-procurement comparison — not a random or clean counterfactual; bounds discipline selection under monotonicity, they do not eliminate it"
---

# AN-002: Lee bounds on the litigated-vs-administrative urgent gap

!!! econ "Economic intuition"
    Among urgent purchases, the ones driven by a court order are not a clean random sample — different items, buyers, and circumstances reach the litigated channel than reach the administrative urgent channel, which is itself larger and selected. A raw comparison says the litigated channel costs about 29.5% more; but some of that gap could be who lands where, not the litigation itself. Lee bounds draw a worst-case box around that selection concern. The box still sits well above zero — 15.9% to 21.1% — so the cost premium survives even under conservative selection assumptions.

## Question

Holding urgency fixed, how much more does the court-mandated (litigated) urgent
channel cost than the closest administrative urgent comparison, once selection
into litigation is bounded? The administrative urgent channel is the **closest
feasible urgent-procurement comparison** — it is selected and larger, **not** a
random or clean counterfactual. The question is whether the litigated-over-
administrative price gap survives a worst-case treatment of that selection.

## Design

- **Sample**: the urgent winner panel — 61,620 observations in the naive
  regression, 45,624 after Lee trimming — comparing
  administrative-urgent and litigated-urgent purchases within item×year×PBU
  strata.
- **Variation**: administrative-urgent versus litigated-urgent within stratum.
- **Specification**: Lee (2009) trimming bounds on the
  administrative-minus-litigated log-price coefficient, with trimming applied
  within item×year×PBU strata. Coefficients are administrative-minus-litigated
  log price, so a negative coefficient means the litigated channel is more
  expensive; percentages are reported as litigated-over-administrative.
- **Robustness**: alternative-strata trimming reported in
  `tab_utg_lee_alt_strata.tex`. A parametric Heckman correction is
  non-informative here and is noted as such.

## Results

| Quantity | Coefficient | Implied gap (litigated over administrative) | N |
|---|---:|---:|---:|
| Naive (no trimming) | −0.259 (SE 0.092) | 29.5% | 61,620 |
| Lee lower bound | −0.148 | 15.9% | 45,624 |
| Lee upper bound | −0.192 | 21.1% | 45,624 |
| Bounded interval | — | 15.9% – 21.1% | — |

*Trimming within item×year×PBU strata. Mean trimming proportion 26.9%, maximum
100%.*

Output: `v10-causal-mechanism/output/tables/tab_urgent_and_bounds.tex` (Panel B) and
`v10-causal-mechanism/output/tables/tab_utg_lee_alt_strata.tex`.

![Naive estimate versus Lee selection bounds for the litigated-over-administrative gap](../assets/figures/fig_lee_bounds_interval_v10.png)

## Interpretation

The naive contrast puts the litigated urgent channel about 29.5% above the
administrative urgent comparison. Bounding selection into litigation under
monotonicity tightens the gap to a 15.9%–21.1% interval — lower than the naive
figure, but well clear of zero. The mean trimming proportion is 26.9% (maximum
100% in some strata), so the trimming is substantial yet leaves a sizable
premium intact. A parametric Heckman correction is non-informative in this
setting and is reported only for completeness.

Confidence: **yellow.** The administrative urgent channel is selected and
larger — the closest feasible urgent-procurement comparison rather than a random
or clean counterfactual — so the Lee bounds discipline selection into the
litigated channel under monotonicity; they do not eliminate it, and they leave
other identification threats (cost shocks, item mix beyond the stratum)
unaddressed. The reading is yellow because the evidence is from a single
jurisdiction (São Paulo BEC) and own-project runs rather than independent
replication.

## Follow-ups

- Wild-cluster bootstrap inference on the bounded coefficient with few PBU
  clusters — see [AN-007](an-007-wild-cluster-bootstrap.md).
- A never-litigated placebo to probe whether the residual gap loads on
  litigation per se — see [AN-008](an-008-placebo-never-litigated.md).
- Take the bounded price gap into the pricing-versus-sourcing decomposition to
  ask how much of it is same-firm pricing versus supplier-set reallocation —
  see [AN-005](an-005-pricing-sourcing-decomposition.md).
