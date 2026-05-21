---
paper: sme-public
id: h4
slug: sme-winner-share-falls
title: "Open auctions reduce the probability that the winner is an SME"
cluster: A
paper_section: "§1 + §6"
status: partial
last_updated: 2026-05-21
---

# H:sme-winner-share-falls — Open auctions reduce the probability that the winner is an SME

If non-SMEs are systematically lower-cost on the price-forming margin
than SMEs are, allowing them into the auction should *reduce* the share
of SMEs that win. The composition channel is a direct consequence of
the same primitive that drives the price effect: type-specific
willingness-to-supply distributions differ between SMEs and non-SMEs.

> **Evidence strength: Partial.**
> The Gelbach (2016) decomposition
> ([AN-008](../analyses/an-008-gelbach-decomp.md)) finds the composition
> (SME-winner) channel accounts for +185% of the explained gap between
> the short and full regressions; competition partially offsets at &minus;85%.
> The extensions in [AN-009](../analyses/an-009-sme-winner-extensions.md)
> confirm the direction. The interpretation is straightforward but the
> decomposition leaves a large unexplained component — most of the price
> effect operates through channels not captured by the two mediators.

## Theory

In an independent-private-values English auction, the winner is the
lowest-cost active bidder. If non-SMEs draw from a stochastically lower
type-conditional cost distribution than SMEs do, removing them flips the
winner from a non-SME to an SME with positive probability. The
composition shift is a *direct mechanical consequence* of the type-cost
gradient — and only one component of the total price effect, since the
remaining SMEs also reset their bids in the absence of the disciplining
non-SMEs.

## Prediction

The probability that the winning firm is an SME in switched group 65
should be *lower* in the pre-period (open) than in the post-period
(SME-only), relative to always-treated controls. A Gelbach decomposition
of the price effect should load a substantial share onto the SME-winner
mediator.

## Competing prediction

**Sample-selection on completion.** The probability of completion may
differ between open and SME-only regimes, biasing the conditional
SME-winner share. The Lee bounds in
[AN-005](../analyses/an-005-lee-bounds.md) speak to the price-margin
selection but not directly to the composition margin. A composition-margin
Lee bound is on the open-test list.

## Setting evidence

BEC records the CNPJ of the winning firm. SME status is computed from
the Receita Federal CNPJ-Raiz registration grain (where SME-eligibility
is set under the federal SME law's revenue thresholds). The composition
margin is well-defined for every completed item.

## Empirical test

- *Outcome variable*: 1\{winner is SME\}, by item.
- *Variation*: DiDiR; Gelbach short-vs-full decomposition.
- *Specification*: linear probability model with item FE; Gelbach
  comparison adds (i) log firms, (ii) SME-winner as mediators to the
  short price equation.
- *Sample*: completed items.

## Data requirements and limitations

The SME-winner indicator depends on the CNPJ-Raiz revenue classification,
which is updated annually. Firms that cross the SME threshold
mid-window are treated by their latest classification — a small share but
worth flagging. The Gelbach decomposition does not separate the
*type-cost gradient* from *selection into the pool*; that is the job of
the structural decomposition
([H:exclusion-dominates](exclusion-dominates.md)).

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-008](../analyses/an-008-gelbach-decomp.md) | Supports | Composition channel +185% of the Gelbach gap; competition channel &minus;85% (partial offset). Large unexplained (~&minus;0.123) component remains in the full regression. |
| [AN-009](../analyses/an-009-sme-winner-extensions.md) | Supports | Reduced-form extensions: open competition lowers SME winner probability; effect symmetric across direct/indirect administration PBUs. |

## Open tests

### Composition-margin Lee bounds

The Lee (2009) selection-bound logic applied to the SME-winner indicator
would tighten the composition reading against differential completion.
Not yet specified.

### Cross-cut by non-SME firm size

If the composition shift is driven by *large* non-SMEs winning under open,
the result has different policy interpretation than if it is driven by
*marginal* non-SMEs barely above the SME threshold. A RAIS-employment
quartile cut on winners (planned, not run) would distinguish them.
