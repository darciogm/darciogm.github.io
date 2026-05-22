---
id: h6
slug: award-bid-complementarity
title: "Award-layer and bid-layer information are complementary"
cluster: D
paper_section: "§6.1 + §6.2"
status: partial
last_updated: 2026-05-22
---

# H:award-bid-complementarity — Award-layer and bid-layer information are complementary

Sequencing matters under costly observability. The hypothesis is that
award-layer triage adds information to bid-distribution screens on the same
adjudication-anchored target — not because awards dominate bids, but
because the two layers operate at different evidentiary stages. A joint
classifier should outperform each layer individually.

> **Evidence strength: Strong (single-source).**
> Imhof full pipeline AUC 0.888 [0.865, 0.911]; FL14 alone 0.903 [0.884,
> 0.923]; joint 0.955 [0.943, 0.967]. Gap is *complementarity*: each
> layer contributes ~0.05–0.07 over the other alone. Imhof CV-only is
> chance-level (0.585) — the pipeline needs award-side features to
> reach its headline AUC.

## Theory

Bid-distribution screens \citep{imhof2018screening,imhof2019detecting,
wallimann2023machine} evaluate suspicious bidding once bid-level data are
recovered. Award-layer signals are visible earlier. If the two carry
different information margins, the joint signal should beat either alone.
This is the cost-of-evidence framing in
\citet{chassang2022robust,harrington2008detecting}.

## Prediction

On the cobidder target:

- AUC(award ∪ bid) > AUC(bid only);
- AUC(award ∪ bid) > AUC(award only);
- the increment over each is positive at the relevant operating points.

## Competing prediction

**Award is redundant.** If the bid layer already encodes the loser-side
information, the increment from adding the award layer would be
statistically zero. The hypothesis predicts a positive increment; the null
predicts none.

## Case evidence

Imhof-style bid-distribution screens have been shown to discriminate
cartelized auctions in Swiss procurement
\citep{imhof2018screening,imhof2019detecting}. The Brazilian setting has
both layers available — the test asks whether they substitute or
complement.

## Empirical test

- *Sample*: BEC firms with both award and bid features available.
- *Outcome*: cobidder indicator.
- *Specifications*:
  - award-only: `FL14` and `log(1+tenders_count)`;
  - bid-only: Imhof-style features (within-tender bid moments, CV,
    relative rank);
  - joint: union of features in a single classifier.
- *Identification*: same-sample horse race; DeLong test for AUC
  difference.

## Data requirements and limitations

Requires the LANCES bid-level export. Limitation: the bid layer is more
expensive to recover, so the joint score is a full-observability upper
bound rather than an operational benchmark. The complementarity result
therefore supports — but does not require — the gatekeeping deployment of
[H:gatekeeping-cost-of-evidence](gatekeeping-cost-of-evidence.md).

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-010](../analyses/an-010-imhof-full-pipeline.md) (Imhof benchmark) | Direct | done | Imhof 0.888 vs FL14 0.903 vs joint 0.955 |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race) | Direct | done | Continuous dominates binary, DeLong p = 2e-5 |
| [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized) | Supports | done | D1 passes; price coefficients align in single-score specs |

## Open tests

- Decomposition of complementarity into modality (Convite vs Pregão).
- Marginal AUC contribution of each Imhof feature in the joint model.
