---
paper: bitter-pills
id: h5
slug: lost-scale
title: "Court-mandated buying gives up scale: administrative urgent orders are larger and capture bulk discounts"
cluster: C
paper_section: "§4 + §5"
status: partial
last_updated: 2026-05-24
---

# H:lost-scale — Court-mandated buying gives up scale: administrative urgent orders are larger and capture bulk discounts

If the under-the-gun gap is not a broad same-firm markup in deep markets, where
does the cost come from? The first sourcing channel is **lost scale**. Court
mandates compel the state to source isolated emergencies one case at a time,
while the administrative channel batches urgent demand into larger orders.
Larger orders earn volume discounts, so the court-mandated channel forgoes the
bulk-discount margin. The pricing-versus-sourcing decomposition shows that the
quantity/scale component is the dominant piece of the observed gap.

!!! abstract "Intuition (plain-language)"
    Buying one box at a time costs more per box than buying a pallet. Court orders force the state to source individual, urgent cases, so the lots stay small. The administrative urgent route, by contrast, batches demand into much larger orders — about 3.3 times larger — and larger orders pull volume discounts. When we decompose the price gap, the lost-scale piece is the big one: holding pricing fixed, the smaller court-ordered lots account for most of the cost difference. The court does not change what a supplier would charge for the same lot; it changes the size of the lot the state is allowed to buy.

> **Evidence strength: Partial (strongly supported).**
> Administrative urgent orders are about **3.3× larger** than litigated orders,
> and the estimated bulk-discount elasticity is **−0.329**
> ([AN-005](../analyses/an-005-pricing-sourcing-decomposition.md)). In the same Figure 1
> decomposition ([AN-005](../analyses/an-005-pricing-sourcing-decomposition.md)),
> the observed administrative-minus-litigated gap is −22.8%, of which the
> quantity/scale component is **−32.8%** (the dominant piece), the within-firm
> pricing component is +3.5% (near zero), and a supplier-composition residual is
> +10.9%. The within-firm near-zero term is consistent with the deep-market null
> ([H:no-broad-same-firm-markup](no-broad-same-firm-markup.md)); the scale
> component is what carries the gap.

![Pricing-versus-sourcing decomposition of the administrative-minus-litigated gap: quantity/scale dominates](../assets/figures/fig_sourcing_vs_pricing_v10.png)

## Theory

Demand aggregation is one of the central levers of procurement performance:
pooling requirements into larger lots lets the state move down the supplier's
cost curve and capture volume discounts \citep{lin2025}. The passive-waste view
\citep{bandiera2009} predicts that institutional features which fragment demand
— here, one-sided legal urgency that forces case-by-case sourcing — raise costs
not through corrupt pricing but through lost scale. The mechanism is mechanical
in the bulk-discount elasticity: if larger orders command lower unit prices,
then a regime that shrinks order size raises unit cost even when no supplier
marks anything up. This is why the decomposition holds within-firm pricing fixed
and reads the scale component separately.

## Prediction

- Administrative urgent orders should be **larger** than litigated urgent orders.
- The bulk-discount elasticity should be **negative** (larger orders, lower unit
  price).
- In the decomposition, the **quantity/scale component** should be a large
  negative share of the observed gap, while the within-firm pricing component is
  near zero.

## Competing prediction

**Pricing, not scale.** The alternative is that the gap is driven by what
suppliers charge rather than by how much the state buys — i.e., the cost lives
in the within-firm pricing term, not the quantity term. The decomposition
rejects this: the within-firm pricing component is +3.5% (near zero), while the
quantity/scale component is −32.8%. A second alternative is that the
supplier-composition residual (+10.9%) carries the story; that residual is a
**reconciliation residual, not standalone proof of sourcing** — it must be read
together with the winner-switching evidence in
[H:supplier-set-reallocation](supplier-set-reallocation.md), which provides the
direct supplier-set evidence.

## Setting evidence

The litigated channel sources individual court-ordered cases under tight
deadlines, which keeps lot sizes small. The administrative channel, authorized
by the SES/SP scientific committee, can batch urgent demand into larger orders.
The roughly 3.3× size difference is a direct institutional consequence of how
each channel aggregates (or fails to aggregate) urgent demand. The policy
implication in [docs/paper.md](../paper.md) — framework agreements and pooled
urgent procurement to restore scale — follows directly from this margin.

## Empirical test

- *Outcome variables*: order size (quantity) by regime; log negotiated price as
  a function of order size (bulk-discount elasticity).
- *Decomposition*: administrative-minus-litigated gap split into a
  quantity/scale component, a within-firm pricing component, and a
  supplier-composition residual (Figure 1).
- *Specification*: aggregation-cell analysis relating unit price to lot size,
  plus the additive decomposition of the observed gap.
- *Sample*: urgent panel; aggregation cells for the elasticity.

## Data requirements and limitations

Requires the BEC urgent panel with order quantities and the decomposition
inputs. The decomposition is **accounting**, not a structural counterfactual: it
allocates the observed gap into additive components under a fixed scheme. The
supplier-composition term is a **reconciliation residual** that should not be
read as standalone proof of the sourcing mechanism; the direct sourcing evidence
is the winner-switching table in
[H:supplier-set-reallocation](supplier-set-reallocation.md). The bulk-discount
elasticity is estimated from observed lot-size variation and inherits the usual
caveats about unobserved item heterogeneity across lot sizes.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-005](../analyses/an-005-pricing-sourcing-decomposition.md) | Supports | Figure 1 decomposition (admin minus litigated): observed gap −22.8%; quantity/scale −32.8% (dominant); within-firm pricing +3.5% (near zero); supplier-composition residual +10.9% (a reconciliation residual, read with the winner-switching table). Administrative orders ~3.3× larger than litigated; bulk-discount elasticity −0.329, so larger lots earn lower unit prices. |
| [AN-009](../analyses/an-009-aggregation-cells.md) | Supports | Aggregation within buyer-item-month cells: administrative cells carry larger total accepted quantity (greater scale); litigated cells split demand across more repeated purchase-offer-items (more fragmented). Diagnostic, read with the decomposition and winner-switching evidence. |
| [`61_h4_quantity_quartiles.R`](../analyses/index.md) | Supports | Direct within firm-buyer-item bulk discount: holding firm, buyer, and item fixed, the log-quantity coefficient is −0.259 (SE 0.074). The quantity gradient in the within-firm price difference is this scale channel, not same-firm pricing. |

Cross-link: the near-zero within-firm pricing component echoes
[H:no-broad-same-firm-markup](no-broad-same-firm-markup.md); the
supplier-composition residual is interpreted through
[H:supplier-set-reallocation](supplier-set-reallocation.md).

## Open tests

### Counterfactual lot-size aggregation

Using the estimated bulk-discount elasticity (−0.329), simulate the unit price
the litigated channel would have paid had its demand been aggregated to
administrative-channel lot sizes. This would translate the lost-scale margin
into a concrete "scale-restored" price, sharpening the framework-agreement
policy lever — but it is a simulation, not a realized counterfactual, and should
be labeled as such.

### Separate within-molecule from across-molecule aggregation

The 3.3× size gap could reflect pooling within a molecule or shifting the mix of
molecules procured. Decomposing the scale margin into within- and
across-molecule aggregation would clarify which aggregation routine the policy
response should rebuild.
