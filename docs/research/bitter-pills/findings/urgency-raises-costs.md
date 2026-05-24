# Legal urgency raises procurement costs and weakens competition

🟡 In São Paulo's BEC procurement platform (BEC group 65, hospital and
pharmaceutical supplies, 2009–2019), purchase-order items procured under
legal urgency carry a negotiated price about **5.4% higher** than otherwise
comparable ordinary items (coef 0.053, SE 0.016), alongside a **2.7%**
higher posted reference price (0.027/0.014), **5.4% fewer** participating
bidders (−0.056/0.014), and a **2.1 percentage-point** higher tender-success
rate (0.021/0.006), estimated on the urgent panel of 56,803 observations
([AN-001](../analyses/an-001-urgent-vs-ordinary.md)).

The pattern is internally coherent: urgency raises the price the buyer
ultimately pays while thinning the field of competitors and lifting the
share of tenders that close. The reference-price movement indicates that the
shift is not purely a bargaining artifact at the negotiation stage but is
already visible in the posted parameters of urgent tenders. These estimates
come from the winners-only and urgent panels of the 479,330-observation POI
sample, with the urgent flag built from the project's text classifier
(764,362 classified purchase orders, 98.6% exact agreement against 179,148
ground-truth records, macro F1 0.94)
([AN-001](../analyses/an-001-urgent-vs-ordinary.md)).

**Caveat.** This is a descriptive contrast between urgent and ordinary items,
not a structural counterfactual. Urgent procurement is a selected channel:
urgent items are systematically larger and arise under different demand
conditions than ordinary ones, so the gap mixes the effect of urgency itself
with composition. The competition and success-rate movements are consistent
with, but do not by themselves isolate, a causal urgency channel. The reading
is 🟡 because it is a single-source own-project estimate in one jurisdiction
(São Paulo BEC); promotion to 🟢 would require independent replication in
another procurement system.

**Sources.**

- *Own analysis*: [AN-001](../analyses/an-001-urgent-vs-ordinary.md)
  (urgent-vs-ordinary price, reference price, bidder count, and success-rate
  contrasts).
- *Cross-refs*:
  [H:urgent-costlier-less-competitive](../hypotheses/urgent-costlier-less-competitive.md).
- *Validation*: backing scripts `48_mechanism_evidence.R`,
  `50_v9_outputs.py` (urgent-panel regressions and classifier diagnostics).
