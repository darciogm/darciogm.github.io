---
id: h3
slug: exposure-discipline
title: "Cobidder concentration survives exposure-disciplined placebos"
cluster: B
paper_section: "§4.2"
status: partial
last_updated: 2026-05-22
---

# H:exposure-discipline — Cobidder concentration survives exposure-disciplined placebos

A raw co-bidding association could reflect *opportunity-set exposure* — firms
active in the same products, buyers, years, and modalities as CADE defendants
mechanically have more chances of appearing near those legal anchors. The
hypothesis is that the FL ranking still concentrates cobidders after the
exposure margin is disciplined away by participation-volume placebos and
audits within tighter opportunity sets.

> **Evidence strength: Moderate (single-source).**
> Sham FL permutation AUC band 0.713–0.783 is substantially below the
> observed 0.924. Leakage audit drops AUC from raw 0.995 → OOF 0.891 →
> temporal 0.864 (attenuation 0.10–0.13). Concentration survives but
> with documented audit costs.

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
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (sham FL placebo) | Direct | done | Permutation AUC 0.713–0.783 vs observed 0.924 |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3) | Direct | done | Raw 0.995 → OOF 0.891 → temporal 0.864; attenuation 0.10–0.13 |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (exposure + timing) | Supports | done | Strict ex ante firm AUC 0.767 [0.734, 0.800] |

## Open tests

- Sensitivity to exposure-stratum definition (coarser vs finer cells).
- Decomposition of attenuation by modality.
