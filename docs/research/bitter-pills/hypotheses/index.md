---
paper: bitter-pills
---

# Hypotheses

Testable predictions for *Sourcing under Sanctions: Judicial Urgency and
Pharmaceutical Procurement Costs*. Each hypothesis lives in its own file and is
referenced project-internally by `H:<slug>`.

Hypotheses are organized into four thematic clusters aligned with the canonical
manuscript `v9-jpube-short/manuscript/paper/main.tex`.

## How to read a hypothesis page

Each page follows the same structure — *the design → what's known → what's
left*:

- **Title + lede:** the `H:<slug>` title, then a plain-words statement of the
  claim.
- **Evidence-strength callout:** an at-a-glance verdict (Very strong / Strong /
  Moderate / Weak / Not yet tested) plus a one-line status.
- **Theory:** the theoretical motivation, with references.
- **Prediction:** the precise directional claim.
- **Competing prediction:** what a non-sourcing explanation predicts instead —
  the alternative the test has to rule out (typically an incumbent same-firm
  markup).
- **Setting evidence:** institutional and descriptive grounding from the
  BEC-SP record and the `paper.md` setting.
- **Empirical test:** the concrete specification — outcome, variation,
  fixed effects.
- **Data requirements and limitations:** datasets needed and threats to
  identification.
- **Evidence:** a table of the project's analyses bearing on the hypothesis —
  `Analysis` (AN-ID, linked) · `Bearing` (Supports / Against / Mixed / Pending)
  · `Key takeaway`.
- **Open tests:** forward-looking only — analyses not yet run.

The **scorecard** below rolls up the current status of every hypothesis against
the analyses (`AN-NNN`) that bear on it.

---

## Cluster A: The urgent-procurement margin (motivation)

Maps to paper §5.1 and to [docs/results.md](../results.md). Establishes the
procurement environment — urgency raises costs and weakens competition — before
the design moves inside urgent procurement.

- [H:urgent-costlier-less-competitive](urgent-costlier-less-competitive.md) —
  Urgent procurement is costlier and less competitive than ordinary
  procurement.

## Cluster B: The sanction-related gap and same-firm pricing

Maps to paper §5.2–§5.3 and §4 (Empirical Framework). The selection-bounded
under-the-gun contrast and the within firm-buyer-item pricing test that
separates same-firm pricing from supplier-set sourcing.

- [H:utg-gap-selection-bounded](utg-gap-selection-bounded.md) — Court-mandated
  urgent purchases cost more than the closest administrative urgent comparison,
  and the gap survives selection bounding.
- [H:no-broad-same-firm-markup](no-broad-same-firm-markup.md) — In deep repeated
  urgent markets, the sanction-related cost margin does not appear as a broad
  same-firm markup.
- [H:thin-market-supplier-leverage](thin-market-supplier-leverage.md) — Supplier
  leverage reappears in thinner and earlier markets.

## Cluster C: The sourcing mechanism

Maps to paper §5.4 and to [docs/results.md](../results.md). Where the
procurement-cost margin operates: lost scale and supplier-set reallocation.

- [H:lost-scale](lost-scale.md) — Court-mandated buying gives up scale;
  administrative urgent orders are larger and capture bulk discounts.
- [H:supplier-set-reallocation](supplier-set-reallocation.md) — Legal urgency
  reallocates the winning supplier set.

## Cluster D: Identification and robustness

Maps to paper §6 (Falsification and Robustness) and to
[docs/robustness.md](../robustness.md) + [docs/advanced.md](../advanced.md).

- [H:placebo-and-dynamics](placebo-and-dynamics.md) — The urgent-procurement
  pattern is specific to litigated items; dynamic evidence is diagnostic, not
  the primary design.

---

## Scorecard

The theory-driven prediction, the intuition behind it, the analyses that bear
on it, and the current verdict. Click a hypothesis for the full design and
detailed Evidence table; click an `AN-NNN` for the backing analysis. Status
runs **Not yet tested** → **Not confirmed** / **Mixed** / **Moderate** →
**Partial (strongly supported)**. No single-jurisdiction result is marked
"Confirmed" without cross-data replication.

| # | Prediction | Intuition | Evidence | Status |
|---|-----------|-----------|----------|--------|
| [H1](urgent-costlier-less-competitive.md) | Urgent procurement → higher prices and fewer bidders than ordinary | Compressed urgent sourcing cannot wait for aggregation or regular competition | [AN-001](../analyses/an-001-urgent-vs-ordinary.md) negotiated price +5.4%, reference price +2.7%, bidders &minus;5.4%, tender success +2.1pp (item+year+PBU FE, PBU-clustered). All four outcomes significant and consistent in direction; establishes the motivational urgent-procurement margin, not the sanction-exposure design | **Partial (strongly supported)** |
| [H2](utg-gap-selection-bounded.md) | Litigated urgent > administrative urgent, gap survives selection bounding | One-sided sanctions raise the cost of court-mandated buying relative to the closest feasible urgent comparison | [AN-002](../analyses/an-002-lee-bounds.md) naive 29.5%, Lee bounds 15.9%&ndash;21.1% after trimming the selected administrative group; [AN-007](../analyses/an-007-wild-cluster-bootstrap.md) wild-cluster $p=0.0080$ (preferred), 0.0390 (item-by-year-month) | **Partial (strongly supported)** |
| [H3](no-broad-same-firm-markup.md) | No broad same-firm markup in deep repeated urgent markets | Conditional on the same firm, buyer, and item, price is indistinguishable across urgent regimes | [AN-003](../analyses/an-003-within-firm-pricing.md) within firm-buyer-item coefficient 0.035 (SE 0.041); near zero in above-median quantity (&minus;0.005) and SUS-formulary (&minus;0.001) subsamples | **Partial (strongly supported)** |
| [H4](thin-market-supplier-leverage.md) | Supplier leverage reappears in thinner and earlier markets | Thin or early urgent pools give incumbents room to price | [AN-003](../analyses/an-003-within-firm-pricing.md) below-median quantity +0.066\*\*\*, earlier period +0.117\*\*\*, non-formulary +0.101; [AN-004](../analyses/an-004-market-depth-heterogeneity.md) market-depth heterogeneity | **Moderate (supported)** |
| [H5](lost-scale.md) | Court-mandated buying gives up scale | Fragmented urgent buying forgoes bulk discounts | [AN-005](../analyses/an-005-pricing-sourcing-decomposition.md) quantity/scale component &minus;32.8% of the gap, administrative orders 3.3&times; larger, bulk-discount elasticity &minus;0.329; [AN-009](../analyses/an-009-aggregation-cells.md) aggregation diagnostic (mixed) | **Partial (strongly supported)** |
| [H6](supplier-set-reallocation.md) | Legal urgency reallocates the winning supplier set | Compressed timelines and fragmented demand change which supplier wins | [AN-006](../analyses/an-006-winner-switching.md) among 2,134 item-buyer pairs, modal winner differs in 70.2%, mean winner-set Jaccard similarity 0.268, 48.5% with no winner overlap | **Partial (strongly supported)** |
| [H7](placebo-and-dynamics.md) | Pattern is litigation-specific; dynamics are diagnostic | A generic platform/time-trend story would reproduce the pattern off the litigation margin; dynamic trends are sensitive | [AN-008](../analyses/an-008-placebo-never-litigated.md) never-litigated placebo &minus;0.020 (SE 0.032), null; [AN-010](../analyses/an-010-dynamic-bjs-honestdid.md) BJS event study diagnostic, Honest-DiD does not survive at the observed maximum pre-period scale | **Supported (placebo); dynamics diagnostic** |
