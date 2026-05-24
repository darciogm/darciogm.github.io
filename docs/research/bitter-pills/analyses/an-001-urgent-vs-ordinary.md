---
id: an-001
hypothesis: urgent-costlier-less-competitive
type: causal
question: Does urgent procurement cost more and draw fewer bidders than ordinary procurement, within item, year, and buyer?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "Urgent purchases run +5.4% on the negotiated price, draw 5.4% fewer bidders, and clear +2.1pp more often — within item, year, and buyer."
created: 2026-05-24
script: v9-jpube-short/analysis/50_v9_outputs.py
target: v9-jpube-short/output/tables/tab_urgent_and_bounds.tex
tags: ["H:urgent-costlier-less-competitive", urgent, motivation, prices, competition, causal]
design:
  sample: "BEC group 65 São Paulo pharmaceutical procurement, 2009–2019; winners-only price sample of 196,883 accepted winning bids for price outcomes; the 479,330 purchase-offer-item universe for competition and success margins"
  specification: "Item-level regression of each outcome on an urgent indicator with item, year, and purchasing-buyer-unit (PBU) fixed effects; standard errors clustered by PBU"
  notes: "Motivational contrast that establishes the cost of the urgent environment, not the court-sanction design; urgent purchases differ from ordinary ones on timing, lot size, and item mix at once"
---

# AN-001: Urgent vs ordinary pharmaceutical procurement

!!! abstract "Intuition (plain-language)"
    Buying in a hurry costs more. When a pharmaceutical purchase has to clear on a tight deadline, the state cannot wait for a deep field of bidders or batch the order into a large lot, so prices come in higher and fewer firms compete. Within the same item, year, and buyer, urgent purchases run about 5.4% more expensive on the negotiated price, draw roughly 5.4% fewer bidders, and are slightly more likely to clear. This sets the stage — it tells us the urgent environment is the costly one — but it is not yet the court-sanction design.

## Question

Does urgent pharmaceutical procurement cost more and draw fewer bidders than
ordinary procurement, holding the item, the year, and the purchasing buyer
fixed? This is the motivational fact for the paper: it describes the terrain on
which judicial urgency operates. It is **not** the sanction-exposure design —
the court-mandated versus closest-administrative-urgent contrast is taken up in
[AN-002](an-002-lee-bounds.md).

## Design

- **Sample**: BEC group 65 São Paulo pharmaceutical procurement, 2009–2019. The
  winners-only price sample of 196,883 accepted winning bids drives the price
  outcomes; the 479,330-observation purchase-offer-item universe drives the
  competition and success margins.
- **Variation**: urgent versus ordinary procurement.
- **Specification**: item-level regression of each outcome on an urgent
  indicator, with item, year, and purchasing-buyer-unit (PBU) fixed effects.
  Standard errors are clustered by PBU.
- **Outcomes**: log negotiated price, log reference price, log number of
  bidders, tender-success indicator.

## Results

| Outcome | Coefficient (SE) | Implied effect |
|---|---:|---:|
| Log negotiated price | 0.053 (0.016) | +5.4% |
| Log reference price | 0.027 (0.014) | +2.7% |
| Log number of bidders | −0.056 (0.014) | −5.4% |
| Tender success | 0.021 (0.006) | +2.1pp |

*Item + year + PBU fixed effects. SE clustered by PBU.*

Output: `v9-jpube-short/output/tables/tab_urgent_and_bounds.tex` (Panel A).

## Interpretation

The urgent environment is the costly, thinner one. The negotiated price rises
about 5.4% under urgency while the reference price rises by only about 2.7%, so
urgency shifts the realized price by more than it shifts the benchmark. The
bidder pool thins by roughly 5.4%, consistent with a compressed entry window,
and urgent tenders clear about 2.1 percentage points more often, consistent with
deadline pressure pushing tenders to completion. The pattern is coherent across
the price and competition margins.

Confidence: **yellow.** This is a descriptive, motivational contrast read as
such: urgent purchases differ from ordinary ones along several dimensions at
once — timing, lot size, item mix — so the urgent coefficient bundles the
urgency channel with composition. The within-item, within-year, within-buyer
structure narrows the composition story but does not rule it out; that work is
done by the within-firm-buyer-item analysis in
[AN-003](an-003-within-firm-pricing.md) and the never-litigated placebo in
[AN-008](an-008-placebo-never-litigated.md). The reading is yellow throughout
the paper because the evidence is from a single jurisdiction (São Paulo BEC) and
own-project runs rather than independent replication.

## Follow-ups

- Decompose the urgent price gap into the entry margin and the lot-size margin,
  tying this motivational fact to the lost-scale mechanism in
  [AN-005](an-005-pricing-sourcing-decomposition.md).
- Re-estimate the urgent contrast within finer therapeutic classes to gauge how
  much of the gap survives tighter composition controls, complementing
  [AN-008](an-008-placebo-never-litigated.md).
- Carry the urgent contrast into the court-sanction design, where urgency is
  held fixed and selection is bounded — see [AN-002](an-002-lee-bounds.md).
