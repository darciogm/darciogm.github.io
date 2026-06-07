---
paper: sme-public
id: h7
slug: ipv-clock-admissible
title: "Pregão drop-out prices admit the IPV-clock interpretation as willingness-to-supply observations"
cluster: B
paper_section: "§3, §6.2, §6.4, OA-C"
status: partial
last_updated: 2026-06-07
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

!!! abstract "Intuition (plain-language)"
    The entire structural exercise rests on one reading: in a descending-clock reverse auction, the price at which a losing firm drops out is the lowest price it would accept — its cost. If that reading holds, drop-outs reveal each firm's willingness to supply and the decomposition is a genuine cost-based counterfactual. If firms instead drop out for strategic reasons (collusion, sniping, budget limits), the numbers become a price-formation re-weighting exercise rather than structural primitives. This is the load-bearing assumption of the paper.

> **Evidence strength: Partial (toward Supports).** The IPV-clock
> interpretation is now disciplined on **five independent margins**,
> each addressing a different deviation from the IPV benchmark.
> **(i) Censoring** (Turnbull NPMLE,
> [AN-013](../analyses/an-013-pregao-dropouts.md)): exclusion share
> 74% (non-pharma) and 82% (pharma) under the most-agnostic winner
> treatment — same direction as baseline. **(ii) Auction-level scale
> shocks** ([AN-014](../analyses/an-014-uh-correction.md)):
> Krasnokutskaya correction with ICCs 0.36–0.59 leaves the
> decomposition intact; a Gaussian-copula relaxation with within-auction
> cost correlation up to ρ_c=0.3 drifts the exclusion share by <5 pp
> and the total effect by <10%. **(iii) Cross-modality discipline**
> ([AN-019](../analyses/an-019-cross-modality-gpv.md)): Convite GPV vs
> Pregão drop-out recoveries line up in the key pharma non-SME cell.
> **(iv) Bidder coordination**
> ([AN-015](../analyses/an-015-collusion-screens.md)): Conley-Decarolis
> close-pair shares and Bajari-Ye T1 ratios both stable or falling
> post-cutoff — no differential-coordination shock.
> **(v) Exit-at-cost itself** (paper §6.2, Online Appendix OA-C): the
> sharpest version of the threat is bounded directly. Following
> Haile–Tamer (2003), exits are treated as bounds on cost rather than
> costs; a markup *common* to all bidders cancels in the decomposition
> differences, so only a **type-differential** markup can overturn the
> ordering. In the worst case (SME costs pushed below exits, non-SMEs at
> face value, entry held fixed) the exclusion-dominant ordering survives
> a differential markup up to **0.29 of the exit price in
> non-pharmaceuticals** and the **entire [0, 0.30] grid in
> pharmaceuticals** — a reversal would require SMEs to leave ~30% more
> surplus unbid than non-SMEs at *every* auction, in the direction that
> already biases against the finding. The diagnostics do not *prove* IPV;
> they show the conclusion survives bounded departures from it, and is
> not mechanically produced by the most obvious deviations. Yellow
> remains appropriate — the convergence of five margins is the strongest
> within-project discipline, but cross-jurisdictional replication is the
> only path beyond it.

## Theory

