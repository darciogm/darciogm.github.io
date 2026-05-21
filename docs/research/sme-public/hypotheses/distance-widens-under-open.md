---
paper: sme-public
id: h3
slug: distance-widens-under-open
title: "Open auctions pull in geographically distant non-SME suppliers"
cluster: A
paper_section: "§1 + §6"
status: mixed
last_updated: 2026-05-21
---

# H:distance-widens-under-open — Open auctions pull in geographically distant non-SME suppliers

Non-SME firms tend to be larger and span a wider geographic radius than
SME firms in São Paulo's BEC ecosystem. If open auctions bring non-SMEs
back into the pool, the average buyer-winner distance should *widen*.
Conversely, SME-only rules should compress the geographic catchment of
the public buyer. The DiDiR distance effect tests this directly.

> **Evidence strength: Partial (strongly supported).**
> [AN-003](../analyses/an-003-didir-distance.md) reports +12.1 km
> high-value, null low-value. **The cleanest test is now in
> [AN-028](../analyses/an-028-rais-validation.md)**: the full-sample
> distance β = +14.25 km*** *vanishes* in the SME-validated subsample
> (β = −0.28, p>0.10) and stays null in the Micro (≤9) subsample
> (β = +3.06). The geographic-catchment widening is *entirely* a
> non-SME composition effect — RAIS-validated SMEs win locally; non-SMEs
> win at a wider radius. This is the strongest possible
> within-project decomposition of the distance channel.

## Theory

Procurement competition is shaped by transport and search costs (Carril
2021; Best, Hjort and Szakonyi 2023). Larger firms amortize logistics
across more contracts and can profitably bid in distant markets; smaller
SMEs face binding transport costs that confine them to a local catchment.
Removing larger firms from the pool therefore mechanically shrinks the
geographic supply radius — an effect that is bigger when transport is a
small share of contract value (i.e., on high-value items).

## Prediction

Average distance (km) from the public buyer to the winning firm in
switched group 65 should be *larger* in the pre-period (open) than in
the post-period (SME-only), relative to always-treated controls.
Operationalized as DiDiR on distance: the coefficient on
$g65 \times \text{Pre}$ should be positive and significant. The effect
should be larger for high-value items where transport-cost amortization
favors larger firms.

## Competing prediction

**Logistics shock.** A change in interstate freight cost, fuel price, or
toll structure specific to group 65 would shift the distance distribution
without the SME-composition interpretation. The placebo test on distance
([AN-004](../analyses/an-004-placebo-tests.md)) comes back null
(coefficients ~3.8 and &minus;1.2 km, both p>0.10), ruling out the
freight-shock confound.

## Setting evidence

BEC records the CEP (postal code) of every registered firm and PBU.
Geocoding from these CEPs to lat/lon gives a usable buyer-winner
distance for every completed item. The administrative grain is
item-level, so the distance variable is well-defined wherever
`oc_item_status == 1`.

## Empirical test

- *Outcome variable*: distance (km) from PBU to winner firm CEP.
- *Variation*: DiDiR.
- *Specification*: same DiDiR equation; item-clustered SEs.
- *Fixed effects*: item; PBU FE in second specification.
- *Sample*: completed items only (winner CEP defined).

## Data requirements and limitations

CEP-to-lat/lon geocoding inherits any errors in the original CEP database.
The distance variable is undefined for items without a winner. Distance
is a coarse proxy for the geographic-catchment channel — a richer
specification would use the firm's full operational footprint (e.g.,
RAIS-validated establishment locations) rather than a single CEP. The
RAIS validation is partially done in
[AN-009](../analyses/an-009-sme-winner-extensions.md) but does not enter
the distance specification yet.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-003](../analyses/an-003-didir-distance.md) | Mixed | High-value items: +12.1 km (p<0.01). Low-value items: +2.8 km (n.s.). Heterogeneous along the value margin as predicted by transport-cost amortization. |
| [AN-004](../analyses/an-004-placebo-tests.md) | Supports (via rule-out) | Pre-treatment placebo on distance null — rules out freight/logistics shock. |
| [AN-028](../analyses/an-028-rais-validation.md) | Supports | Distance β = +14.25 km full → −0.28 (null) in SME (≤49); stays null in Micro (≤9). Geographic-catchment effect is *entirely* a non-SME composition channel. |

## Open tests

### Decompose by firm-RAIS-employment size

A clean test of the SME-composition reading would split the distance
distribution by firm employment quartile (from the
[AN-009](../analyses/an-009-sme-winner-extensions.md) RAIS validation).
Larger firms should drive the post-2018 compression on high-value items;
small firms should be unaffected. Not yet run.

### Item-class heterogeneity

The high-value/low-value split is a coarse value cut. A finer cut by
PADRAOdesc (item subcategory) would isolate where geographic competition
matters most — e.g., medical equipment vs disposables vs reagents within
group 65.
