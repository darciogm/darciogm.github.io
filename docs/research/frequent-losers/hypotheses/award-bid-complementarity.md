---
paper: frequent-losers
id: h6
slug: award-bid-complementarity
title: "Award and bid layers are complementary (division of labor, not dominance)"
cluster: D
paper_section: "§6.1 + §6.2"
status: "mixed (conditional, case-fragile)"
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->

# H:award-bid-complementarity — Award and bid layers are complementary (division of labor, not dominance)

Sequencing matters under costly observability. The hypothesis is that the
cheap award layer and the expensive bid-distribution layer carry
**complementary** information on the same adjudication-anchored target — a
division of labor, not a contest. The award layer ranks *where to look*; the
bid layer evaluates *what is found*. Combining the two beats either alone, but
the point is the division of labor, not that one dominates.

!!! abstract "Intuition (plain-language)"
    There are two layers of procurement data: cheap administrative award records (who participated, who won) and expensive bid-level microdata (every bid amount in every tender). The hypothesis: they carry complementary, non-redundant information. The data support this only *conditionally*. On the pooled diagnostic the two layers are comparable (award ≈ bid: 0.760 vs 0.717). The combined model beats award on precision–recall under a random cross-validation split (PR 0.188 vs 0.143), but **falls below award-only once folds are grouped by case** (PR 0.103 vs 0.143). So the complementarity is conditional on this implemented benchmark and case-fragile — a division of labor, not a dominance or a robust gain. The combined number is leakage-sensitive and is not an operational claim.


> **Evidence strength: Mixed (conditional, case-fragile).**
> The complementarity claim on the 651-cobidder target:
> (i) **Award ≈ bid pooled** ([AN-010](../analyses/an-010-imhof-full-pipeline.md)):
> the transparent bid-moment random forest reaches ROC 0.717 / PR 0.116; the
> award continuous score 0.760 / PR 0.143; FL14 0.688. Comparable, not a clean
> ceiling above both (same-sample gatekeeping pool: bid 0.665, award 0.665,
> combined 0.727).
> (ii) **Combined gain is fold-dependent** ([AN-033](../analyses/an-033-imhof-incremental-delong.md)):
> the combined model beats award on PR under random CV (0.188 vs 0.143) but
> **falls below award-only under case-grouped folds** (0.103 vs 0.143).
> The increment is conditional on the implemented benchmark and case-fragile.
> (iii) **Division of labor, not dominance** ([AN-033](../analyses/an-033-imhof-incremental-delong.md)):
> the award layer cheaply ranks *where to look*; the bid layer evaluates
> *what is found*. The gain from combining is a complementarity diagnostic,
> not an outperformance claim (Spearman award–bid 0.544).
> (iv) **Same-sample horse race** ([AN-011](../analyses/an-011-horse-race-continuous.md), [AN-015](../analyses/an-015-gate-d1.md)):
> continuous loss intensity carries the award-layer signal slightly better
> than the FL14 cut.
> (v) **Leakage / case sensitivity** ([AN-014](../analyses/an-014-leakage-audit-d3.md),
> [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)): the
> combined number attenuates out of sample and under case-grouped folds; it
> is a division-of-labor diagnostic, not an operational deployment guarantee.
> The verdict is **Mixed**: complementarity holds conditionally (random CV)
> but is case-fragile (case-grouped folds). Non-BEC replication is the path to
> any generalizable claim.

## Theory

Bid-distribution screens \citep{imhof2018screening,imhof2019detecting,
wallimann2023machine} evaluate suspicious bidding once bid-level data are
recovered. Award-layer signals are visible earlier. If the two carry
different information margins, the joint signal should beat either alone.
This is the cost-of-evidence framing in
\citet{chassang2022robust,harrington2008detecting}.

## Prediction

On the 651-cobidder target:

- award ≈ bid on the pooled diagnostic (0.760 vs 0.717);
- combined beats award on PR under random CV (0.188 vs 0.143);
- but the combined increment is **not robust to case-grouped folds**
  (combined PR 0.103 falls below award-only 0.143) — the gain is conditional.

## Competing prediction

**Award is redundant / combination is fragile.** If the bid layer already
encodes the loser-side information, or if the combined gain disappears once
folds respect case structure, the complementarity carries no robust value. The
data land in between: a random-CV gain that **does not survive case-grouped
folds** — hence the Mixed verdict.

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
| [AN-010](../analyses/an-010-imhof-full-pipeline.md) (bid-moment benchmark) | Mixed | done | Bid RF 0.717 / award continuous 0.760 / FL14 0.688 / combined 0.756 (random CV) — comparable; combined PR falls below award-only under case-grouped folds |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race) | Supports | done | Continuous loss intensity carries the award signal slightly better than the FL14 cut |
| [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized) | Supports | done | D1 passes; price coefficients align in single-score specs |
| [AN-033](../analyses/an-033-imhof-incremental-delong.md) (incremental decomposition) | Mixed | done | Combined beats award on PR under random CV (+0.045) but falls below award-only under case-grouped folds; complementarity conditional and case-fragile (Spearman 0.544) |
| [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) (sequential envelope) | Direct | done | Award ranks where to look, bid evaluates what is found; combined number is leakage- and case-sensitive, not an operational guarantee |

## Open tests

- Decomposition of complementarity into modality (Convite vs Pregão).
- Marginal AUC contribution of each Imhof feature in the joint model.
- Sequential envelope under temporal holdout (some data already in
  [AN-013](../analyses/an-013-precision-at-k-audit.md)).
- Cross-jurisdiction replication of the same incremental DeLong tests
  on ComprasNet federal or a non-BR procurement panel.

## Why not confirmed?

Under the non-circular label H6's within-data evidence is **mixed**, not clean:

- On the pooled diagnostic the two layers are comparable (award 0.760 ≈ bid
  0.717); there is no clear ceiling above both.
- Combining the layers beats award on PR under random CV (0.188 vs 0.143) but
  **falls below award-only once folds are grouped by case** (0.103 vs 0.143) —
  the combined gain does not survive case-grouped folds.
- The combined number is an in-sample full-observability diagnostic and is
  leakage- and case-sensitive, so it is read as conditional complementarity,
  not as an operational guarantee or a dominance claim.

Two artifact families further remain untested by the within-data evidence:

1. **BEC-specific bid-data structure.** The Imhof features
   (cv_mean, cv_sd, skew_mean, kurt_mean, spread_mean, minmax_mean,
   second_low_mean) are computed from BEC's specific bid-recording
   convention. If BEC bid microdata has a structured noise pattern
   that interacts with award-layer participation in a particular way,
   the complementarity could be partially a feature-construction
   artifact. Imhof's original work uses Swiss data with different bid
   conventions; the complementarity might look different there.

2. **Same-sample CADE label structure.** Both the bid-moment benchmark
   and the award layer are evaluated against the same 651-cobidder
   positive class. If CADE adjudications systematically select cartels
   where loser-side participation differs from bid distribution (e.g.,
   cases driven by tip-offs about bid patterns rather than participation
   patterns), the conditional complementarity could be specific to CADE's
   adjudication selection.

Both can only be assessed by replicating the incremental tests on a
non-BEC panel with an independent cartel anchor. Under the current
evidence H6 is **Mixed (conditional, case-fragile)**, consistent with
the project-wide rule documented in
[findings/index.md](../findings/index.md).
