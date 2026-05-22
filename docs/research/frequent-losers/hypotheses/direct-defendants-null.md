---
id: h2
slug: direct-defendants-null
title: "The frequent-loser ranking does not discriminate direct CADE defendants"
cluster: A
paper_section: "§4.3"
status: confirmed
last_updated: 2026-05-22
---

# H:direct-defendants-null — The frequent-loser ranking does not discriminate direct CADE defendants

A loser-side screen built from persistent zero-win participation should
fail when used as a generic cartel-membership detector: direct CADE
defendants typically include the designated winners of the rotation, who
are not zero-win firms. A null AUC against direct defendants is therefore
part of the design — it confirms that the ranking carries loser-side scope,
not membership scope.

> **Evidence strength: Strong.**
> AUC against 47 direct CADE defendants = 0.491 [0.461, 0.520];
> indistinguishable from random and stable across raw, OOF, and
> temporal-holdout regimes. D4 mechanistic check: only 14.9% (7/47) of
> direct defendants are always-losers; median win rate 0.261 vs 0.086
> for cobidders (Mann–Whitney p < 0.05). The null is the predicted
> finding under the loser-side scope.

## Theory

The cartel theory underlying the loser-side construction
\citep{marshall2012economics,clark2021collusion} predicts heterogeneous
roles: winners take the contract, cobidders manufacture competition. A
participation-intensity score over zero-win firms cannot rank winners by
construction. If the score *did* discriminate direct defendants, it would
either be picking up volume rather than role allocation, or the underlying
cartel theory would not be operative.

## Prediction

AUC of the frequent-loser score against direct CADE defendants ≈ 0.50
(random); it should not reach the levels obtained against cobidders.

## Competing prediction

**Generic-detector reading.** If the FL score had general predictive power
for cartel membership, AUC against direct defendants would be substantially
above 0.50, undermining the loser-side scope interpretation.

## Case evidence

Direct CADE defendants in 2009–2019 procurement-cartel adjudications include
firms identified as designated winners or coordinators in the legal record.
The cobidder set is constructed *excluding* direct defendants by design —
see §2.3 of the [manuscript](../paper.md).

## Empirical test

- *Outcome*: direct-defendant indicator (1 if firm is a direct CADE
  defendant).
- *Variation*: position in the FL stratum vs other firms in BEC.
- *Specification*: AUC of `FL14` and `log(1+tenders_count)` over the full
  firm panel, with direct defendants as the positive class.
- *Identification*: same as [H:cobidder-concentration](cobidder-concentration.md),
  but with a different positive label.

## Data requirements and limitations

Requires CADE × BEC CNPJ-root link. Limitation: the test is constructive —
it asks whether the score fails on a target it was not designed to detect.
A null result is the predicted finding under the loser-side scope.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-007](../analyses/an-007-auc-direct-cade.md) (direct-defendant AUC) | Direct | done | AUC = 0.491 [0.461, 0.520] — random |
| [AN-018](../analyses/an-018-gate-d4.md) (D4 winner-heavy) | Supports | done | 14.9% of direct defendants are always-losers; median win rate 0.261 |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | Direct-defendant AUC stays at 0.51 across raw/OOF/temporal — null is regime-invariant |

## Open tests

- Decomposition of direct-defendant pool into roles (declared winner,
  coordinator, other) and AUC by role.
- Sensitivity to alternative direct-defendant definitions.
