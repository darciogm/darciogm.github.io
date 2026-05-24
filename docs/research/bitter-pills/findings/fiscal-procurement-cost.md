---
paper: bitter-pills
---

# Fiscal procurement-cost implication of ~$27.8M per year

🟡 Applying the selection-bounded urgency gap to the scale of
litigation-driven pharmaceutical procurement yields a fiscal
procurement-cost implication of about **$27.8 million per year** (range
**$23.9–31.7M**), built from a Lee-bounds midpoint of **18.5%**, an
admissibility share of **50%**, and annual litigated spending of **$300M**
([AN-011](../analyses/an-011-procurement-cost.md)). This is a fiscal
procurement-cost calculation — what the urgency gap implies for the prices
the state pays on litigated orders — and is **not** a full welfare estimate.

The figure is deliberately conservative in construction: it applies the
midpoint of the bounded gap rather than the naive 29.5% difference, and it
scales only the admissible portion of litigated spending. It translates the
estimated price difference into a budgetary magnitude, leaving aside the
benefits of securing timely delivery, any general-equilibrium responses, and
the consumer-side value of the medicines obtained. The number answers a
narrow accounting question about procurement prices on the litigated channel,
not the broader question of whether the judicial enforcement of access is
worthwhile.

**Caveat.** This is a fiscal procurement-cost implication, not a full welfare
estimate. It inherits every assumption behind the bounded urgency gap — the
Lee bounds rest on monotonicity, and the administrative channel is the
closest feasible urgent-procurement comparison rather than a random or clean
assignment — and adds an admissibility share and a spending figure, each of
which carries its own uncertainty (hence the **$23.9–31.7M** range). It does
not net out the value of timely access secured by the court orders. The
reading is 🟡 because it rests on single-source own-project estimates in
São Paulo BEC.

**Sources.**

- *Own analysis*: [AN-011](../analyses/an-011-procurement-cost.md)
  (procurement-cost calculation: Lee midpoint, admissibility share, litigated
  spending, range).
- *Cross-refs*:
  [H:utg-gap-selection-bounded](../hypotheses/utg-gap-selection-bounded.md).
- *Validation*: backing scripts `46_procurement_cost_bound.R`,
  `40_utg_lee_bounds.R`, `50_v9_outputs.py`.
