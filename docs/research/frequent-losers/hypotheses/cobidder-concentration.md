---
paper: frequent-losers
id: h1
slug: cobidder-concentration
title: "The ranking concentrates adjudication-anchored exposure above mechanical opportunity"
cluster: A
paper_section: "§3 + §4"
status: "partial (strongly supported)"
last_updated: 2026-06-02
---

# H:cobidder-concentration — The ranking concentrates adjudication-anchored exposure above mechanical opportunity

If the award-layer score orders forensic priority informatively, then firms
that always lose but bid alongside direct CADE defendants in adjudicated
cartel environments (their **adjudication-anchored exposure**, captured by the
cobidder label) should rank higher in the always-loser stratum **by more than
participation opportunity alone would predict**. The hypothesis is about
*loser-side exposure to legal anchors*, not cartel membership: the ranking
should order cobidders, not direct defendants — and the genuine question is
how much of that ordering survives once mechanical opportunity is netted out.

!!! abstract "Intuition (plain-language)"
    Among always-loser firms in Brazilian procurement, the ones that bid most often (frequent losers) sit disproportionately near cartels formally adjudicated by Brazil's antitrust authority. But most of that raw proximity is *opportunity*: firms that bid a lot mechanically end up near anyone, including CADE defendants. The honest question is what is left after you net opportunity out. The answer: a raw concentration that looks very high (exposure-only AUC 0.946) is mostly opportunity; the genuine signal *inside* a fixed opportunity stratum is 0.7715, a modest but real increment of about +0.042 over what opportunity predicts. Cheap award records *order where to look first*; they do not prove cover-bidding.


> **Evidence strength: Partial (strongly supported).**
> The honest decomposition on the BEC 2009–2019 panel:
> (i) raw concentration is mostly **opportunity exposure** — an
> exposure-only model already reaches AUC 0.946, so the eye-catching raw
> numbers are exposure-inflated, not discriminating power
> ([AN-004](../analyses/an-004-cobidder-baseline.md));
> (ii) the **genuine within-stratum signal** is AUC 0.7715, a genuine
> increment of **+0.042** over what opportunity alone predicts
> (DeLong p ≈ 2 × 10⁻⁶) — limited but real
> ([AN-004](../analyses/an-004-cobidder-baseline.md));
> (iii) cutoff sweep across 19 thresholds shows the ranking is not an
> artifact of one administrative cut
> ([AN-025](../analyses/an-025-cutoff-sweep-robustness.md));
> (iv) subsample robustness: the increment direction is stable across
> full / data-rich / low-bid / high-bid subsamples
> ([AN-026](../analyses/an-026-subsample-robustness.md));
> (v) continuous loss intensity carries the signal, not the FL14 cut
> (DeLong Z = −4.38, p = 1.2 × 10⁻⁵)
> ([AN-011](../analyses/an-011-horse-race-continuous.md));
> (vi) volume placebo: permutation rejects a pure-volume null
> ([AN-005](../analyses/an-005-sham-fl-permutation.md));
> (vii) leakage audit: in-sample item-level numbers attenuate sharply
> under out-of-fold and temporal holdout
> ([AN-014](../analyses/an-014-leakage-audit-d3.md));
> (viii) strict ex ante (train 09-16 → test 17-19): firm AUC ≈ 0.77 inside
> the always-loser pool
> ([AN-006](../analyses/an-006-strict-prospective-holdout.md)),
> with continuous-only thesis surviving without FL14
> ([AN-017](../analyses/an-017-gate-d3.md)).
> Promotion to 🟢 (**Confirmed**) requires independent replication on a
> non-BEC procurement panel — not satisfied by any of the above, all of
> which share the BEC × CADE data lake.

## Theory

In cartels that allocate winning roles and rotate designated winners
\citep{pesendorfer2000study,asker2010leniency,marshall2012economics},
firms used to manufacture the appearance of competition can plausibly be
identified by their persistent zero-win exposure. The same logic appears in
large-scale procurement evidence on coordinated bidding
\citep{kawai2022detecting}. Persistent zero-win participation is a
behavioral footprint of credible losing roles, not a label of cartel
membership.

