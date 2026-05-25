---
paper: bitter-pills
---

# The deep-market null is not universal: a residual within-firm gap in the earlier period

🟡 The deep-market within-firm null is not uniform across the urgent panel, but
the heterogeneity has two dimensions that behave differently. Splitting the
within firm-buyer-item comparison, the administrative urgent coefficient is
essentially zero where trade is deep — above-median quantity **−0.005**,
SUS-formulary items **−0.001** — and turns positive in below-median-quantity
(**+0.066\*\*\***), earlier-period (**+0.117\*\*\***), and non-formulary
(**+0.101**) cells ([AN-003](../analyses/an-003-within-firm-pricing.md),
[AN-004](../analyses/an-004-market-depth-heterogeneity.md)). Disambiguating those
two axes is what this finding is about.

!!! econ "Economic intuition"
    Two candidate "thin-market leverage" stories look alike in raw splits but mean different things, and only one survives. The quantity axis is *scale* — small orders cost more because they forgo bulk discounts, not because the same firm charges more (the within-triple quantity elasticity does the work). The period axis is a genuine within-firm gap, but it runs the "wrong" way — the administrative channel is the dearer one, and it fades as the market matures — so it reads as early-market maturation, not a court order handing suppliers power over the sanctioned buyer. Reading the sign honestly is what separates a real non-null from a convenient one.

**The quantity axis is scale, not same-firm pricing.** A quartile decomposition
(`61_h4_quantity_quartiles.R`) shows the within-triple coefficient varies with
order size only through bulk discounts: the within firm-buyer-item log-quantity
coefficient is **−0.259** (SE 0.074), and once quantity is held fixed there is no
systematic same-firm price gradient across quartiles. The order-size
heterogeneity is the scale channel
([Lost scale](../hypotheses/lost-scale.md)), not a markup.

**The period axis is a genuine within-firm gap — but read its sign honestly.**
The earlier-period coefficient *survives* a within-triple quantity control
(`62_h4_period_axis.R`): it moves from **+0.117** (SE 0.037) to **+0.168**
(SE 0.062, *p* = 0.007), while the late period stays null. So a real within-firm
price gap persists in the earlier period. But the surviving gap is *positive* —
the **administrative** channel is dearer within firm-buyer-item, not the
litigated one — and it **fades as the urgent market thickens** (a continuous
administrative×year interaction declines from −0.025 to −0.019 with the quantity
control). That is the opposite direction from "a court order lets the supplier
squeeze the sanctioned buyer," so the gap is reported as a bounded non-null, not
asserted as litigated-buyer leverage.

**What to conclude.** The no-broad-same-firm-markup result in
[No broad same-firm markup](no-broad-same-firm-markup.md) is a deep-market
statement, not a universal one: a residual within-firm gap persists in the
earlier period. But the two natural "thin-market leverage" candidates do not
both survive scrutiny — the quantity dimension is scale, and the period gap is
administrative-dearer and time-declining, consistent with early-market
maturation rather than supplier power over the litigated buyer.

**Caveat.** These are conditional contrasts within the selected administrative
urgent channel — the closest feasible urgent-procurement comparison — not causal
estimates of urgency in thin markets. The splits are observational cuts, and the
"earlier period" differ on more dimensions than timing alone. The reading is
🟡 because it is a single-source own-project estimate in São Paulo BEC.

**Sources.**

- *Own analysis*: [AN-003](../analyses/an-003-within-firm-pricing.md)
  (within-firm heterogeneity by quantity, timing, formulary status),
  [AN-004](../analyses/an-004-market-depth-heterogeneity.md) (market-depth
  splits).
- *Disambiguation*: `61_h4_quantity_quartiles.R` (quantity axis = scale),
  `62_h4_period_axis.R` (period axis survives scale control; sign and time-decay).
- *Cross-refs*:
  [H:thin-market-supplier-leverage](../hypotheses/thin-market-supplier-leverage.md);
  [H:no-broad-same-firm-markup](../hypotheses/no-broad-same-firm-markup.md).
- *Validation*: backing scripts `48_mechanism_evidence.R`, `50_v9_outputs.py`.
