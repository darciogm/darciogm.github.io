---
paper: sme-public
id: h7
slug: ipv-clock-admissible
title: "Pregão drop-out prices admit the IPV-clock interpretation as willingness-to-supply observations"
cluster: B
paper_section: "§3"
status: not_yet_tested
last_updated: 2026-05-21
---

# H:ipv-clock-admissible — Pregão drop-out prices admit the IPV-clock interpretation as willingness-to-supply observations

The structural decomposition rests on a single maintained restriction:
that losing-bidder drop-out prices in the BEC Pregão can be read as
type-specific willingness-to-supply observations under an independent
private values clock model. If drop-outs are produced by strategic
collusive rotation, by budget exhaustion, by sniping considerations,
or by non-truthful early exits, the interpretation as cost draws breaks
down and the decomposition becomes a price-formation re-weighting
exercise rather than a structural counterfactual.

> **Evidence strength: Not yet tested.**
> The full diagnostic battery — drop-out extraction
> ([AN-013](../analyses/an-013-pregao-dropouts.md)), unobserved
> heterogeneity correction
> ([AN-014](../analyses/an-014-uh-correction.md)), collusion screens
> ([AN-015](../analyses/an-015-collusion-screens.md)) — is partly run
> but not yet documented as AN pages. The maintained restriction is
> load-bearing for [H:exclusion-dominates](exclusion-dominates.md),
> [H:protected-pool-responds](protected-pool-responds.md), and the
> entire welfare arithmetic of Cluster C.

## Theory

In a benchmark IPV clock auction, the weakly-dominant strategy for each
bidder is to remain active until the price clock crosses the bidder's
private cost \citep{vickrey1961, milgrom1982}. The
losing exit price therefore equals the bidder's cost (or willingness to
supply at the auction scale). \citet{haile2003} extend this
to ascending auctions with weaker restrictions, providing bounds on the
underlying value distribution from observed exits.
\citet{athey2002} survey nonparametric conditions under which
ascending-auction exit data identify the type-conditional cost
distributions. The IPV-clock reading is therefore well-supported in
theory; the empirical question is whether it survives the specific
features of BEC Pregão (re-bidding, time pressure, observable competitor
exits).

## Prediction

The structural decomposition $(S_1, S_2, S_3)$ should survive (i) a
cross-modality check against a GPV recovery from Convite first-price
bids; (ii) the auction-level Krasnokutskaya-style heterogeneity
correction with reasonable ICC magnitudes; (iii) classical bid-rigging
screens (Bajari-Ye, Schurter, pair classification) that show no shift
in bidder coordination across the policy break. Convergence across all
three would upgrade this hypothesis from "Not yet tested" to "Supports".

## Competing prediction

**Collusive cover-bidding.** If the post-policy SME pool exhibits more
coordinated cover-bidding than the pre-policy pool (perhaps because the
fewer eligible firms repeatedly meet each other), drop-outs no longer
reveal costs. The post-policy $S_3$ would then be a *strategically
suppressed* exit distribution rather than a structural cost
distribution. The collusion screens are the load-bearing rule-out;
[H:no-collusion-confound](no-collusion-confound.md) is the joint
disciplinary check.

## Setting evidence

BEC Pregão records every bid in the event log, including losing
drop-outs. The auction format is a digital English-reverse: the clock
moves downward, firms can re-bid until they exit, and final-state
prices are observed. Documentation in
[docs/data.md](../paper.md#data-and-sample) confirms the structural
sample comes from these event logs.

## Empirical test

- *Cross-modality check*: GPV inversion of Convite first-price bids in
  the same product cells, compared to the Pregão drop-out recovery.
- *Heterogeneity correction*: Krasnokutskaya method-of-moments
  variance decomposition; auction-level ICCs reported by cell.
- *Collusion screens*: Bajari-Ye, Schurter, and pair-classification
  tests applied to pre- vs post-policy bid distributions.
- *Censoring sensitivity*: Turnbull NPMLE treating the winner's final
  price as left-censored, compared to the baseline upper-bound treatment.

## Data requirements and limitations

The full battery requires (i) the BEC Pregão event log
(`v7-jpube-tight/scripts/35_pregao_dropouts.R` extraction), (ii) Convite
first-price data for the cross-modality check, and (iii) firm-pair
historical co-bidding for the pair-classification screen. All three are
in hand; the ANs are scaffolded but not yet authored.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-013](../analyses/an-013-pregao-dropouts.md) | Pending | Drop-out extraction from BEC event log; per-cell coverage of the structural sample. |
| [AN-014](../analyses/an-014-uh-correction.md) | Pending | Krasnokutskaya-style heterogeneity correction; ICC range across cells. |
| [AN-015](../analyses/an-015-collusion-screens.md) | Pending | Bajari-Ye, Schurter, pair-classification screens — load-bearing for whether drop-outs admit the IPV reading. |

## Open tests

### Cross-modality convergence test

`v7-jpube-tight/scripts/38_cross_modality.R` recovers a GPV cost
distribution from Convite first-price bids. Convergence with the Pregão
drop-out distribution would be the cleanest external validation.
Currently a robustness exercise; deserves an AN page of its own.

### Turnbull NPMLE on winner censoring

`v7-jpube-tight/scripts/48_turnbull_fc.R` treats the winner's final
price as left-censored rather than as an upper-bound observation. The
decomposition should survive both treatments. Documented in paper §6
robustness but not yet as a standalone AN.

### Within-firm cost-distribution stability

If individual firms' drop-out behavior reflects strategic considerations
rather than truthful cost revelation, within-firm cost distributions
should shift discontinuously across the policy break. Not yet specified.
