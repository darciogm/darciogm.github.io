---
paper: frequent-losers
id: h3
slug: exposure-discipline
title: "A limited genuine signal survives once opportunity exposure is netted out"
cluster: B
paper_section: "§4.2"
status: "not confirmed (opportunity explains it)"
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->

# H:exposure-discipline — No robust residual ordering survives once opportunity exposure is netted out

A raw co-bidding association mostly reflects *opportunity exposure* — firms
active in the same products, buyers, years, and modalities as CADE defendants
mechanically have more chances of appearing near those legal anchors. The
honest test is whether **anything robust survives** once opportunity is
disciplined away. Under the reproducible non-circular label the answer is no:
the within-stratum ordering is at chance, the marginal nested increment fails
the permutation designs, and negative controls corroborate the opportunity
account.

!!! abstract "Intuition (plain-language)"
    The eye-catching raw concentration is largely an opportunity artifact — an exposure-only model (who could possibly bid near a CADE case, given where they participate) already reaches ROC ≈ 0.90 unconditionally. The real question is what is left after you net opportunity out. Under the non-circular label the answer is: nothing robust. Inside a fixed opportunity stratum the score discriminates at ROC 0.471 — at chance — and the marginal nested increment (+0.010, p = 0.013) does not survive matched permutation (p = 0.127) or FL-enrichment (p = 0.067). Most of the concentration is opportunity, and what is left fails the permutation tests. That honest split — exposure explains the ranking — is the contribution.


> **Evidence strength: Not confirmed (opportunity explains it).**
> The exposure decomposition on the BEC × CADE data under the non-circular
> 651-cobidder label:
> (i) **Most concentration is opportunity** ([AN-004](../analyses/an-004-cobidder-baseline.md),
> [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> an exposure-only model reaches ROC ≈ 0.90, so the raw concentration is
> exposure-inflated rather than discriminating power.
> (ii) **No robust residual survives** ([AN-004](../analyses/an-004-cobidder-baseline.md)):
> the within-stratum AUC is 0.471 (≈chance); the nested increment over the
> exposure-only benchmark is **+0.010** (DeLong p = 0.013), marginal at best.
> (iii) **Permutation designs are non-significant** ([AN-005](../analyses/an-005-sham-fl-permutation.md)):
> matched-stratum label permutation p = 0.127 (ns), FL-enrichment within
> matched strata p = 0.067 (ns); negative controls corroborate the
> opportunity account (real ≈ placebo, p = 0.46).
> (iv) **Leakage audit** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> in-sample item-level numbers attenuate sharply under out-of-fold and
> temporal holdout; nothing robust remains on the disciplined numbers.
> (v) **Universe-anchored scope** ([AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> the binary FL flag is silent on winner-heavy direct defendants (0.49),
> while participation volume ranks them moderately (0.66–0.70) — the
> asymmetry is on the loser-side binary flag, not a generic detector.
> The hypothesis is **not confirmed** under the non-circular label: net of
> opportunity there is no robust residual ordering. Non-BEC replication
> remains the only path to any generalizable claim.

## Theory

Exposure-disciplined comparisons are the cartel-screening equivalent of
opportunity-controlled placebos: they ask whether the observed
concentration would arise mechanically from where firms bid, independent of
how they bid. The discipline isolates the signal from the volume
\citep{conley2016detecting,kawai2022detecting}.

## Prediction

The hypothesis predicts that, after opportunity is netted out, a **limited but
non-zero** within-stratum increment survives. Under the non-circular label the
data reject this:

- the exposure-only benchmark accounts for most of the raw concentration
  (ROC ≈ 0.90); and
- the score does **not** discriminate within a fixed opportunity stratum
  (ROC ≈ 0.471, at chance); the nested increment (+0.010, p = 0.013) collapses
  toward the benchmark and fails the permutation designs.

## Competing prediction

**Pure opportunity.** If the within-stratum increment is at chance — i.e.,
concentration falls all the way to the exposure-only benchmark — the result
reduces to opportunity-set overlap with no robust loser-side residual. Under
the non-circular label **this competing prediction prevails**: the within-stratum
ordering is at chance and the permutations are non-significant.

## Case evidence

The exposure construction uses the same product × buyer × year × modality
strata that procurement-cartel cases typically operate in (see
[manuscript](../paper.md), §2.3).

## Empirical test

- *Exposure benchmark*: an exposure-only model of who could plausibly bid
  near a CADE anchor given where they participate (ROC ≈ 0.90) — the share
  of raw concentration that is mechanical opportunity.
- *Within-stratum increment*: discrimination of the score inside a fixed
  opportunity stratum, net of the benchmark (ROC ≈ 0.471, +0.010, ns across
  permutation designs).
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
| [AN-004](../analyses/an-004-cobidder-baseline.md) (exposure decomposition) | Against | done | Exposure-only ROC ≈ 0.90 (raw is opportunity-inflated); within-stratum 0.471 (≈chance), nested increment +0.010 (DeLong p = 0.013) |
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (permutation + neg. controls) | Against | done | Matched permutation p = 0.127 (ns), FL-enrichment p = 0.067 (ns); real ≈ placebo (p = 0.46) — opportunity alone reproduces the concentration |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3) | Supports | done | In-sample item-level numbers attenuate sharply under OOF / temporal holdout; nothing robust remains |
| [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md) (universe-anchored scope matrix) | Direct | done | Binary FL flag silent on winner-heavy defendants (0.49); participation volume ranks them moderately (0.66–0.70) — asymmetry on the binary flag, not a generic detector |
| [AN-028](../analyses/an-028-exposure-stratum-balance.md) (within-FL standardized diffs) | Supports | done | Cobidders descriptively distinct from non-cobidder FLs at d 0.19–1.00 across dimensions |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (exposure + timing) | Against | done | Strict ranking fails at the full universe (ROC 0.474); incumbent-pool residue only (ROC 0.684) |

## Open tests

- Sensitivity to exposure-stratum definition (coarser vs finer cells).
- Decomposition of attenuation by modality.
- Volume-matched cobidder vs non-cobidder-FL test — **done**
  ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): matching
  on `tenders_count` (SMD 0.49 → 0.00), the within-stratum concentration is
  not a volume artifact (HHI d +0.47, repeat-spread −0.56 hold or
  strengthen; bid-dispersion sub-signal collapses to n.s.).

## Why not confirmed?

Under the reproducible non-circular label the decomposition does **not**
support the hypothesis: the exposure-only benchmark accounts for most of the
raw concentration (ROC ≈ 0.90), and the within-stratum increment collapses to
chance (ROC 0.471). The marginal nested increment (+0.010, p = 0.013) does not
survive matched permutation (p = 0.127) or FL-enrichment (p = 0.067), and
negative controls corroborate the opportunity account (real ≈ placebo,
p = 0.46). The honest verdict is that **exposure explains the ranking** and no
robust residual survives.

Even setting that aside, two artifact families would remain untested by any
within-data audit, and a generalizable claim of any kind would require
non-BEC replication:

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

Both can only be assessed by replication on a non-BEC panel
(ComprasNet federal, another state's e-procurement, or another
country's data) with an independent cartel anchor. Under the current
evidence H3 is **not confirmed (opportunity explains it)**, consistent
with the project-wide rule documented in
[findings/index.md](../findings/index.md).
