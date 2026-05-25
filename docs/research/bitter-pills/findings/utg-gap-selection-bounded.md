---
paper: bitter-pills
---

# The under-the-gun gap is selection-bounded at 15.9–21.1%

🟡 Within the administrative urgent channel — the closest feasible
urgent-procurement comparison to litigation-driven orders — items procured
"under the gun" show a naive price gap of **29.5%** (coef −0.259), but once
the gap is bounded for selection into the urgent channel using Lee (2009)
bounds, the price difference compresses to a **15.9%–21.1%** range
(coefs −0.148/−0.192), with a mean trimming rate of **26.9%**
([AN-002](../analyses/an-002-lee-bounds.md)).

!!! econ "Economic intuition"
    The honest question is not "how much dearer are litigated orders?" but "how much survives once we admit the comparison group was screened?" Administrative requests are filtered, so the items in that channel are not a clean counterfactual. Lee bounds answer the harder question: under a monotonicity restriction, the gap lies in a range that stays well above zero. Bounding — not the raw 29.5% — is what makes the claim defensible.

The bounded effect is statistically robust under inference that accounts for
the small number of clusters: a wild cluster bootstrap returns
**p = 0.0080** in the preferred specification and **p = 0.0390** under the
more demanding item-by-year-month clustering
([AN-007](../analyses/an-007-wild-cluster-bootstrap.md)). The Lee-bounds
exercise is the central correction in this finding: the naive gap overstates
the difference because the administrative urgent channel is selected and
larger, so a substantial part of the raw 29.5% reflects which items flow
through that channel rather than the price consequence of urgency alone.

**Caveat.** The administrative urgent channel is the closest feasible
urgent-procurement comparison, not a random or clean assignment. The Lee
bounds discipline selection on observed differential channel composition, but
they rest on a monotonicity assumption and do not convert the contrast into a
structural counterfactual. The bounded 15.9%–21.1% range is a
selection-bounded gap, not a point estimate of a causal treatment effect. The
reading is 🟡 because it is a single-source own-project estimate in São Paulo
BEC alone; promotion to 🟢 would require independent replication.

**Sources.**

- *Own analysis*: [AN-002](../analyses/an-002-lee-bounds.md) (naive gap,
  Lee bounds, mean trimming),
  [AN-007](../analyses/an-007-wild-cluster-bootstrap.md) (wild cluster
  bootstrap inference).
- *Cross-refs*:
  [H:utg-gap-selection-bounded](../hypotheses/utg-gap-selection-bounded.md).
- *Validation*: backing scripts `40_utg_lee_bounds.R`,
  `44_wild_bootstrap.R`, `50_v9_outputs.py`.
