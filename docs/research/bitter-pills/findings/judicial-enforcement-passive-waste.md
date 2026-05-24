# A judicial-enforcement form of passive waste

🟡 (interpretation) Taken together, the v9 results point to a
judicial-enforcement form of passive waste. A one-sided sanction — a court
order that compels delivery on a deadline — reliably secures the good, but it
does so by bypassing the procurement routines that would otherwise aggregate
demand and match buyers to suppliers. The selection-bounded under-the-gun gap
of **15.9%–21.1%** ([AN-002](../analyses/an-002-lee-bounds.md)), the near-zero
within firm-buyer-item coefficient of **0.035** in deep repeated markets
([AN-003](../analyses/an-003-within-firm-pricing.md)), and the supplier-set
reallocation across **2,134 item-buyer pairs** with Jaccard overlap **0.268**
and modal winner differing **70.2%** of the time
([AN-006](../analyses/an-006-winner-switching.md)) fit a single reading: the
extra cost is not an incumbent supplier extracting a broad same-firm markup
in deep repeated urgent markets, but the dissipation of scale and matching
when urgent orders are split off into small, fast, fragmented purchases.

The mechanism is passive in the precise sense that no party need behave
opportunistically for the cost to arise. The court secures the patient's
delivery; the buyer complies on the deadline; suppliers respond to the small,
urgent order in front of them. What is lost is the organizational routine —
batching demand, running a deeper tender, returning to an established
supplier — that ordinary procurement uses to obtain lower prices. The waste
is a by-product of how urgent enforcement interacts with procurement
structure, sitting at the intersection of the bounded urgency gap, the
deep-market same-firm null, and the documented supplier reallocation.

**Caveat.** This page is an interpretive synthesis of the three underlying
analyses, not a separate estimate. "Passive waste" is a framing of the
combined evidence and is not itself a measured quantity; the supporting
numbers carry their own caveats (Lee bounds rest on monotonicity; the
administrative channel is the closest feasible urgent-procurement comparison,
not a random or clean assignment; winner-switching statistics are
descriptive). The reading is 🟡 because the synthesis draws on single-source
own-project estimates in São Paulo BEC alone.

**Sources.**

- *Own analysis*: [AN-002](../analyses/an-002-lee-bounds.md) (bounded urgency
  gap), [AN-003](../analyses/an-003-within-firm-pricing.md) (within-firm
  deep-market null), [AN-006](../analyses/an-006-winner-switching.md)
  (supplier-set reallocation).
- *Cross-refs*:
  [H:utg-gap-selection-bounded](../hypotheses/utg-gap-selection-bounded.md);
  [H:no-broad-same-firm-markup](../hypotheses/no-broad-same-firm-markup.md);
  [H:supplier-set-reallocation](../hypotheses/supplier-set-reallocation.md).
- *Validation*: backing scripts `40_utg_lee_bounds.R`,
  `48_mechanism_evidence.R`, `50_v9_outputs.py`.
