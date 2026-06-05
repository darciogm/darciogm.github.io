---
paper: frequent-losers
id: h4
slug: timing-discipline
title: "Under strict timing the signal is retrospective among incumbents, not prospective"
cluster: B
paper_section: "§4.2"
status: "not confirmed at the universe (incumbent residue only)"
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

# H:timing-discipline — Under strict timing the signal is retrospective among incumbents, not prospective at the universe

A retrospective screen built using post-target information leaks predictive
power. The honest hypothesis is *not* that the ranking is fully prospective,
but that we can disclose **exactly where strict timing leaves it standing and
where it does not**: the signal survives strict holdout only inside the
always-loser pool, it is retrospective among incumbents rather than
prospective at the full universe, a fully sequential strict-timing deployment
is infeasible on this panel, and the result leans heavily on a single CADE
case.

!!! abstract "Intuition (plain-language)"
    Could the ranking work only because we built it with hindsight? Under strict timing the answer is: at the universe, no. *At the full universe*, where a regulator would actually deploy it cold, ROC is 0.474 — below chance — and precision@500 = recall@500 = 0 in every year. A residue survives only *inside the training always-loser pool* (continuous ROC 0.684; FL14 0.646) — i.e., conditioning on incumbents the labels retrospectively anchor. A fully sequential strict-timing pipeline is infeasible on this panel. And the signal still leans on one case, though less than before: leaving the largest cartel out drops PR-AUC from 0.143 to 0.090 (−37%), because that one case is about 32% of the positives. All disclosed, not buried.


> **Evidence strength: Not confirmed at the universe (incumbent residue only).**
> The honest timing disclosure on the BEC × CADE data under the non-circular
> 651-cobidder label:
> (i) **Fails at the full universe** ([AN-013](../analyses/an-013-precision-at-k-audit.md),
> [AN-006](../analyses/an-006-strict-prospective-holdout.md)):
> strict prospective ranking gives ROC 0.474 (below chance) with
> precision@500 = recall@500 = 0 — and zero TP@500 in every rolling-origin
> year. Not a cold prospective screen.
> (ii) **Incumbent-pool residue only** ([AN-006](../analyses/an-006-strict-prospective-holdout.md)):
> inside the training always-loser pool the continuous score reaches ROC
> 0.684 (FL14 0.646), retrospective among incumbents the labels anchor.
> (iii) **Sequential strict-timing infeasible** ([AN-029](../analyses/an-029-three-classifier-timing-battery.md)):
> a fully sequential strict-timing deployment cannot be constructed on this
> panel — disclosed as a limit, not papered over.
> (iv) **Single-case dependence (attenuated)** ([AN-013](../analyses/an-013-precision-at-k-audit.md),
> [AN-030](../analyses/an-030-market-persistence.md)): leave-largest-out drops
> PR-AUC from 0.143 to 0.090 (**−37%**); one case is ≈ 32% of the positives
> (45.4% of TP@500). Attenuated under the broad label but still material.
> (v) **Leakage audit** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> in-sample item-level numbers attenuate under temporal holdout; the
> direct-defendant null is regime-invariant.
> (vi) **Label-frozen timing armor** (`outputs/diagnostics/audit_armor/`):
> with pool, score, and label all frozen on 2009–2016 (13,051 incumbents),
> the prospective new-contact AUC is **0.713** (231 positives) — but nearly
> identical to the retrospective 0.718, so this is **generic co-participation
> forecasting, not cartel-specific prediction**.
> The hypothesis is **not confirmed at the universe**: the labels are
> retrospective adjudication anchors, and only an incumbent-firm residue
> survives strict timing. Non-BEC replication remains the path to any
> generalizable claim.

## Theory

Out-of-time evaluation is the standard discipline for predictive
classifiers \citep{wallimann2023machine}. For an enforcement triage rank,
the relevant timing is the enforcement decision moment: information used to
form the score must precede the period in which forensic priority is
allocated.

## Prediction

Under strict timing, the disclosure should show:

- a residue **survives only inside the always-loser pool** (continuous ROC
  0.684, FL14 0.646, conditional on incumbents the labels anchor);
- it **fails at the full universe** (ROC 0.474, precision@500 = recall@500 = 0)
  — the labels are retrospective adjudication anchors, not prospective; and
- it is **single-case-dependent, attenuated** (leave-largest-out PR-AUC
  0.143 → 0.090, −37%; one case ≈ 32% of positives).

## Competing prediction

