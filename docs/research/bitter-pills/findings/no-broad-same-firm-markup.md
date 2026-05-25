---
paper: bitter-pills
---

# No broad same-firm markup in deep repeated urgent markets

🟡 When the price comparison is taken within the same firm-buyer-item cell —
holding fixed the supplier, the buyer, and the exact product — the
administrative urgent coefficient is **0.035 (SE 0.041)**, indistinguishable
from zero. In deep, repeatedly traded urgent markets, the same supplier
selling the same item to the same buyer does not charge a broad same-firm
markup for urgency ([AN-003](../analyses/an-003-within-firm-pricing.md)).

This is a deep-market null, not a universal one. The within-firm-buyer-item
contrast is most informative precisely where the same trading relationship
recurs often enough to be estimated, which biases the estimable cells toward
high-volume, established product lines. The headline coefficient should
therefore be read as evidence that the urgency premium is not primarily a
matter of incumbent suppliers raising their own prices in deep repeated
markets — it shifts attention away from a same-firm pricing story and toward
the sourcing margin (see
[Fragmented sourcing is the margin](fragmented-sourcing-is-the-margin.md)).
The null is not universal, however: a residual within-firm gap persists in the
earlier period (the quantity dimension instead reflects scale, not same-firm
pricing — see
[The deep-market null is not universal](thin-market-leverage.md)).

**Caveat.** The near-zero within-firm-buyer-item coefficient applies to deep
repeated urgent markets only and must not be generalized to all markets: the
heterogeneity cuts in [AN-003](../analyses/an-003-within-firm-pricing.md)
show a residual within-firm gap in the earlier period (+0.117, administrative-
dearer), while the below-median-quantity positive (+0.066) reflects scale — the
within-triple log-quantity coefficient is −0.259 — rather than same-firm
pricing, and the off-formulary positive (+0.101) is not statistically
significant. The estimable cells are themselves selected toward deep
relationships, so the null is informative about where same-firm pricing power
is absent rather than a claim that it is absent in general. The reading is 🟡
because it is a single-source own-project estimate in São Paulo BEC.

**Sources.**

- *Own analysis*: [AN-003](../analyses/an-003-within-firm-pricing.md)
  (within firm-buyer-item pricing and heterogeneity).
- *Cross-refs*:
  [H:no-broad-same-firm-markup](../hypotheses/no-broad-same-firm-markup.md);
  [H:thin-market-supplier-leverage](../hypotheses/thin-market-supplier-leverage.md).
- *Validation*: backing scripts `48_mechanism_evidence.R`,
  `50_v9_outputs.py`.