In a benchmark IPV clock auction, the weakly-dominant strategy for each
bidder is to remain active until the price clock crosses the bidder's
private cost (Vickrey 1961; Milgrom and Weber 1982). The
losing exit price therefore equals the bidder's cost (or willingness to
supply at the auction scale). Haile and Tamer (2003) extend this
to ascending auctions with weaker restrictions, providing bounds on the
underlying value distribution from observed exits.
Athey and Haile (2002) survey nonparametric conditions under which
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
in bidder coordination across the policy break; and (iv) a direct
relaxation of exit-at-cost itself — treating exits as Haile–Tamer
bounds and bounding how large a *type-differential* exit markup the
exclusion-dominant ordering can absorb. Convergence across these
margins would upgrade this hypothesis from "Not yet tested" to
"Supports".

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
| [AN-013](../analyses/an-013-pregao-dropouts.md) | Supports | Three winner-censoring regimes (losers-only / all-bidders / Turnbull) give net $S_3-S_1$ in [0.246, 0.275] (NP) and [0.308, 0.357] (PH); all positive, all large. Turnbull exclusion share 74% (NP) / 82% (PH). |
| [AN-014](../analyses/an-014-uh-correction.md) | Supports | UH correction with ICCs 0.36 (NP-SME) to 0.59 (PH non-SME). Gaussian-copula ρ_c ≤ 0.3: exclusion share drift <5 pp; total drift <10%. |
| [AN-015](../analyses/an-015-collusion-screens.md) | Supports | Conley close-pair shares stable in NP (16.9→16.8) / fall in PH (27.6→24.4); Bajari-Ye T1 ratios fall in both classes (NP 2.63→1.83; PH 1.29→1.11). Differential-coordination story rejected. |
| [AN-019](../analyses/an-019-cross-modality-gpv.md) | Supports (partial) | Cross-modality GPV from Convite first-price aligns with Pregão drop-outs in the load-bearing pharma non-SME pre cell (c₀.₅₀ = 0.712 vs 0.704); other 7 cells show a persistent ~0.2 wedge consistent with first-price bid shading. UH-corrected version broadens alignment (§6.2). |
| Exit-at-cost relaxation (§6.2, OA-C) | Supports | Exits treated as Haile–Tamer bounds, not costs. A common markup cancels in the decomposition differences; only a type-differential markup binds. Worst case (SME costs below exits, non-SMEs at face value, entry fixed): exclusion-dominant ordering survives a differential markup up to **0.29** of the exit price (non-pharma) and the **entire [0, 0.30] grid** (pharma). Reversal requires SMEs to under-bid ~30% more surplus than non-SMEs at every auction. |

## Open tests

### Exit-at-cost departure bound (Lever A)

**Done** (paper §6.2, Online Appendix OA-C, Table OA-2;
`scripts/64_ipv_slack_bounds.R`). The sharpest version of the threat —
that drop-outs sit strictly *above* cost because firms quit the clock
while still profitable — is bounded directly rather than assumed away.
Following Haile–Tamer (2003), exits bound costs. Two channels:
the *mechanical* Haile–Tamer increment bound is tight because BEC's
electronic Pregão runs a near-continuous price clock; the *behavioral*
channel (quitting while profitable) is what is bounded here. Because the
decomposition compares order statistics across pools, a markup *common*
to all bidders cancels in $S_2-S_1$ and $S_3-S_2$, so the binding
departure is a **type-differential** markup
$c = \text{exit}\times(1-m_k)$. Sweeping the worst case for the
conclusion ($m_{\neg\mathrm{SME}}=0$, raising $m_{\mathrm{SME}}$, entry
held at observed rates), the exclusion-dominant ordering (net effect
positive *and* absolute exclusion share above one half) survives a
differential markup up to **0.29** of the exit price in non-pharma and
**through the entire [0, 0.30] grid** in pharma. The conclusion reverses
only if SMEs systematically leave nearly thirty percent more of their
surplus unbid than non-SMEs at every auction — a behavioral asymmetry
larger than the data suggest, and in the direction already biasing
against finding exclusion to dominate.

### Cross-modality convergence test

**Done** in [AN-019](../analyses/an-019-cross-modality-gpv.md):
Convite first-price GPV vs Pregão drop-outs. Load-bearing pharma
non-SME pre cell aligns (0.712 vs 0.704); other 7 cells show
~0.2 first-price wedge consistent with strategic bid shading. UH-
corrected version broadens alignment per paper §6.2. **Open**: emit
the UH-corrected table as macro-bound numbers (currently figure-only),
and run a KS / quantile-equality test by cell for formal $p$-values.

### Turnbull NPMLE on winner censoring

`v7-jpube-tight/scripts/48_turnbull_fc.R` treats the winner's final
price as left-censored rather than as an upper-bound observation. The
decomposition should survive both treatments. Documented in paper §6
robustness but not yet as a standalone AN.

### Within-firm cost-distribution stability

If individual firms' drop-out behavior reflects strategic considerations
rather than truthful cost revelation, within-firm cost distributions
should shift discontinuously across the policy break. Not yet specified.
