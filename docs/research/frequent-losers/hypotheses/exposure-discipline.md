---
id: h3
slug: exposure-discipline
title: "Cobidder concentration survives exposure-disciplined placebos"
cluster: B
paper_section: "§4.2"
status: pending
last_updated: 2026-05-22
---

# H:exposure-discipline — Cobidder concentration survives exposure-disciplined placebos

A raw co-bidding association could reflect *opportunity-set exposure* — firms
active in the same products, buyers, years, and modalities as CADE defendants
mechanically have more chances of appearing near those legal anchors. The
hypothesis is that the FL ranking still concentrates cobidders after the
exposure margin is disciplined away by participation-volume placebos and
audits within tighter opportunity sets.

> **Evidence strength: Pending.**
> Backed by §4.2 of the [manuscript](../paper.md) ("Exposure and Timing
> Discipline") and Appendix [Validation Audits](../paper.md). AN pages to
> follow.

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

| Analysis | Bearing | Status |
|---|---|---|
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL permutation) | Direct | pending |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (exposure + timing) | Supports | pending |

## Open tests

- Sensitivity to exposure-stratum definition (coarser vs finer cells).
- Decomposition of attenuation by modality.
