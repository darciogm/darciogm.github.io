---
paper: bitter-pills
id: h6
slug: supplier-set-reallocation
title: "Legal urgency reallocates the winning supplier set"
cluster: C
paper_section: "§4 + §5"
status: partial
last_updated: 2026-05-24
---

# H:supplier-set-reallocation — Legal urgency reallocates the winning supplier set

The second sourcing channel is **supplier-set reallocation**. Beyond buying
smaller lots ([H:lost-scale](lost-scale.md)), court-mandated urgency changes
*who* wins. If we line up the same item bought by the same buyer under both
urgent regimes, the set of winning firms differs substantially across regimes —
often with no overlap at all, and usually with a different modal winner. This is
the direct evidence that legal urgency reallocates the supplier set, and it is
what gives the +10.9% supplier-composition residual in the decomposition its
interpretation. The cost margin in deep markets operates through *how the state
is forced to buy* — a reshuffled supplier set — rather than through an incumbent
marking up the same item.

!!! abstract "Intuition (plain-language)"
    Take the same medicine bought by the same buyer, once under a court order and once through the administrative urgent route, and ask: are the winning suppliers the same firms? Mostly not. In about half of these matched pairs the two regimes share no winning supplier at all, and in seven out of ten the single most common winner is a different firm. So legal urgency does not just change the price or the lot size — it changes the cast of suppliers the state ends up buying from. That reshuffling is a real sourcing channel, and it is why the decomposition leaves a supplier-composition piece that the same-firm pricing test alone cannot explain.

> **Evidence strength: Partial (strongly supported).**
> Across 2,134 item-buyer pairs observed under both regimes,
> [AN-006](../analyses/an-006-winner-switching.md) reports a mean winner-set
> Jaccard similarity of **0.268**, with **48.5%** of pairs sharing *no* winner
> overlap and the modal winner differing in **70.2%** of pairs. This is the
> direct sourcing evidence that gives the +10.9% supplier-composition residual in
> the Figure 1 decomposition ([AN-005](../analyses/an-005-pricing-sourcing-decomposition.md))
> its substantive reading; the residual on its own is a reconciliation residual,
> not standalone proof, and is meant to be read together with this
> winner-switching table.

![Cross-regime winner-set Jaccard (0.268) versus within-regime baseline churn (0.378)](../assets/figures/fig_winner_churn_v10.png)

## Theory

Procurement cost is shaped not only by price-per-lot but by *which* suppliers
the state matches with. In the passive-waste tradition \citep{bandiera2009},
institutional frictions that disrupt routine supplier matching can raise costs
even absent any change in posted prices, because the buyer ends up with a less
favorable supplier set. One-sided legal urgency disrupts the matching routine:
deadline pressure and case-by-case sourcing pull the state toward whichever
qualified firm can deliver *now*, rather than the firm that would win an
unconstrained urgent auction. The result is supplier-set reallocation — a
different cast of winners — which is observationally distinct from a same-firm
markup and from pure lot-size effects, and which the within-triple design
deliberately conditions away in order to isolate same-firm pricing.

## Prediction

For items bought by the same buyer under both urgent regimes, the **winning
supplier set should differ across regimes**: low Jaccard similarity, a high
share of pairs with no winner overlap, and a different modal winner in most
pairs. If sourcing were unchanged, these pairs would show high similarity and a
stable modal winner.

## Competing prediction

**Stable supplier set (sourcing unchanged).** The alternative is that the same
firms win regardless of regime, so the cost gap cannot be a sourcing
phenomenon — it would have to be price or scale. The winner-switching evidence
rejects this: mean Jaccard 0.268, 48.5% with no overlap, modal winner differs in
70.2% of pairs. A second alternative reads the +10.9% supplier-composition
residual as the whole sourcing story; that residual is a **reconciliation
residual, not standalone proof of sourcing**, which is precisely why this
hypothesis supplies the *direct* winner-switching evidence rather than leaning on
the decomposition term.

## Setting evidence

Because the two urgent regimes run the same BEC auction procedures on
overlapping items and buyers, the data contain 2,134 item-buyer pairs observed
under both regimes — the natural sample for asking whether the winning supplier
set is stable across regimes. The deadline-driven, case-by-case nature of
litigated sourcing, described in [docs/paper.md](../paper.md), is the
institutional reason the matching routine is disrupted under court mandate.

## Empirical test

- *Outcome*: similarity of the winning supplier set across regimes, per
  item-buyer pair.
- *Measures*: winner-set Jaccard similarity; share of pairs with zero winner
  overlap; share of pairs whose modal winner differs across regimes.
- *Sample*: 2,134 item-buyer pairs observed under both the litigated and
  administrative urgent regimes.

## Data requirements and limitations

Requires the BEC urgent panel with winner identities linked across regimes for
the same item-buyer pair. The measures are **descriptive** characterizations of
supplier-set turnover; they document that the winning set reshuffles under legal
urgency but do not by themselves price that reshuffling. The pricing magnitude
attached to supplier composition is the +10.9% decomposition residual in
[H:lost-scale](lost-scale.md), which is a reconciliation residual to be read
**together with** this winner-switching table, not as a standalone causal
estimate. Winner turnover could in principle reflect supply-side availability
shocks rather than the regime per se; the within-item-buyer structure limits but
does not fully eliminate that concern.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-006](../analyses/an-006-winner-switching.md) | Supports | 2,134 item-buyer pairs under both regimes: mean winner-set Jaccard 0.268; 48.5% with no winner overlap; modal winner differs in 70.2% of pairs. Direct evidence that legal urgency reallocates the supplier set. |
| [AN-005](../analyses/an-005-pricing-sourcing-decomposition.md) | Supports (interpretive) | Supplier-composition residual +10.9% in the Figure 1 decomposition; a reconciliation residual whose substantive reading rests on the winner-switching table above, not on the residual alone. |

Together with [H:lost-scale](lost-scale.md), this hypothesis makes the sourcing
case: court mandates change how the state buys — smaller lots and a reshuffled
supplier set — which is the mechanism behind the cross-cutting finding
[no broad same-firm markup](../findings/no-broad-same-firm-markup.md) in deep
markets.

## Reallocation exceeds baseline churn (run)

A skeptic could ask whether a 70.2% different-modal-winner rate is just normal
supplier turnover. It is not. Benchmarking the cross-regime winner-set similarity
against a within-regime placebo — randomly splitting each regime's purchases for
the same item-buyer pair into halves and computing their winner-set overlap
(`analysis/60_referee_tests.R`) — the within-regime baseline Jaccard is **0.378**,
while the cross-regime Jaccard is only **0.268** (a gap of **0.109**). The regime
change pushes winner-set overlap well **below** normal churn, so the reallocation
is specific to the litigated-versus-administrative contrast rather than
background turnover.

## Open tests

### Price the supplier switch directly

Rather than reading supplier composition off the decomposition residual,
estimate the price difference between the regime-specific winning firms holding
item and buyer fixed. A direct switch-price estimate would convert the
descriptive turnover statistics into a priced sourcing margin and reduce reliance
on the reconciliation residual.

### Characterize the replacement suppliers

Who wins under court mandate that would not win administratively? Profiling the
displaced versus replacement firms (size, distance, prior contract history)
would clarify whether the reallocation is toward less efficient suppliers, which
is what the lost-scale-plus-reallocation account implies, and would inform the
pre-contracted-supplier policy lever.