**Fully prospective screen.** A naive reading would claim the ranking is a cold
prospective detector that orders new entrants. The disclosed result rejects
that reading: at the universe under strict timing the ranking is below chance
with zero TP@500, and a fully sequential strict-timing deployment is
infeasible. The honest claim is the retrospective, incumbent-residue one.

## Case evidence

CADE adjudication dates are public and can be used to define the target
window. The temporal-holdout audit (script `27_strict_prospective_holdout.R`)
constructs the strict ex ante variant.

## Empirical test

- *Within-pool strict timing*: score uses pre-target participation; evaluated
  inside the training always-loser pool (continuous ROC 0.684).
- *Universe strict timing*: same score deployed cold at the full universe
  (ROC 0.474, precision@500 = recall@500 = 0).
- *Single-case stress*: leave-largest-out PR-AUC (0.143 → 0.090, −37%).
- *Outcome*: the disclosed map of where strict timing leaves the signal
  standing and where it collapses.

## Data requirements and limitations

Requires CADE adjudication dates aligned with the BEC panel. Limitation:
strict timing reduces effective sample size and statistical power; the
test is therefore a worst-case stress rather than the operational
deployment scenario.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (strict ex ante firm) | Direct | done | Residue only inside the training always-loser pool: continuous ROC 0.684 / FL14 0.646 — conditional on incumbents |
| [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k + universe + leave-largest-out) | Direct | done | At full universe ROC 0.474 (below chance), precision@500 = recall@500 = 0 (retrospective, not prospective); leave-largest-out PR-AUC 0.143 → 0.090 (−37%), one case ≈ 32% of positives |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | In-sample item-level numbers attenuate under temporal holdout; direct-defendant null regime-invariant |
| [AN-029](../analyses/an-029-three-classifier-timing-battery.md) (timing battery) | Direct | done | A fully sequential strict-timing deployment is infeasible on this panel — disclosed as a limit |
| [AN-030](../analyses/an-030-market-persistence.md) (firm/market persistence) | Supports | done | 8.7% firm persistence between windows; the pool the screen survives in is incumbents, not fresh entrants |

## Open tests

- Window-length sensitivity (clf_2013, clf_2010 extensions to the
  three-classifier battery).
- Decomposition of attenuation into sample-size vs information channels.
- Cobidder-specific persistence rate (of the 651 cobidders, how many in
  both windows?) — would refine [AN-030](../analyses/an-030-market-persistence.md).

## Why not confirmed?

Under the non-circular label the timing evidence does not confirm a
prospective screen. At the full universe the strict ranking is below chance
(ROC 0.474, precision@500 = recall@500 = 0, zero TP@500 every rolling-origin
year), so the operational content is retrospective among incumbents — the
labels are adjudication anchors, not forecasts. A residue survives only inside
the training always-loser pool (continuous ROC 0.684, FL14 0.646). A fully
sequential strict-timing pipeline is infeasible on this panel, and the signal
still leans on a single CADE case (leave-largest-out drops PR-AUC 0.143 → 0.090,
−37%; ≈ 32% of positives in one case). These are disclosed limits, not hidden
weaknesses — the honest map is the contribution.

Two artifact families further remain untested by any within-data
timing audit, and bound the within-pool survival itself:

1. **Same data-generating process.** All evidence lives in BEC-SP
   procurement and CADE-Brasil adjudication. A systematic feature of *this
   institutional environment* could be driving the within-pool survival
   across sub-windows (e.g., a structural feature of how Brazilian
   procurement-cartel cases get adjudicated; a feature of BEC's
   participation registration that produces consistent loser-side
   footprints across sub-periods). The temporal holdout cannot distinguish
   "the within-pool signal generalizes across firms and time" from "it
   captures a stable feature of BEC-SP".

2. **Selection-on-CADE-adjudication is time-correlated.** The cobidder
   labels are defined relative to CADE's adjudication choices. If CADE's
   selection of which cartels to adjudicate has a stable bias (e.g., always
   selecting cases with loser-side activity), out-of-time cobidders inherit
   that bias — and, given the single-case dependence above, much of the
   within-pool signal traces to one large adjudicated case.

Both can only be ruled out by replication on a non-BEC panel with an
independent cartel anchor (ComprasNet federal + a federal-level
anti-cartel authority; another state's e-procurement with its own
cartel adjudications; or cross-country with comparable forensic
benchmarks). Under the current evidence H4 is **not confirmed at the
universe (incumbent residue only)**, consistent with H1 and H3 and the
project-wide rule documented in [findings/index.md](../findings/index.md).
