---
paper: sme-public
id: h2
slug: entry-thickens-pool
title: "Open auctions attract more firms and more valid bids than SME-only auctions"
cluster: A
paper_section: "§1 + §6"
status: partial
last_updated: 2026-05-21
---

# H:entry-thickens-pool — Open auctions attract more firms and more valid bids than SME-only auctions

Eligibility expansion mechanically brings non-SME firms back into the
bidding pool. If that translates into observed bid activity, open-auction
procurements should record more participating firms and more valid bids
than SME-only procurements. The reduced-form margin is mechanical (the
non-SMEs were excluded before), but the magnitude is informative about
the depth of the non-SME response — and about whether the protected SME
pool fully replaces them under SME-only (it doesn't:
see [H:protected-pool-responds](protected-pool-responds.md)).

!!! abstract "Intuition (plain-language)"
    A set-aside literally bars non-SMEs from bidding, so reopening the auction must add firms and bids — that part is mechanical. What is informative is the *size* of the response: how many non-SMEs actually show up measures how much competitive pressure the set-aside was suppressing, and whether the protected SME pool was ever a full substitute for them. It was not.

> **Evidence strength: Partial (strongly supported).**
> Three converging channels documented:
> (i) **Headcount** — [AN-002](../analyses/an-002-didir-firms-bids.md)
> DiDiR β on log firms +0.18 (6m) → +0.10 (18m), p<0.01.
> (ii) **Extensive margin** — [AN-029](../analyses/an-029-bid-aggressiveness.md)
> shows completion rate rises +10.7 pp at 18m (p<0.01).
> (iii) **Composition / order statistic** — same AN: the price effect
> *survives* fixing N at 2, 3, or ≥5 firms (β = −0.09 to −0.11***);
> the price-forming gap shrinks by 2.7 pp full-sample (p<0.01).
> Pure-headcount explanation rejected — holding N fixed, removing low-cost
> non-SMEs shifts the price-forming order statistic (a composition/admissibility
> effect, not strategic "less aggressive" bidding, per v8).

## Theory

In English clock auctions with private values, more bidders shift the
distribution of the second-order statistic downward (lower expected
payment) and raise allocative efficiency
\citep{milgrom1982, athey2002}. Entry into procurement
auctions has been studied as endogenous to expected rents (Levin and
Smith 1994; Athey, Levin and Seira 2011); SME-only rules act as an
entry-eligibility shock by removing the non-SME bidder pool from the
choice menu.

## Prediction

Log number of bidder firms and log number of valid bids in switched
group 65 should be *higher* in the pre-period (open auctions) than in
the post-period (SME-only), relative to always-treated control groups.
Operationalized as DiDiR: coefficients on $g65 \times \text{Pre}$ in
the firm-count and bid-count equations should be positive and significant.

## Competing prediction

**Concurrent demand expansion.** A demand expansion specific to group 65
around March 2018 (e.g., hospital procurement bulk announcements,
public-health emergency provisions) would attract more bidders without
the price discipline interpretation. The placebo
([AN-004](../analyses/an-004-placebo-tests.md)) also shows significant
pre-treatment shifts in firm and bid counts — these reflect the
*gradual SME restriction rollout* across the control groups, not a
group-65-specific demand shock; see the [AN-004](../analyses/an-004-placebo-tests.md)
discussion of the secular trend.

## Setting evidence

BEC records every registered firm participation per item, including
those that submit no winning bid. The administrative grain therefore
includes both the *extensive margin* (firm registers for the item) and
the *intensive margin* (firm submits a valid bid). Both are recorded
in the parquet cache; both are DiDiR-able.

## Empirical test

- *Outcome variables*: log number of bidder firms, log number of valid
  bids (per item).
- *Variation*: DiDiR — same as [H:price-discipline-loss](price-discipline-loss.md).
- *Specification*: same DiDiR equation; item-clustered SEs.
- *Fixed effects*: item; PBU FE in second specification.
- *Sample*: **all items** (not restricted to completed) — firm and bid
  counts are defined for non-completed items too.

## Data requirements and limitations

The reduced-form firm-count effect attenuates with the window, which is
not a defect — it reflects the convergence in the control groups as the
SME restriction continued to be rolled out. The 18-month estimate
(~10% more firms) is the conservative read; the 6-month estimate (~22%)
is the cleanest "treatment effect" comparison but conflates more
pre-treatment seasonality.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-002](../analyses/an-002-didir-firms-bids.md) | Supports | DiDiR firms &beta; +0.178 to +0.182 (6m), +0.149 to +0.154 (12m), +0.093 to +0.100 (18m); all p<0.01. Bid-count direction same. |
| [AN-004](../analyses/an-004-placebo-tests.md) | Mixed | Pre-treatment placebo significant for firms (&beta; ~ &minus;0.10, p<0.01) — flagged in robustness as reflecting the secular SME-restriction rollout across control groups, not a group-65-specific cost shock. |
| [AN-010](../analyses/an-010-bne-decomposition.md) | Supports | Structural confirms: SME participation roughly doubles after the cutoff while non-SME participation falls — but the net post-policy bidder count is smaller than the pre-policy open count. |
| [AN-029](../analyses/an-029-bid-aggressiveness.md) | Supports | (a) Completion rate +10.7 pp at 18m; (b) Price β survives fixing N=2/3/≥5 at −0.09 to −0.11***; (c) price-forming gap shrinks −2.7 pp full sample. Two channels: extensive margin + composition/order-statistic (not behavioral aggressiveness). |

## Open tests

### Decompose the entry response by firm type

The reduced-form firm count combines the *removal* of non-SMEs and the
*entry response* of SMEs. The structural decomposition in
[AN-010](../analyses/an-010-bne-decomposition.md) separates them; the
reduced-form DiDiR does not. A composition-by-type cross-cut on the
DiDiR specification (planned, not run) would expose the SME-side
entry-response margin directly.

### Margin of intensive vs extensive

Are the bid-count gains driven by more firms registering (extensive) or
by each firm submitting more valid bids on the same item (intensive)?
Pregão re-bidding allows a single firm to submit many bids. A
within-firm bid-count decomposition would isolate the strategic
re-bidding margin.
