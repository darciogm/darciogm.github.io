# Findings — Sourcing under Sanctions

This page is the curated index of *what we have learned* from the project's own
analyses. Each finding is a **claim about the world** — the kind of statement
that would go in the paper — and it may rest on several `AN-NNN` analyses, cited
in its Sources footer. The detail, design, and caveats behind each number live
on those analysis pages; this page is the synthesis.

This page is the **directory of conclusions**. Use
[`docs/analyses/`](../analyses/index.md) to look up the per-result design, raw
numbers, and full result tables; use this page to scan what we believe and at
what confidence.

---

## How to read the confidence tags

A traffic-light convention runs across the findings: 🟢 = strongest confidence,
🟡 = middle, 🔴 = weakest.

**Empirical findings** — the color reflects the *source* of confidence, not the
size of the effect:

- 🟢 **Replicated** — the finding appears in multiple independent samples or
  jurisdictions that agree in direction and rough magnitude.
- 🟡 **Single source** — one solid study, or one of our own runs, with no
  independent replication yet.
- 🔴 **Provisional** — one descriptive cut that is sample-definition-dependent
  or flagged with a known caveat.

**Interpretations** — parallel scheme: 🟢 strong (converging lines, alternatives
considered and rejected), 🟡 plausible (consistent but other readings open), 🔴
speculative.

Every finding here is currently 🟡: each rests on the project's own runs of the
São Paulo BEC pharmaceutical sample (2009–2019), none has independent
replication in another jurisdiction, and the central contrast disciplines — but
does not eliminate — selection into the administrative urgent channel, which is
a selected, larger, closest-feasible comparison rather than a randomized one.

---

## Findings overview

**The urgent-procurement environment** *(empirical, motivational)*

- [Legal urgency raises procurement costs and weakens competition](urgency-raises-costs.md)
  — urgent purchases carry ~5.4% higher negotiated prices, ~5.4% fewer bidders,
  and a ~2.1pp higher tender-success rate than ordinary purchases of comparable
  items.

**The sanction-related margin: pricing versus sourcing** *(empirical + interpretive)*

- [The under-the-gun gap is selection-bounded at 15.9–21.1%](utg-gap-selection-bounded.md)
  — court-mandated urgent purchases are costlier than the closest administrative
  urgent comparison; after Lee trimming for selection, the litigated-over-
  administrative gap is bounded in [15.9%, 21.1%].
- [No broad same-firm markup in deep repeated urgent markets](no-broad-same-firm-markup.md)
  — within the same firm, buyer, and item, prices are statistically
  indistinguishable across urgent regimes (0.035, SE 0.041). A deep-market null,
  not a universal claim.
- [Supplier leverage reappears in thinner and earlier markets](thin-market-leverage.md)
  — the within-firm coefficient turns positive in below-median-quantity
  (+0.066) and earlier-period (+0.117) subsamples.

**The sourcing mechanism** *(empirical + interpretive)*

- [Fragmented sourcing is the margin](fragmented-sourcing-is-the-margin.md)
  — administrative urgent orders are ~3.3× larger (lost scale), and the modal
  winning supplier differs in 70.2% of item-buyer pairs (supplier-set
  reallocation).
- [A judicial-enforcement form of passive waste](judicial-enforcement-passive-waste.md)
  — one-sided sanctions secure delivery but weaken the routines that aggregate
  demand and match buyers with suppliers.

**Fiscal scope** *(interpretive)*

- [Fiscal procurement-cost implication of ~$27.8M per year](fiscal-procurement-cost.md)
  — applying the bounded gap to a calibrated admissible share of litigated
  spending; a fiscal procurement-cost calculation, not a full welfare estimate.

---

## Open items for this page

- **Nothing is 🟢 yet.** Every finding is single-source (our own run on the São
  Paulo BEC sample). Promotion to 🟢 would require an independent replication in
  another procurement jurisdiction or a second identifying source within São
  Paulo.
- **Selection is bounded, not eliminated.** The administrative urgent channel is
  selected and larger; the Lee bounds discipline that selection under a
  monotonicity restriction but do not recover what a litigated purchase would
  have cost without sanctions. See
  [H:utg-gap-selection-bounded](../hypotheses/utg-gap-selection-bounded.md).
- **The deep-market null is not universal.** Supplier leverage reappears in
  thinner and earlier markets; the no-broad-same-firm-markup reading is specific
  to deep repeated urgent markets. See
  [Supplier leverage reappears in thinner and earlier markets](thin-market-leverage.md).
- **The fiscal figure is a procurement-cost calculation.** It is not a full
  welfare estimate and excludes patient health benefits, search and compliance
  costs, and other welfare components.
