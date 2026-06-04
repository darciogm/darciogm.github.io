---
paper: frequent-losers
id: h3
slug: exposure-discipline
title: "A limited genuine signal survives once opportunity exposure is netted out"
cluster: B
paper_section: "§4.2"
status: "partial (strongly supported)"
last_updated: 2026-06-02
---

# H:exposure-discipline — A limited genuine signal survives once opportunity exposure is netted out

A raw co-bidding association mostly reflects *opportunity exposure* — firms
active in the same products, buyers, years, and modalities as CADE defendants
mechanically have more chances of appearing near those legal anchors. The
honest hypothesis is therefore not that the raw concentration is genuine, but
that **a limited signal survives** once opportunity is disciplined away: the
within-stratum increment over an exposure-only benchmark is positive and
significant, even though it is far smaller than the exposure-inflated raw
numbers.

!!! abstract "Intuition (plain-language)"
    The eye-catching raw concentration is largely an opportunity artifact — an exposure-only model (who could possibly bid near a CADE case, given where they participate) already reaches AUC 0.946. The real question is what is left after you net opportunity out. The answer is modest but real: inside a fixed opportunity stratum the score still discriminates at AUC 0.7715, a genuine increment of about +0.042 over the exposure-only benchmark (DeLong p ≈ 2 × 10⁻⁶). Most of the concentration is opportunity; a limited, statistically real signal survives. That honest split — not a 0.92 headline — is the contribution.


> **Evidence strength: Partial (strongly supported).**
> The exposure decomposition on the BEC × CADE data:
> (i) **Most concentration is opportunity** ([AN-004](../analyses/an-004-cobidder-baseline.md),
> [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> an exposure-only model reaches AUC 0.946, so the raw concentration is
> exposure-inflated rather than discriminating power.
> (ii) **A limited genuine signal survives** ([AN-004](../analyses/an-004-cobidder-baseline.md)):
> the within-stratum AUC is 0.7715, a genuine increment of **+0.042** over
> the exposure-only benchmark (DeLong p ≈ 2 × 10⁻⁶). Limited, but real.
> (iii) **Sham permutation** ([AN-005](../analyses/an-005-sham-fl-permutation.md)):
> a volume-matched permutation null is rejected — opportunity alone does
> not reproduce the increment.
> (iv) **Leakage audit** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> in-sample item-level numbers attenuate sharply under out-of-fold and
> temporal holdout; the within-stratum increment is reported on the
> disciplined, not the inflated, numbers.
> (v) **Universe-anchored scope** ([AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> the score actively repels winner-heavy direct defendants (below random),
> so no "generic detector" reading is possible — the signal is loser-side
> exposure, not membership.
> Promotion to 🟢 (**Confirmed**) requires independent replication on a
> non-BEC procurement panel — see the H3 page commentary section on why
> within-data exhaustion (however strong) does not satisfy the bar.

## Theory

Exposure-disciplined comparisons are the cartel-screening equivalent of
opportunity-controlled placebos: they ask whether the observed
concentration would arise mechanically from where firms bid, independent of
how they bid. The discipline isolates the signal from the volume
\citep{conley2016detecting,kawai2022detecting}.

## Prediction

After opportunity is netted out, a **limited but non-zero** within-stratum
increment should survive:

- the exposure-only benchmark should account for most of the raw
  concentration (AUC ≈ 0.946); and
- the score should still discriminate within a fixed opportunity stratum
  (AUC ≈ 0.7715), a genuine increment of order +0.042 (DeLong p ≈ 2e-6) over
  that benchmark — not collapsing to it.

## Competing prediction

**Pure opportunity.** If the within-stratum increment is zero — i.e.,
concentration falls all the way to the exposure-only benchmark — the result
reduces to opportunity-set overlap with no genuine loser-side signal. The
hypothesis predicts a limited surviving increment; the null predicts full
collapse to the exposure benchmark.

## Case evidence

The exposure construction uses the same product × buyer × year × modality
strata that procurement-cartel cases typically operate in (see
[manuscript](../paper.md), §2.3).

## Empirical test

- *Exposure benchmark*: an exposure-only model of who could plausibly bid
  near a CADE anchor given where they participate (AUC ≈ 0.946) — the share
  of raw concentration that is mechanical opportunity.
- *Within-stratum increment*: discrimination of the score inside a fixed
  opportunity stratum, net of the benchmark (AUC ≈ 0.7715, +0.042).
- *Sham FL*: random reassignment of the FL label among always-losers,
  preserving the marginal distribution; tests whether opportunity alone
  reproduces the increment.
- *Outcome*: the genuine within-stratum increment and its DeLong p-value.

## Data requirements and limitations

Requires the BEC LANCES panel and the (product × buyer × year × modality)
exposure key. Limitation: the exposure stratum is defined by observed
participation, which itself can be affected by cartel behavior; the audit
disciplines exposure but does not separately identify cartel-driven
participation distortions.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-004](../analyses/an-004-cobidder-baseline.md) (exposure decomposition) | Direct | done | Exposure-only AUC 0.946 (raw is opportunity-inflated); within-stratum 0.7715, genuine increment +0.042 (DeLong p ≈ 2e-6) |
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL placebo, formal) | Direct | done | Volume-matched permutation null rejected; opportunity alone does not reproduce the increment |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3) | Direct | done | In-sample item-level numbers attenuate sharply under OOF / temporal holdout; increment reported on disciplined numbers |
| [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md) (universe-anchored scope matrix) | Direct | done | Score repels winner-heavy direct defendants (below random) — loser-side exposure, not membership; no generic-detector reading |
| [AN-028](../analyses/an-028-exposure-stratum-balance.md) (within-FL standardized diffs) | Direct | done | Cobidders distinct from non-cobidder FLs at d 0.19–1.00 across 7 dimensions |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (exposure + timing) | Supports | done | Strict ex ante firm AUC ≈ 0.77 inside the always-loser pool [0.734, 0.800] |

## Open tests

- Sensitivity to exposure-stratum definition (coarser vs finer cells).
- Decomposition of attenuation by modality.
- Volume-matched cobidder vs non-cobidder-FL test — **done**
  ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): matching
  on `tenders_count` (SMD 0.49 → 0.00), the within-stratum concentration is
  not a volume artifact (HHI d +0.47, repeat-spread −0.56 hold or
  strengthen; bid-dispersion sub-signal collapses to n.s.).

