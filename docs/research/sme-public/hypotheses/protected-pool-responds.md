---
paper: sme-public
id: h6
slug: protected-pool-responds
title: "Post-policy SME participation rises but does not recreate the lost competitive discipline"
cluster: B
paper_section: "§4"
status: partial
last_updated: 2026-05-21
---

# H:protected-pool-responds — Post-policy SME participation rises but does not recreate the lost competitive discipline

The set-aside protects SME firms from non-SME competition. If protected
firms enter in numbers and on costs comparable to the excluded non-SMEs,
the protected pool can recreate the price-forming discipline. The data
say it does the first (entry rises sharply) but not the second (the
realized post-policy price remains above the open benchmark).

> **Evidence strength: Partial (strongly supported).**
> [AN-010](../analyses/an-010-bne-decomposition.md) shows the post-policy
> SME bidder count roughly doubles (0.94 → 1.87 NP; 0.55 → 1.22 PH).
> [AN-030](../analyses/an-030-entry-rates-cost.md) extends:
> (i) Pre→Post asymmetric — SME +99% NP but non-SME −44%, **net loss of
> 0.25 bidders per auction**; (ii) Calibrated entry costs **4.7× higher
> for non-SMEs** (κ = R$2.57 vs R$0.54 NP) — explains why SMEs cannot
> structurally replace non-SMEs (different cost-vs-win-prob equilibrium);
> (iii) Dominance ordering survives 2×2 method grid: intensive share
> ∈ [67.9%, 99.7%] across 8 cells. The protected-pool offset is real,
> bounded, and well-characterized.

## Theory

Entry models of procurement (Levin and Smith 1994; Athey, Levin and
Seira 2011) predict that protected-pool participation responds to the
reservation rents created by removing rival bidders. Under
type-conditional cost dispersion, the protected pool's contribution to
the price-forming order statistic depends on (i) how many additional SMEs
enter and (ii) how their cost distribution compares to the excluded
non-SMEs'. The data on the BEC structural sample inform both margins
simultaneously: drop-outs identify the cost distribution; the bidder
count identifies the participation response.

## Prediction

(i) The number of SME bidders per auction in switched group 65 should
rise sharply between the pre-period (open auctions) and the post-period
(SME-only). (ii) Despite this rise, the realized post-policy price $S_3$
should remain above the open benchmark $S_1$ — the entry response is
not enough to close the gap.

## Competing prediction

**Discouragement.** If the policy reduced expected SME rents (e.g.,
through perceived implementation friction or stricter scrutiny), SMEs
might *not* enter additional auctions. The data rule this out — SME
participation rises rather than falls. The relevant comparison is then
between the strength of the response and the size of the lost discipline.

## Setting evidence

Pregão entry is observed at the firm-auction grain. SME participation
rises from **0.94 → 1.87** SME bidders per auction in non-pharma
(roughly doubles), and from **0.55 → 1.22** in pharma. Non-SME
participation moves in the opposite direction but does not vanish:
**2.68 → 1.50** in non-pharma, **2.61 → 1.66** in pharma — a residual
non-SME presence persists because many auctions are above the R$80K
SME-eligibility ceiling and remain open. The composition shift on the
SME side is large and mechanical; the open question is whether the
additional SMEs are *cost-equivalent* to the excluded non-SMEs.

## Empirical test

- *Outcome variables*: (i) average number of SME bidders per auction
  pre vs post; (ii) simulated $E[c_{(2)}]$ under $S_3$ relative to $S_1$.
- *Variation*: pre vs post the March 2018 cutoff in switched group 65,
  with class-level (non-pharma standardized, pharma) decomposition.
- *Specification*: descriptive bidder-count tabulation + BNE simulation
  with post-policy SME cost distribution.
- *Sample*: BEC Pregão drop-outs, structural cells.

## Data requirements and limitations

The interpretation of the protected-pool response combines additional
participation with changes in the *active* SME pool composition (selection
into the protected market, sourcing/technology changes, product-mix
changes). The $S_3 - S_2$ term is therefore *not* a pure entry parameter;
it is the net contribution of the post-policy SME pool to the
price-forming statistic.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-010](../analyses/an-010-bne-decomposition.md) | Supports | SME bidder count rises sharply post-cutoff in both non-pharma and pharma cells; $S_3 - S_1 > 0$ in both. The protected-pool response is real but does not close the price gap. |
| [AN-016](../analyses/an-016-pharma-boundary.md) | Pending | Pharma protected pool is thinner; composition changes more under the policy, making this hypothesis more fragile in pharma. |
| [AN-030](../analyses/an-030-entry-rates-cost.md) | Supports | Per-cell entry rates: NP Pregão SME +99%, non-SME −44%, net −0.25 bidders/auction. Entry cost 4.7× higher for non-SMEs. Decomposition grid: intensive share ∈ [67.9%, 99.7%] across 8 cells, all > 50%. |

## Open tests

### Mechanism decomposition of $S_3 - S_2$

Split the offset into a pure participation channel and a pure
composition-of-active-SMEs channel. The strict-invariance specification
([AN-017](../analyses/an-017-strict-invariance.md)) sets one of the two
to zero by construction; cross-comparing the two would identify which
margin drives the offset.

### Phased adoption sensitivity

`v7-jpube-tight/scripts/70_phased_adoption.R` simulates a counterfactual
phased SME-only rollout. The protected-pool response should be smaller
under phased rollout (less concentrated entry incentive); the simulation
would test whether the dominance ordering of
[H:exclusion-dominates](exclusion-dominates.md) is robust to that
implementation choice.
