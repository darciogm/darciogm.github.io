---
paper: frequent-losers
id: h1
slug: cobidder-concentration
title: "The ranking concentrates adjudication-anchored exposure above mechanical opportunity"
cluster: A
paper_section: "§3 + §4"
status: "not confirmed (opportunity explains it)"
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->

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
    Among always-loser firms in Brazilian procurement, the ones that bid most often (frequent losers) sit disproportionately near cartels formally adjudicated by Brazil's antitrust authority. But almost all of that raw proximity is *opportunity*: firms that bid a lot mechanically end up near anyone, including CADE defendants. The honest question is what is left after you net opportunity out. The answer under the reproducible non-circular label: a raw concentration that looks high (ROC 0.761, lift 5.6×) is generic co-participation arithmetic; the signal *inside* a fixed opportunity stratum is 0.471 — at chance — and the marginal nested increment (+0.010, p = 0.013) does not survive the permutation tests. Cheap award records concentrate *where to look first*; they do not prove cover-bidding, and net of opportunity they carry no robust residual.


> **Evidence strength: Not confirmed (opportunity explains it).**
> The honest decomposition on the BEC 2009–2019 panel under the
> non-circular 651-cobidder label:
> (i) raw concentration is mostly **opportunity exposure** — an
> exposure-only model reaches ROC ≈ 0.90 unconditionally (0.713 on the
> exposed subset), so the raw numbers are exposure-inflated, not
> discriminating power
> ([AN-004](../analyses/an-004-cobidder-baseline.md));
> (ii) the **within-stratum signal is at chance** — ROC 0.471
> (FL14 0.507); the nested increment over exposure is only **+0.010**
> (DeLong p = 0.013), marginal at best
> ([AN-004](../analyses/an-004-cobidder-baseline.md));
> (iii) the marginal increment **does not survive permutation**: matched-
> stratum label permutation p = 0.127 (ns), FL-enrichment within matched
> strata p = 0.067 (ns)
> ([AN-005](../analyses/an-005-sham-fl-permutation.md));
> (iv) cutoff sweep and subsample robustness describe the raw concentration,
> not a residual signal
> ([AN-025](../analyses/an-025-cutoff-sweep-robustness.md),
> [AN-026](../analyses/an-026-subsample-robustness.md));
> (v) negative controls corroborate the opportunity account: real ≈ placebo
> (p = 0.46), high-volume-winner null *above* real (p = 0.91)
> ([AN-005](../analyses/an-005-sham-fl-permutation.md));
> (vi) leakage audit: in-sample item-level numbers attenuate sharply under
> out-of-fold and temporal holdout
> ([AN-014](../analyses/an-014-leakage-audit-d3.md));
> (vii) strict ex ante (train 09-16 → test 17-19): the ranking **fails on
> the full universe** (ROC 0.474), surviving only as an incumbent-pool
> residue (ROC 0.684)
> ([AN-006](../analyses/an-006-strict-prospective-holdout.md),
> [AN-017](../analyses/an-017-gate-d3.md)).
> The hypothesis is **not confirmed** under the non-circular label: net of
> opportunity there is no robust residual ordering. The deflationary
> decomposition is itself the contribution.

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
of the continuous score) should, under the hypothesis, rank cobidders above
other always-losers **by more than mechanical opportunity predicts**. The
honest claim is the within-stratum increment over an exposure-only benchmark —
which, under the non-circular label, is at chance (within-stratum ROC 0.471;
nested increment +0.010, ns across permutation designs).

## Competing prediction

**Opportunity-only explanation.** Firms that bid in many tenders mechanically
have more chances of co-bidding alongside any subset of firms, including CADE
defendants. Almost all of the raw concentration is exactly this — an
exposure-only model reaches ROC ≈ 0.90 unconditionally. The threat the ranking
must survive is that *nothing* is left after opportunity is netted out. The
discipline in [H:exposure-discipline](exposure-discipline.md) shows that, under
the non-circular label, **the opportunity-only explanation prevails**: no
robust residual ordering survives.

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
| [AN-001](../analyses/an-001-zero-win-rank.md) (construction) | Setup | done | 16,843 always-losers; FL14 = T ≥ 14 (median+1.5×IQR, administrative cut); 2,735 FL firms; canonical label = 651 cobidders (341 FL / 310 non-FL), not FL-conditioned |
| [AN-004](../analyses/an-004-cobidder-baseline.md) (exposure decomposition) | Against | done | Raw concentration is opportunity (exposure-only ROC ≈ 0.90); within-stratum signal 0.471 (≈chance), nested increment +0.010 (DeLong p = 0.013) |
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (permutation + neg. controls) | Against | done | Matched permutation p = 0.127 (ns), FL-enrichment p = 0.067 (ns); real ≈ placebo (p = 0.46) — opportunity explains the concentration |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (timing discipline) | Against | done | Strict ranking fails at the full universe (ROC 0.474); incumbent-pool residue only (ROC 0.684) |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (continuous vs binary) | Mixed | done | Continuous edges FL14 within stratum but both are at chance net of opportunity |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | In-sample item-level numbers attenuate sharply under OOF / temporal holdout |
| [AN-017](../analyses/an-017-gate-d3.md) (continuous-only thesis) | Supports | done | Thesis holds without FL14 |
| [AN-023](../analyses/an-023-theory-operationalization-audit.md) (operationalization audit) | Supports | done | FL14 not ontologically privileged; continuous is the primitive |
| [AN-025](../analyses/an-025-cutoff-sweep-robustness.md) (cutoff sweep) | Supports | done | The raw concentration is not an artifact of one administrative cut (inverted-U across thresholds); but the raw lift is opportunity, not a residual signal |
| [AN-026](../analyses/an-026-subsample-robustness.md) (subsample robustness) | Supports | done | AUC 0.89–0.96 across full / data-rich / low-bid / high-bid subsamples |

## Open tests

- Sensitivity of concentration to alternative `FL14`-like thresholds.
- Sub-period replication (2009–2014 vs 2015–2019).
- Cross-modality (Convite vs Pregão) decomposition.