## Why not 🟢 Confirmed?

The within-data evidence is strong at the decomposition level: the
exposure-only benchmark accounts for most of the raw concentration (AUC
0.946), and a limited genuine within-stratum increment still survives (AUC
0.7715, +0.042, DeLong p ≈ 2e-6); the sham permutation rejects the
opportunity-only null; the universe matrix shows the score repels
winner-heavy defendants; and the standardized-diff battery rules out a
within-stratum volume artifact. By the rubric of *audit-survival* claims, H3
is near-exhaustive.

So why not 🟢? Two artifact families remain untested by any within-data
audit:

1. **Data-generating process artifacts.** BEC missingness, CNPJ-root
   collision (only 8 digits → possible aggregation across distinct
   firms with shared root), and CADE adjudication completeness bias.
   These are not "audits" but structural properties of the data lake.
   No within-data permutation can rule them out.

2. **Selection on CADE adjudication.** The cobidder set is defined
   relative to the CADE adjudications that exist in 2009–2019. If CADE
   selects which cartels to adjudicate non-randomly (e.g., easier
   cases, larger-impact cases, politically prominent cases), the
   loser-side signal could be tracking that selection rather than
   adjudication-anchored loser-side exposure in general.

Both can only be ruled out by replication on a non-BEC panel
(ComprasNet federal, another state's e-procurement, or another
country's data) with an independent cartel anchor. Until that exists,
H3 stays at **Partial (strongly supported)**, consistent with the
project-wide rule documented in
[findings/index.md](../findings/index.md).
