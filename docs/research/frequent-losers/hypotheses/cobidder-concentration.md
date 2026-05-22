---
id: h1
slug: cobidder-concentration
title: "The frequent-loser ranking concentrates CADE-adjacent cobidders"
cluster: A
paper_section: "§3 + §4"
status: partial
last_updated: 2026-05-22
---

# H:cobidder-concentration — The frequent-loser ranking concentrates CADE-adjacent cobidders

If the award-layer signal is informative for enforcement triage, then firms
that always lose but bid alongside direct CADE defendants in adjudicated
cartel environments should appear disproportionately in the upper-loser
stratum identified by persistent zero-win participation. The hypothesis is
about *loser-side adjacency*, not about cartel membership: the ranking
should concentrate cobidders, not direct defendants.

> **Evidence strength: Strong (single-source).**
> FL14 AUC 0.924 [0.921, 0.926] against 193 adjudicated cobidders;
> continuous log_tc AUC 0.939 [0.932, 0.946] dominates the binary
> (DeLong p = 2 × 10⁻⁵). 131 of 193 cobidders recovered at FL14 cutoff.
> Promotion to 🟢 awaits replication on a non-BEC procurement panel.

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
of the continuous score) should contain a disproportionate share of CADE
cobidders relative to the baseline rate in the always-loser population.

## Competing prediction

**Volume-only explanation.** Firms that bid in many tenders mechanically have
more chances of co-bidding alongside any subset of firms, including CADE
defendants. The cobidder concentration could reflect raw participation
volume rather than a signal-carrying loser-side footprint. Adjudication
disciplines this in [H:exposure-discipline](exposure-discipline.md).

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
- *Specification*: AUC of `FL14` (binary) and `log(1+tenders_count)`
  (continuous) over always-losers, with cobidders as the positive class.
- *Identification*: scope of the loser-side ranking is restricted to
  zero-win firms; baseline benchmark before any audit discipline.

## Data requirements and limitations

Requires BEC LANCES export (firm × item × OC) joined with CADE adjudication
records linked at the CNPJ root level. Limitation: cobidder labels depend on
adjudication coverage in the panel window, and the set is exposure-limited
to CADE-adjudicated environments in São Paulo.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-001](../analyses/an-001-zero-win-rank.md) (construction) | Setup | done | 16,843 always-losers; FL14 cutoff = 14 (median+1.5×IQR=13.5); 2,735 FL firms (16.2%) |
| [AN-004](../analyses/an-004-cobidder-baseline.md) (baseline concentration) | Supports | done | FL14 AUC 0.924; continuous 0.939 |
| [AN-011](../analyses/an-011-horse-race-continuous.md) (continuous vs binary) | Supports | done | Continuous dominates FL14, DeLong p = 2e-5 |
| [AN-017](../analyses/an-017-gate-d3.md) (continuous-only thesis) | Supports | done | Thesis holds without FL14 |
| [AN-023](../analyses/an-023-theory-operationalization-audit.md) (operationalization audit) | Supports | done | FL14 not ontologically privileged; continuous is the primitive |

## Open tests

- Sensitivity of concentration to alternative `FL14`-like thresholds.
- Sub-period replication (2009–2014 vs 2015–2019).
- Cross-modality (Convite vs Pregão) decomposition.
