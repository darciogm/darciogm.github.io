---
paper: frequent-losers
id: h6
slug: award-bid-complementarity
title: "Award-layer and bid-layer information are complementary"
cluster: D
paper_section: "§6.1 + §6.2"
status: "partial (strongly supported)"
last_updated: 2026-05-22
---

# H:award-bid-complementarity — Award-layer and bid-layer information are complementary

Sequencing matters under costly observability. The hypothesis is that
award-layer triage adds information to bid-distribution screens on the same
adjudication-anchored target — not because awards dominate bids, but
because the two layers operate at different evidentiary stages. A joint
classifier should outperform each layer individually.

!!! abstract "Intuition (plain-language)"
    There are two layers of procurement data: cheap administrative award records (who participated, who won) and expensive bid-level microdata (every bid amount in every tender). The hypothesis: they carry complementary, non-redundant information for cartel detection. The data strongly support this — joint scoring (using both layers) gains +0.10 AUC over either layer alone with p = 10⁻²⁶. The two layers are not measuring the same thing, and this matters for the architecture of enforcement.


> **Evidence strength: Partial (strongly supported).**
> The complementarity claim is established at the same-sample level
> with formal statistical significance and an operational deployment
> envelope:
> (i) **AUC bands** ([AN-010](../analyses/an-010-imhof-full-pipeline.md)):
> Imhof full 0.888 [0.865, 0.911]; FL14 alone 0.921 [0.914, 0.928];
> joint 0.955 [0.943, 0.967].
> (ii) **Formal DeLong incremental tests** ([AN-033](../analyses/an-033-imhof-incremental-delong.md)):
> Imhof + FL14 vs Imhof full Δ = +0.096, **p = 1.2 × 10⁻²⁶**; FL14 vs
> Imhof Δ = +0.035, **p = 0.014** (the award-layer signal alone is at
> least as discriminating as the full Imhof pipeline, at lower
> information cost — a complementarity diagnostic, not an outperformance
> claim).
> (iii) **Feature decomposition** ([AN-033](../analyses/an-033-imhof-incremental-delong.md)):
> Imhof-base AUC 0.785 → +participation features +0.154 → +FL binary
> +0.003. Continuous participation is the load-bearing complement to
> Imhof; FL14 binary is the auditable simplification of that signal.
> (iv) **Same-sample horse race** ([AN-011](../analyses/an-011-horse-race-continuous.md), [AN-015](../analyses/an-015-gate-d1.md)):
> continuous AUC 0.939 dominates the binary FL14 flag (0.924); the
> gap is 0.015 under the corrected FL14 ≥ 14 definition (DeLong
> Z = −4.38, p = 1.2 × 10⁻⁵).
> (v) **Operational sequential envelope** ([AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md)):
> sequential award → bid gatekeeping at Stage-1 K=2,000 recovers 131
> of 193 cobidders (recall 0.679) using 17% of the bid-microdata
> footprint (2,000 of 11,676 firms). The architecture
> approximates the full-observability upper bound at much lower
> forensic cost.
> Imhof CV-only is chance-level (0.585) — the bid-distribution pipeline
> needs award-side features to reach its headline AUC.
> Promotion to 🟢 (**Confirmed**) requires non-BEC replication of the
> within-data complementarity pattern — see the H6 page section on why
> within-data DeLong significance does not satisfy the bar.

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
| [AN-010](../analyses/an-010-imhof-full-pipeline.md) (Imhof benchmark) | Direct | done | Imhof 0.888 vs FL14 0.921 vs joint 0.955 |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (horse race) | Direct | done | Continuous dominates binary, DeLong p = 2e-5 |
| [AN-015](../analyses/an-015-gate-d1.md) (D1 harmonized) | Supports | done | D1 passes; price coefficients align in single-score specs |
| [AN-033](../analyses/an-033-imhof-incremental-delong.md) (formal DeLong incremental) | Direct | done | Imhof + FL Δ = +0.096, p = 1.2e-26; FL alone vs Imhof Δ = +0.035, p = 0.014; FL binary marginal beyond TC = +0.003 |
| [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) (sequential envelope) | Direct | done | Sequential K=2,000: 74% of joint recall at 17% microdata footprint |

## Open tests

- Decomposition of complementarity into modality (Convite vs Pregão).
- Marginal AUC contribution of each Imhof feature in the joint model.
- Sequential envelope under temporal holdout (some data already in
  [AN-013](../analyses/an-013-precision-at-k-audit.md)).
- Cross-jurisdiction replication of the same incremental DeLong tests
  on ComprasNet federal or a non-BR procurement panel.

## Why not 🟢 Confirmed?

H6's within-data evidence is uniquely strong:

- DeLong p = 1.2 × 10⁻²⁶ on the joint complementarity gain (Imhof + FL
  vs Imhof) is at the level where statistical artifact essentially
  cannot explain the result. The two feature sets carry independent
  signal in an information-theoretic sense.
- The sequential envelope demonstrates the complementarity at the
  operational level: 74% of joint recall at 17% bid-microdata cost.
- The Shapley-like decomposition pinpoints that continuous participation
  is the load-bearing complement (+0.154 over Imhof base), while
  FL14 binary's marginal beyond continuous is only +0.003.

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
