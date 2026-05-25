---
paper: bitter-pills
id: an-007
hypothesis: utg-gap-selection-bounded
type: robustness
question: Does the administrative-minus-litigated urgent-price gap survive wild-cluster bootstrap inference when the number of purchasing-buyer-units (PBU) clusters is small and uneven?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "Rademacher wild-cluster bootstrap continues to reject a zero administrative-minus-litigated gap: p=0.0080 in the preferred item+year+PBU specification and p=0.0390 under tighter item-by-year-month fixed effects."
created: 2026-05-24
script: v10-causal-mechanism/analysis/44_wild_bootstrap.R
target: v10-causal-mechanism/output/tables/tab_utg_boottest.tex
tags: ["H:utg-gap-selection-bounded", wild-cluster-bootstrap, inference, robustness, utg-contrast]
design:
  sample: "Urgent panel of 56,803 purchase-offer-item observations, BEC group 65 São Paulo pharmaceutical procurement, 2009–2019"
  specification: "Rademacher wild-cluster bootstrap on the administrative-minus-litigated urgent-price contrast; preferred item+year+PBU fixed effects and a tighter item-by-year-month variant, clustering on PBU"
  notes: "Wild-cluster bootstrap addresses the small, uneven cluster count; it disciplines inference on the conditional gap and does not address selection into the litigated regime, which the Lee bounds handle"
---

# AN-007: Wild-cluster bootstrap inference on the UTG contrast

!!! abstract "Intuition (plain-language)"
    The urgent-price gap is estimated across a modest number of purchasing units, and those units differ a lot in size. With few, uneven clusters, ordinary standard errors can overstate precision. The Rademacher wild-cluster bootstrap re-draws the data thousands of times to stress-test the gap. It still rejects a zero administrative-minus-litigated gap, so the contrast is not an artifact of how the standard errors are computed.

## Question

The administrative-minus-litigated urgent-price contrast is identified
from variation across purchasing-buyer-units (PBU). The PBU clusters are
few and uneven, the setting in which conventional cluster-robust
standard errors are least reliable. Does the gap survive inference that
is valid with a small, unbalanced number of clusters?

## Design

- **Sample**: urgent panel of 56,803 purchase-offer-item observations
  (BEC group 65, São Paulo pharmaceutical procurement, 2009–2019).
- **Variation**: the administrative-minus-litigated urgent-price
  contrast, sign convention admin-minus-litigated.
- **Specification**: Rademacher wild-cluster bootstrap, clustering on
  PBU, because the PBU clusters are few and uneven. Two fixed-effects
  variants are reported: the preferred item+year+PBU specification and a
  tighter item-by-year-month specification.
- **Comparison**: the administrative urgent channel is the closest
  feasible urgent-procurement comparison, not a random or clean
  benchmark; it is selected and larger.

## Results

| Specification | Bootstrap p-value |
|---|---:|
| Preferred: item + year + PBU FE | 0.0080 |
| Tighter: item-by-year-month FE | 0.0390 |

*Rademacher wild-cluster bootstrap, clustering on PBU. Sign convention: admin-minus-litigated.*

Output: `v10-causal-mechanism/output/tables/tab_utg_boottest.tex`.

## Interpretation

Confidence: **yellow.** Under the preferred item+year+PBU specification
the wild-cluster bootstrap rejects a zero gap at p=0.0080; the tighter
item-by-year-month specification still rejects at p=0.0390. Both
continue to reject a zero administrative-minus-litigated gap once
inference accounts for the small, uneven cluster count. The bootstrap
disciplines inference only; it does not address selection into the
litigated regime. Selection is handled separately by the Lee bounds
(see [AN-002: Lee bounds](an-002-lee-bounds.md)). The reading
is yellow because the evidence is from a single jurisdiction (São Paulo
BEC) and rests on own project runs, and because the administrative
urgent channel is the closest feasible urgent-procurement comparison,
not a random one.

## Follow-ups

- Report the bootstrap under alternative weight schemes (e.g.,
  Webb six-point) to confirm the rejection is not specific to the
  Rademacher weights.
- Cross-reference the selection-bounding evidence on the same contrast
  in the [utg-gap-selection-bounded hypothesis](../hypotheses/utg-gap-selection-bounded.md).
