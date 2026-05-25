---
paper: frequent-losers
id: h3
slug: exposure-discipline
title: "Cobidder concentration survives exposure-disciplined placebos"
cluster: B
paper_section: "§4.2"
status: "partial (strongly supported)"
last_updated: 2026-05-22
---

# H:exposure-discipline — Cobidder concentration survives exposure-disciplined placebos

A raw co-bidding association could reflect *opportunity-set exposure* — firms
active in the same products, buyers, years, and modalities as CADE defendants
mechanically have more chances of appearing near those legal anchors. The
hypothesis is that the FL ranking still concentrates cobidders after the
exposure margin is disciplined away by participation-volume placebos and
audits within tighter opportunity sets.

!!! abstract "Intuition (plain-language)"
    The headline result might be an artifact — perhaps the screen just identifies firms that bid a lot, and high-volume firms happen to cluster around CADE cases by mechanical overlap (same products, buyers, periods). Several audits discipline this: a formal sham permutation rejects the volume-only null at 32 standard deviations, a leakage audit preserves AUC above 0.85, a universe-scope matrix rules out generic-detector readings. The observed signal is not explained by any within-data artifact family we can test.


> **Evidence strength: Partial (strongly supported).**
> Four converging audit chains, all strong within the BEC × CADE
> data:
> (i) **Formal sham permutation** ([AN-005](../analyses/an-005-sham-fl-permutation.md)):
> B = 2,000 volume-matched permutations; sham AUC distribution mean
> 0.500, SD 0.013, q99 0.531, max 0.547. Observed 0.911 is **~32 sham
> SDs above the mean**; permutation p < 1/2,000 = 0; rejects volume-only
> null at 99%.
> (ii) **Leakage audit** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> raw item-level 0.995 → OOF firm-level 0.891 [0.887, 0.894] → temporal
> firm-level 0.864 [0.858, 0.870]. Attenuation 0.10–0.13, residual AUC
> >> sham distribution.
> (iii) **Universe-anchored stratum scope** ([AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> 8-row meta-table confirms the score targets only what the framing
> predicts. Crucial row 4: participation count on all BEC vs direct CADE
> = **0.383** — below 0.5, the score actively repels winner-heavy
> defendants. No "generic detector" reading possible.
> (iv) **Exposure-stratum balance** ([AN-028](../analyses/an-028-exposure-stratum-balance.md)):
> within the FL14 stratum, cobidders distinct from non-cobidder FLs at
> Cohen's d 0.19–1.00 across 7 dimensions; not driven by volume alone.
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

Cobidder concentration inside the FL stratum should remain elevated when:

- the FL score is recomputed on a participation-matched placebo sample
  ("sham FL"); and
- cobidder classification is restricted to firms within the same
  (product × buyer × year × modality) opportunity sets as direct CADE
  defendants.

## Competing prediction

**Mechanical exposure.** If concentration falls to baseline under either
discipline, the result reduces to opportunity-set overlap rather than a
behavioral signal. The hypothesis predicts robustness; the placebo predicts
attenuation.

## Case evidence

The exposure construction uses the same product × buyer × year × modality
strata that procurement-cartel cases typically operate in (see
[manuscript](../paper.md), §2.3).

## Empirical test

- *Sham FL*: random reassignment of the FL label among always-losers,
  preserving the marginal distribution; recompute AUC and compare to
  observed.
- *Exposure-adjusted audit*: restrict the cobidder benchmark to firms in
  the same exposure stratum and recompute concentration.
- *Outcome*: AUC against the cobidder set in each discipline.

## Data requirements and limitations

Requires the BEC LANCES panel and the (product × buyer × year × modality)
exposure key. Limitation: the exposure stratum is defined by observed
participation, which itself can be affected by cartel behavior; the audit
disciplines exposure but does not separately identify cartel-driven
participation distortions.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL placebo, formal) | Direct | done | B=2,000 permutation; sham mean 0.500 SD 0.013; observed 0.911 = 32 σ above; p < 1/2,000 |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3) | Direct | done | Raw 0.995 → OOF 0.891 → temporal 0.864; attenuation 0.10–0.13 |
| [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md) (universe-anchored scope matrix) | Direct | done | 8-row meta-table; row 4 (participation count vs direct CADE) = 0.383, below random |
| [AN-028](../analyses/an-028-exposure-stratum-balance.md) (within-FL standardized diffs) | Direct | done | Cobidders distinct from non-cobidder FLs at d 0.19–1.00 across 7 dimensions |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (exposure + timing) | Supports | done | Strict ex ante firm AUC 0.767 [0.734, 0.800] |

## Open tests

- Sensitivity to exposure-stratum definition (coarser vs finer cells).
- Decomposition of attenuation by modality.
- Volume-matched cobidder vs non-cobidder-FL test — **done**
  ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): matching
  on `tenders_count` (SMD 0.49 → 0.00), the within-stratum concentration is
  not a volume artifact (HHI d +0.47, repeat-spread −0.56 hold or
  strengthen; bid-dispersion sub-signal collapses to n.s.).

## Why not 🟢 Confirmed?

The within-data evidence is strong at the audit level: sham
permutation rejects at p < 1/2,000 (32 σ above null), the leakage audit
preserves AUC > 0.85, the universe matrix shows row-by-row scope
discipline, and the standardized-diff battery rules out within-stratum
volume artifact. By the rubric of *audit-survival* claims, H3 is
near-exhaustive.

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
   cartel-adjacent behavior in general.

Both can only be ruled out by replication on a non-BEC panel
(ComprasNet federal, another state's e-procurement, or another
country's data) with an independent cartel anchor. Until that exists,
H3 stays at **Partial (strongly supported)**, consistent with the
project-wide rule documented in
[findings/index.md](../findings/index.md).