## Prediction

The frequent-loser stratum (binary `FL14` rule, top-loss-intensity quantile
of the continuous score) should rank cobidders above other always-losers **by
more than mechanical opportunity predicts**. The honest claim is the
within-stratum increment (≈ +0.042 over an exposure-only benchmark), not the
exposure-inflated raw concentration.

## Competing prediction

**Opportunity-only explanation.** Firms that bid in many tenders mechanically
have more chances of co-bidding alongside any subset of firms, including CADE
defendants. Most of the raw concentration is exactly this — an exposure-only
model already reaches AUC 0.946. The threat the ranking must survive is that
*nothing* is left after opportunity is netted out. The discipline in
[H:exposure-discipline](exposure-discipline.md) shows a limited genuine
increment does survive.

## Case evidence

CADE adjudications in the 2009–2019 window cover bid-rigging conduct in São
Paulo procurement environments. The cobidder set is constructed from these
adjudicated cartels by identifying always-loser firms that bid in the same
tenders as direct defendants in the adjudicated environments. See §2.3 of
the [manuscript](../paper.md).

## Empirical test

- *Outcome*: cobidder indicator (1 if firm co-bid with a direct CADE
  defendant in an adjudicated environment).
- *Variation*: position in the FL stratum vs other always-loser firms.
- *Specification*: AUC of the score `s = log(1+T)` (and the administrative
  `FL14 = T ≥ 14` cut) over always-losers, with cobidders as the positive
  class — reported both raw and **net of an opportunity-exposure benchmark**,
  so the genuine within-stratum increment is isolated.
- *Identification*: scope of the loser-side ranking is restricted to
  zero-win firms; the headline object is the exposure-adjusted increment, not
  the exposure-inflated raw concentration.

## Data requirements and limitations

Requires BEC LANCES export (firm × item × OC) joined with CADE adjudication
records linked at the CNPJ root level. Limitation: cobidder labels depend on
adjudication coverage in the panel window, and the set is exposure-limited
to CADE-adjudicated environments in São Paulo.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-001](../analyses/an-001-zero-win-rank.md) (construction) | Setup | done | 16,843 always-losers; FL14 = T ≥ 14 (median+1.5×IQR, administrative cut); 2,735 FL firms |
| [AN-004](../analyses/an-004-cobidder-baseline.md) (exposure decomposition) | Supports | done | Raw concentration is mostly opportunity (exposure-only AUC 0.946); within-stratum signal 0.7715, genuine increment +0.042 (DeLong p ≈ 2e-6) |
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (volume placebo) | Supports | done | Permutation rejects a pure-volume null; opportunity alone does not explain the increment |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (timing discipline) | Supports | done | Strict ex ante firm AUC ≈ 0.77 inside the always-loser pool [0.734, 0.800] |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (continuous vs binary) | Supports | done | Continuous dominates FL14, DeLong p = 2e-5 |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | Raw 0.995 → OOF 0.891 → temporal 0.864; attenuation honest |
| [AN-017](../analyses/an-017-gate-d3.md) (continuous-only thesis) | Supports | done | Thesis holds without FL14 |
| [AN-023](../analyses/an-023-theory-operationalization-audit.md) (operationalization audit) | Supports | done | FL14 not ontologically privileged; continuous is the primitive |
| [AN-025](../analyses/an-025-cutoff-sweep-robustness.md) (cutoff sweep) | Supports | done | 19-threshold inverted-U; FL10-FL15 plateau ≥ 0.90; peak FL13 = 0.924 |
| [AN-026](../analyses/an-026-subsample-robustness.md) (subsample robustness) | Supports | done | AUC 0.89–0.96 across full / data-rich / low-bid / high-bid subsamples |

## Open tests

- Sensitivity of concentration to alternative `FL14`-like thresholds.
- Sub-period replication (2009–2014 vs 2015–2019).
- Cross-modality (Convite vs Pregão) decomposition.
