---
id: h1
slug: urgent-costlier-less-competitive
title: "Urgent procurement is costlier and less competitive than ordinary procurement"
cluster: A
paper_section: "§2 + §5"
status: partial
last_updated: 2026-05-24
---

# H:urgent-costlier-less-competitive — Urgent procurement is costlier and less competitive than ordinary procurement

When the state must buy on a compressed deadline, the routines that build a
thick bidding pool and aggregate demand have less time to work. The lot is
smaller, fewer firms show up, and the negotiated price drifts up. This
hypothesis establishes that the *urgent environment itself* is more expensive
and thinner than ordinary pharmaceutical procurement. It is the **motivational**
fact that frames the paper — it describes the terrain on which judicial urgency
operates, but it is **not** the sanction-exposure design. The contrast between
court-mandated urgency and the closest administrative urgent comparison is taken
up separately in [H:utg-gap-selection-bounded](utg-gap-selection-bounded.md).

!!! abstract "Intuition (plain-language)"
    Buying in a hurry costs more. When a pharmaceutical purchase has to clear on a tight deadline, the state cannot wait for a deep field of bidders or batch the order into a large lot, so prices come in higher and fewer firms compete. We see this directly: urgent purchases run about 5.4% more expensive on the negotiated price, draw roughly 5.4% fewer bidders, and are slightly more likely to clear successfully. This sets the stage — it tells us the urgent environment is the costly one — but it does not yet isolate what the court sanction adds on top.

> **Evidence strength: Partial (strongly supported).**
> [AN-001](../analyses/an-001-urgent-vs-ordinary.md) reports a log
> negotiated-price coefficient of 0.053 (SE 0.016), about +5.4%, alongside a
> log reference-price coefficient of 0.027 (SE 0.014, ≈ +2.7%), a log
> number-of-bidders coefficient of −0.056 (SE 0.014, ≈ 5.4% fewer bidders), and
> a tender-success coefficient of 0.021 (SE 0.006, ≈ +2.1pp). The pattern is
> consistent across the price and competition margins. This is a descriptive,
> motivational contrast and is read as such — the sanction-exposure
> identification lives in Cluster B.

## Theory

Compressed procurement timelines limit the two margins that discipline price.
First, they shorten the window for bidder entry, so the price-forming order
statistic is drawn from a thinner pool — fewer competitors mean a higher
expected winning bid. Second, urgency forecloses demand aggregation: the buyer
cannot batch the requirement into a larger lot that would attract volume
discounts. Both forces are central to the passive-waste view of public
procurement \citep{bandiera2009}, in which slack in the buying process — not
corruption — drives much of the price gap, and to the broader institutional
account of procurement performance \citep{bosio2022, best2023}. Work on court
efficiency and procurement \citep{coviello2018} likewise links time pressure on
the contracting side to worse procurement outcomes.

## Prediction

Within pharmaceutical procurement, urgent purchases should show, relative to
ordinary purchases:

- a **higher** negotiated price (positive log-price coefficient);
- a **higher** reference price, but by less than the negotiated price (urgency
  shifts both the benchmark and the realized price);
- **fewer** bidders (negative log-bidder-count coefficient);
- a (weakly) **higher** tender-success rate, since urgent tenders are more
  likely to be pushed to completion under deadline pressure.

## Competing prediction

**Composition, not urgency.** If urgent purchases simply happened to involve
intrinsically more expensive molecules or harder-to-source items, the price gap
would reflect *what* is bought rather than *how fast*. Under this view the gap
should vanish once one conditions tightly on the item and the buyer. The
within-item structure of the regressions and, more pointedly, the
within-firm-buyer-item and never-litigated placebo analyses in Cluster B and
Cluster D are what separate the urgency channel from pure composition; this
motivational contrast does not by itself rule the composition story out.

## Setting evidence

São Paulo's pharmaceutical procurement runs on the electronic BEC platform,
which records bids at the offer level. Within the data, urgent demand is
flagged distinctly from ordinary, scheduled procurement. Urgent purchases face
the same auction procedures but compressed timelines and small quantities. The
institutional account in [docs/paper.md](../paper.md) describes how urgency
enters the procurement record and why it plausibly compresses both the entry
window and lot size.

## Empirical test

- *Outcome variables*: log negotiated price, log reference price, log number of
  bidders, and tender-success indicator.
- *Variation*: urgent vs ordinary pharmaceutical procurement within BEC group 65.
- *Specification*: item-level regression of each outcome on an urgent indicator
  with item and time controls and clustered standard errors.
- *Sample*: the winners-only price sample (196,883 bids) for price outcomes;
  the full purchase-offer-item universe (479,330 observations) for
  competition and success margins.

## Data requirements and limitations

Requires the BEC parquet cache covering São Paulo group-65 pharmaceutical
procurement, 2009–2019. The estimates are **descriptive** contrasts that
establish the cost of the urgent environment; they do not, on their own,
identify the effect of the *court sanction*, because urgent purchases differ
from ordinary ones along many dimensions at once (timing, lot size, item mix).
Treat this page as the motivation that the rest of the paper builds on, not as a
causal claim about sanctions. The sanction-related margin is identified only by
holding urgency fixed and bounding selection — see
[H:utg-gap-selection-bounded](utg-gap-selection-bounded.md).

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-001](../analyses/an-001-urgent-vs-ordinary.md) | Supports | Urgent vs ordinary: log negotiated price 0.053 (SE 0.016, ≈ +5.4%); log reference price 0.027 (SE 0.014, ≈ +2.7%); log #bidders −0.056 (SE 0.014, ≈ 5.4% fewer); tender success 0.021 (SE 0.006, ≈ +2.1pp). Establishes the costly, thinner urgent environment. |

## Open tests

### Decompose the urgent price gap into entry and lot-size channels

The motivational contrast bundles fewer bidders and smaller lots into a single
urgent coefficient. A mediation-style split — how much of the +5.4% price gap
runs through the −5.4% bidder margin versus the lot-size margin — would sharpen
the link between this motivational fact and the lost-scale mechanism in
[H:lost-scale](lost-scale.md). It is descriptive and not load-bearing for the
identification, but it would tie Cluster A to Cluster C more explicitly.

### Item-mix sensitivity

Re-estimate the urgent contrast within finer therapeutic classes to gauge how
much of the gap survives tighter composition controls, complementing the
never-litigated placebo in [AN-008](../analyses/an-008-placebo-never-litigated.md).
