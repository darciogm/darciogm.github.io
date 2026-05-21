---
paper: sme-public
id: h9
slug: preference-near-zero-cost
title: "A 10% SME price preference preserves the price-forming pool at near-zero static cost"
cluster: C
paper_section: "§5"
status: partial
last_updated: 2026-05-21
---

# H:preference-near-zero-cost — A 10% SME price preference preserves the price-forming pool at near-zero static cost

A static price preference is a non-exclusionary design alternative to a
set-aside. SMEs receive a percentage haircut applied to their bids for
*winner selection only*; all firms remain eligible to participate, and
the government pays the actual winning bid. Because non-SMEs continue
to discipline the price-forming order statistic, the simulated price
under a 10% SME price preference is essentially unchanged from the open
benchmark $S_1$, while SME win-rate rises. The preference is not a free
version of the set-aside — it delivers less redistribution — but it
shifts the static frontier.

> **Evidence strength: Partial (strongly supported).**
> [AN-012](../analyses/an-012-preference-benchmark.md) reports a price
> shift of **−0.004 NP / +0.002 PH** of the reference price under $V_3$
> (10% SME preference); SME win-rate gain **+4.3 pp NP / +1.4 pp PH**.
> [AN-024](../analyses/an-024-lambda-welfare-ci.md) extends this:
> the welfare ranking $V_3 \succ V_0$ holds across the entire λ grid
> [0.15, 0.45] in non-pharma under both main and strict-invariance
> specifications — the choice of λ does not flip the preference vs
> set-aside ordering. Pharma ranking is $V_3 \succ V_0$ under main spec
> across all λ but reverses to $V_0 \succ V_3$ under strict invariance
> (the boundary-case treatment).

## Theory

In an English clock auction with bid-shading or scoring, a percentage
preference applied to the SME bid for *selection only* (with the
government paying the actual winning bid) does not distort the
price-formation logic among non-SME bidders. The non-SMEs continue to
drop out at their costs; the SME's effective bid is shaded by the
preference for selection purposes. Provided the non-SMEs remain in the
auction in numbers comparable to the open regime, the price-forming
order statistic is essentially unchanged. The result is in the spirit
of price-preference analyses in Marion (2007) and Krasnokutskaya and
Seim (2011), where the design choice between exclusion and preference
maps onto different bidder-pool retention.

## Prediction

A 10% SME price preference simulated under the static BNE machinery
should produce $|\Delta p| \approx 0$ relative to $S_1$ in standardized
non-pharma. SME win-rate should rise by a meaningful but not enormous
margin. The benchmark is a *decomposition device*, not a policy forecast.

## Competing prediction

**Non-SMEs exit when preferred against.** If the preference makes
non-SMEs systematically lose, they may stop participating altogether
— in which case the preference behaves like a soft set-aside and the
static-cost result collapses. The static analysis holds entry fixed by
construction; an entry-elastic analysis would change the prediction.

## Setting evidence

São Paulo never operationalized a price preference in BEC. The
preference benchmark is therefore *not* identified from administrative
data; it is a *static design simulation* using the recovered cost
primitives. The reading is explicitly that of a *decomposition device*,
not a policy forecast. See paper §5 for the scope statement.

## Empirical test

- *Outcome variables*: $\Delta p = p^{V_3} - p^{S_1}$ (simulated payment
  shift); SME win-rate gain.
- *Variation*: counterfactual policy regime $V_3$ (10% SME price
  preference for selection) vs $S_1$ (open).
- *Specification*: BNE simulation with the recovered cost primitives;
  the SME bid is haircut by 10% for selection only, with the government
  paying the actual winning bid.
- *Sample*: structural cells (non-pharma standardized; pharma boundary).

## Data requirements and limitations

The preference benchmark inherits all maintained restrictions of the
structural decomposition ([H:ipv-clock-admissible](ipv-clock-admissible.md)).
It additionally holds entry fixed at the pre-policy level by
construction — an entry-elastic version would require a separate entry
model. The reading is explicitly *static* and *non-equilibrium*: it
asks the price-formation cost of preserving the non-SME bidder pool
under a non-exclusionary preference.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-012](../analyses/an-012-preference-benchmark.md) | Supports | $\Delta p$ = −0.004 NP / +0.002 PH at 10% preference; SME win-rate gain +4.3 pp NP / +1.4 pp PH. |
| [AN-024](../analyses/an-024-lambda-welfare-ci.md) | Supports | Welfare ranking $V_3 \succ V_0$ stable across λ ∈ [0.15, 0.45] in NP under both main and strict-inv specs. Ranking not λ-driven; determined by composition treatment in PH. |

## Open tests

### Optimal preference search

`v7-jpube-tight/scripts/61_optimal_preference.R` searches over preference
margins from 0% to 25%. The 10% headline is the cleanest design
benchmark; the search exposes the diminishing-returns curve and the
preference level at which non-SMEs start dropping out of the simulation.
Not yet documented as a standalone AN.

### Distributional incidence of the preference

`v7-jpube-tight/scripts/60_distributional_incidence.R` distributes the
SME win-rate gain across the SME firm-size distribution. If the gain
concentrates on *marginal* SMEs barely above the size cutoff, the
redistribution is different than if it spreads to *small* SMEs.
Important for evaluating the design against alternative SME-support
instruments (subsidies, training, micro-finance).

### Entry-elastic preference benchmark

The static reading holds entry fixed. A version with elastic entry —
where the preference shifts firms' decision to participate — would
test whether the near-zero price cost survives endogenous entry. Out
of scope for this paper but a clean follow-up.
