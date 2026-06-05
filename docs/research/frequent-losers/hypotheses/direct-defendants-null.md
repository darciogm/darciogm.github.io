---
paper: frequent-losers
id: h2
slug: direct-defendants-null
title: "The ranking does not order direct CADE defendants (scope boundary by design)"
cluster: A
paper_section: "§4.3"
status: partial (strongly supported)
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

# H:direct-defendants-null — The frequent-loser binary flag does not order direct CADE defendants

A loser-side screen built from persistent zero-win participation should
*not* order direct CADE defendants — these are legal anchors that typically
include the designated winners of the rotation, who are not zero-win firms.
A null AUC against direct defendants is therefore a **scope boundary by
design**, not a failure: it marks the edge of what a cheap award-layer
ranking can reach, and it disciplines the rest of the paper against any
"cartel-detector" reading.

!!! abstract "Intuition (plain-language)"
    Direct CADE defendants in procurement cartels are typically the *winners* of the rotation, not the systematic losers. A loser-side *binary flag* — built on persistent zero-win participation — cannot order winners, and the data confirm this (AUC ≈ 0.49, indistinguishable from random). Participation *volume*, by contrast, ranks defendants moderately above chance (0.66–0.70), because heavy participants are easier to flag generically. The binary null is the predicted finding: it is a scope boundary by design, not a failure. It defines what the flag *claims* to do (concentrate forensic priority toward adjudication-anchored losers) and what it *doesn't* claim to do (identify ringleaders). This is the anti-claim that disciplines the rest of the paper.


> **Evidence strength: Strong (on the binary flag).**
> AUC of the binary FL flag against direct CADE defendants ≈ 0.491
> [0.461, 0.520]; indistinguishable from random and stable across raw,
> OOF, and temporal-holdout regimes. The continuous participation score
> ranks defendants moderately above chance (0.658 full / 0.695 strict) —
> volume is generically informative; the loser-side *binary flag* is not.
> D4 mechanistic check: only 14.9% of direct defendants are always-losers;
> their median win rate is 0.261, whereas cobidders — being always-losers —
> have win rate ≡ 0 by construction.
> The binary null is the predicted finding — the loser-side flag misses
> win-heavy defendants by design.

## Theory

The cartel theory underlying the loser-side construction
\citep{marshall2012economics,clark2021collusion} predicts heterogeneous
roles: winners take the contract, cobidders manufacture competition. A
participation-intensity score over zero-win firms cannot order winners by
construction. If the score *did* order direct defendants, it would either be
picking up opportunity volume rather than loser-side exposure, or the
"cheap-signal" framing of the paper would be wrong.

## Prediction

AUC of the frequent-loser *binary flag* against direct CADE defendants ≈ 0.50
(random); the continuous participation score, by contrast, may rank defendants
moderately above chance because volume is generically informative.

## Competing prediction

**Generic-detector reading.** If the binary flag had general predictive power
for cartel membership, AUC against direct defendants would be substantially
above 0.50, contradicting the reach-and-limits map: a cheap award-layer flag
concentrates loser-side priority, it does not detect cartelists. (Participation
volume ranking defendants moderately above chance — 0.66–0.70 — is consistent
with the map: volume is generic, the loser-side binary flag is the scope-bounded
object.)

## Case evidence

Direct CADE defendants in 2009–2019 procurement-cartel adjudications include
firms identified as designated winners or coordinators in the legal record.
The cobidder set is constructed *excluding* direct defendants by design —
see §2.3 of the [manuscript](../paper.md).

## Empirical test

- *Outcome*: direct-defendant indicator (1 if firm is a direct CADE
  defendant).
- *Variation*: position in the FL stratum vs other firms in BEC.
- *Specification*: AUC of the score `s = log(1+T)` (and `FL14`) over the full
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
| [AN-007](../analyses/an-007-auc-direct-cade.md) (direct-defendant AUC) | Direct | done | Binary FL flag AUC = 0.491 [0.461, 0.520] — random; continuous participation score 0.658 (full) / 0.695 (strict) — volume generically informative |
| [AN-018](../analyses/an-018-gate-d4.md) (D4 winner-heavy) | Supports | done | 14.9% of direct defendants are always-losers; median win rate 0.261 |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | Direct-defendant AUC stays at 0.51 across raw/OOF/temporal — null is regime-invariant |

## Open tests

- Decomposition of direct-defendant pool into roles (declared winner,
  coordinator, other) and AUC by role.
- Sensitivity to alternative direct-defendant definitions.
