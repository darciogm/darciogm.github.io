---
paper: frequent-losers
id: h6
slug: award-bid-complementarity
title: "Award and bid layers are complementary (division of labor, not dominance)"
cluster: D
paper_section: "§6.1 + §6.2"
status: "partial (strongly supported)"
last_updated: 2026-06-02
---

# H:award-bid-complementarity — Award and bid layers are complementary (division of labor, not dominance)

Sequencing matters under costly observability. The hypothesis is that the
cheap award layer and the expensive bid-distribution layer carry
**complementary** information on the same adjudication-anchored target — a
division of labor, not a contest. The award layer ranks *where to look*; the
bid layer evaluates *what is found*. Combining the two beats either alone, but
the point is the division of labor, not that one dominates.

!!! abstract "Intuition (plain-language)"
    There are two layers of procurement data: cheap administrative award records (who participated, who won) and expensive bid-level microdata (every bid amount in every tender). The hypothesis: they carry complementary, non-redundant information. The data support this as a *division of labor* — Imhof bid-distribution screens reach AUC 0.888, the award-layer FL-binary 0.921, and combining the two 0.962. Neither dominates: the award layer cheaply ranks *where to look first*, and the bid layer then evaluates *what is found* in the prioritized cells. The combined number is leakage-sensitive and is not an operational claim.


> **Evidence strength: Partial (strongly supported).**
> The complementarity (division-of-labor) claim at the same-sample level:
> (i) **AUC bands** ([AN-010](../analyses/an-010-imhof-full-pipeline.md)):
> Imhof bid-distribution 0.888; award-layer FL-binary 0.921; combined
> 0.962. Combining beats either layer — the layers are not measuring the
> same thing.
> (ii) **Division of labor, not dominance** ([AN-033](../analyses/an-033-imhof-incremental-delong.md)):
> the award layer cheaply ranks *where to look*; the bid layer evaluates
> *what is found*. The incremental gain from each layer over the other is a
> complementarity diagnostic, not an outperformance/dominance claim.
> (iii) **Continuous participation is the load-bearing complement** ([AN-033](../analyses/an-033-imhof-incremental-delong.md)):
> adding loss-intensity participation features to the bid-distribution base
> contributes most of the gain; the administrative FL14 binary is an
> auditable simplification of that continuous signal.
> (iv) **Same-sample horse race** ([AN-011](../analyses/an-011-horse-race-continuous.md), [AN-015](../analyses/an-015-gate-d1.md)):
> continuous loss intensity (0.939) carries the award-layer signal better
> than the FL14 cut (0.924) (DeLong Z = −4.38, p = 1.2 × 10⁻⁵).
> (v) **Leakage sensitivity** ([AN-014](../analyses/an-014-leakage-audit-d3.md),
> [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)): the
> combined 0.962 is an in-sample full-observability number and attenuates
> under out-of-fold / temporal holdout; it is a division-of-labor diagnostic,
> not an operational deployment guarantee.
> Promotion to 🟢 (**Confirmed**) requires non-BEC replication of the
> within-data complementarity pattern — see the H6 page section on why
> within-data significance does not satisfy the bar.

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
| [AN-010](../analyses/an-010-imhof-full-pipeline.md) (Imhof benchmark) | Direct | done | Imhof bid-distribution 0.888 / award FL-binary 0.921 / combined 0.962 — combining beats either layer |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race) | Direct | done | Continuous loss intensity (0.939) carries the award signal better than the FL14 cut (0.924), DeLong p = 2e-5 |
| [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized) | Supports | done | D1 passes; price coefficients align in single-score specs |
| [AN-033](../analyses/an-033-imhof-incremental-delong.md) (incremental decomposition) | Direct | done | Division of labor: continuous participation is the load-bearing complement to the bid-distribution base; FL14 binary is the auditable simplification |
| [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) (sequential envelope) | Direct | done | Award ranks where to look, bid evaluates what is found; combined number is leakage-sensitive, not an operational guarantee |

## Open tests

- Decomposition of complementarity into modality (Convite vs Pregão).
- Marginal AUC contribution of each Imhof feature in the joint model.
- Sequential envelope under temporal holdout (some data already in
  [AN-013](../analyses/an-013-precision-at-k-audit.md)).
- Cross-jurisdiction replication of the same incremental DeLong tests
  on ComprasNet federal or a non-BR procurement panel.

## Why not 🟢 Confirmed?

H6's within-data evidence is a clean division-of-labor result:

- Combining the layers (0.962) beats either the bid-distribution layer
  (0.888) or the award layer (0.921) alone — the two feature sets carry
  complementary, non-redundant signal.
- The incremental decomposition pinpoints that continuous loss-intensity
  participation is the load-bearing award-side complement, while the
  administrative FL14 binary is an auditable simplification of that signal.
- The combined number is an in-sample full-observability diagnostic and is
  leakage-sensitive — it attenuates under out-of-fold and temporal holdout,
  so it is read as complementarity, not as an operational guarantee or a
  dominance claim.

Two artifact families nonetheless remain untested by the within-data
evidence:

1. **BEC-specific bid-data structure.** The Imhof features
   (cv_mean, cv_sd, skew_mean, kurt_mean, spread_mean, minmax_mean,
   second_low_mean) are computed from BEC's specific bid-recording
   convention. If BEC bid microdata has a structured noise pattern
   that interacts with award-layer participation in a particular way,
   the complementarity could be partially a feature-construction
   artifact. Imhof's original work uses Swiss data with different bid
   conventions; the complementarity might look different there.

2. **Same-sample CADE label structure.** Both Imhof and FL are
   evaluated against the same 193-cobidder positive class. If CADE
   adjudications systematically select cartels where loser-side
   participation differs from bid distribution (e.g., cases driven
   by tip-offs about bid patterns rather than participation
   patterns), the complementarity could be specific to CADE's
   adjudication selection.

Both can only be ruled out by replicating the incremental DeLong tests
on a non-BEC panel with an independent cartel anchor. Until that
exists, H6 stays at **Partial (strongly supported)**, consistent with
the project-wide rule documented in
[findings/index.md](../findings/index.md).
