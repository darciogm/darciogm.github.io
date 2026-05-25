---
paper: sme-public
id: an-003
hypothesis: distance-widens-under-open
type: causal
question: Does open competition widen the average distance between the public buyer and the winning supplier?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Open competition widens buyer-winner distance by +12.1 km on high-value items (p<0.01) but is null on low-value items (+2.8 km, p>0.10); the value-margin asymmetry is consistent with transport-cost amortization favoring larger non-SME firms on high-value contracts."
created: 2026-05-21
script: scripts/02_analysis.R
target: output/tables/tab_distance.tex
tags: ["H:distance-widens-under-open", didir, distance, geography, value-heterogeneity, item-cluster]
design:
  sample: "BEC completed items (oc_item_status == 1) with non-missing CEP geocoding for both buyer and winner; high-value/low-value split at item-value median"
  specification: "distance_km = η_i + γ Pre + β (g65 × Pre) + log(quantity) + sealed-bid + ε; item-clustered SE"
  fixed_effects: "item; PBU FE in second specification"
  cluster: "item"
---

# AN-003: DiDiR distance effect

!!! abstract "Intuition (plain-language)"
    Larger non-SME firms can ship farther, so opening the auction pulls the winning supplier about 12 km farther from the buyer — but only on high-value items, where a large order covers the extra freight. On small orders distance is flat. Geography is the visible signature of larger firms re-entering the pool.

!!! info "Reduced-form descriptive (not in the v8 manuscript)"
    Distance is a v1–v4 reduced-form outcome (`scripts/02_analysis.R` →
    `tab_distance.tex`). The v8 manuscript does **not** carry distance: it is
    a site-level descriptive that documents the *geographic signature* of
    larger non-SME firms re-entering the pool under open competition — the
    visible counterpart to the first-stage participation facts
    ([AN-002](an-002-didir-firms-bids.md), Table 1). The canonical policy
    result is the structural decomposition ([AN-010](an-010-bne-decomposition.md))
    and welfare arithmetic ([AN-011](an-011-welfare-arithmetic.md)). See the
    finding [Distant suppliers enter](../findings/distant-suppliers-enter.md).

## Question

Does open competition draw geographically distant non-SME suppliers
into the BEC procurement pool, widening the average buyer-winner
distance? And does this geographic-catchment channel vary with item
value as transport-cost amortization predicts?

## Design

- **Sample**: completed items with non-missing buyer and winner CEP
  geocodes; high-value/low-value split at the within-item value median.
- **Variation**: DiDiR as in [AN-001](an-001-didir-prices.md).
- **Specification**: outcome is buyer-winner distance in km; item-FE,
  PBU-FE alternating, item-clustered SE.
- **Outcomes**: distance (km), by value class.
- **Identification threats**: freight/logistics shock specific to
  group 65; ruled out by placebo ([AN-004](an-004-placebo-tests.md)).

## Results

| Sample | Distance β (km) | SE | p |
|---|---:|---:|---:|
| High-value items (above median) | +12.0849 | (2.9018) | <0.01 |
| Low-value items (below median)  | +2.8312  | (2.2944) | >0.10 |
| Pooled (18m, base specification) | +10.78  | (2.232)  | <0.01 |
| Pooled (18m, PBU FE)             | +10.80  | (2.233)  | <0.01 |

Output: `output/tables/tab_distance.tex`;
heterogeneity in
`output/tables/tab_heterog_value.tex`.

## Interpretation

The pooled DiDiR finds a meaningful distance widening (~11 km, p<0.01)
that decomposes cleanly along the value margin: +12.1 km on
high-value items, null on low-value items. The asymmetry tracks the
transport-cost amortization story directly — non-SMEs span a wider
geographic radius and can profitably bid distant only when the
contract value is large enough to absorb logistics. The null on
low-value items is *consistent* with the prediction but is not
diagnostic of an alternative reading.

Confidence: **yellow.** Distance is a coarse geographic proxy (single
CEP). The RAIS validation in [AN-009](an-009-sme-winner-extensions.md)
provides a richer firm-footprint measure but does not enter the
distance specification. The pooled estimate is stable across windows;
the value heterogeneity is the most-informative cut.

## Follow-ups

- Firm-size cross-cut: split the distance distribution by RAIS-employment
  quartile. Larger firms should drive the high-value compression; small
  firms should be unaffected.
- Item-class heterogeneity within group 65: distance compression by
  PADRAOdesc subcategory (medical equipment vs disposables vs reagents)
  would isolate where geographic competition matters most.
- Full operational footprint: replace single-CEP distance with the
  firm's RAIS establishment locations to bound the
  CEP-mismeasurement concern.
