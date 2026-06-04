---
paper: frequent-losers
id: h4
slug: timing-discipline
title: "Under strict timing the signal is retrospective among incumbents, not prospective"
cluster: B
paper_section: "§4.2"
status: "partial (strongly supported)"
last_updated: 2026-06-02
---

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
    Could the screen work only because we built it with hindsight? Under strict timing the answer is split, and the paper discloses both halves. *Inside the always-loser pool* — i.e., conditioning on incumbents the screen already flags — the score still discriminates at firm AUC ≈ 0.77. But *at the full universe*, where a regulator would actually deploy it cold, ROC collapses to ≈ 0.55 and precision@500 falls to roughly zero: the screen is retrospective among incumbents, not prospective. A fully sequential strict-timing pipeline is infeasible on this panel. And the signal leans on one case: leaving the largest cartel out drops PR-AUC from 0.126 to 0.036 (−71%), because that one case is about 55% of the positives. All disclosed, not buried.


> **Evidence strength: Partial (strongly supported).**
> The honest timing disclosure on the BEC × CADE data:
> (i) **Survives only inside the always-loser pool** ([AN-006](../analyses/an-006-strict-prospective-holdout.md)):
> strict ex ante firm AUC ≈ 0.77 [0.734, 0.800] *conditional on incumbents
> the screen flags* — not at the full universe.
> (ii) **Retrospective, not prospective at the universe** ([AN-013](../analyses/an-013-precision-at-k-audit.md)):
> at the full universe under strict timing, ROC ≈ 0.55 and precision@500 ≈ 0.
> The signal is retrospective among incumbents, not a cold prospective
> screen.
> (iii) **Sequential strict-timing infeasible** ([AN-029](../analyses/an-029-three-classifier-timing-battery.md)):
> a fully sequential strict-timing deployment cannot be constructed on this
> panel — disclosed as a limit, not papered over.
> (iv) **Single-case dependence** ([AN-013](../analyses/an-013-precision-at-k-audit.md),
> [AN-030](../analyses/an-030-market-persistence.md)): leave-largest-out drops
> PR-AUC from 0.126 to 0.036 (**−71%**); one case is ≈ 55% of the positives.
> (v) **Leakage audit** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> in-sample item-level numbers attenuate under temporal holdout; the
> direct-defendant null is regime-invariant.
> Promotion to 🟢 (**Confirmed**) requires independent replication on a
> non-BEC procurement panel; see the H4 page section on why even the
> strictest within-data timing audits cannot satisfy that bar.

## Theory

Out-of-time evaluation is the standard discipline for predictive
classifiers \citep{wallimann2023machine}. For an enforcement triage rank,
the relevant timing is the enforcement decision moment: information used to
form the score must precede the period in which forensic priority is
allocated.

## Prediction

Under strict timing, the disclosure should show:

- the signal **survives inside the always-loser pool** (firm AUC ≈ 0.77,
  conditional on incumbents the screen flags);
- but **collapses at the full universe** (ROC ≈ 0.55, precision@500 ≈ 0) —
  it is retrospective among incumbents, not prospective; and
- it is **single-case-dependent** (leave-largest-out PR-AUC 0.126 → 0.036).

## Competing prediction

**Fully prospective screen.** A naive reading would claim the screen is a cold
prospective detector that ranks new entrants. The disclosed result rejects
that reading: at the universe under strict timing the screen is at chance, and
a fully sequential strict-timing deployment is infeasible. The honest claim is
the retrospective-among-incumbents one.

## Case evidence

CADE adjudication dates are public and can be used to define the target
window. The temporal-holdout audit (script `27_strict_prospective_holdout.R`)
constructs the strict ex ante variant.

## Empirical test

- *Within-pool strict timing*: score uses pre-target participation; evaluated
  inside the always-loser pool (firm AUC ≈ 0.77).
- *Universe strict timing*: same score deployed cold at the full universe
  (ROC ≈ 0.55, precision@500 ≈ 0).
- *Single-case stress*: leave-largest-out PR-AUC (0.126 → 0.036).
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
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (strict ex ante firm) | Direct | done | Survives only inside the always-loser pool: firm AUC ≈ 0.77 (FL14) / 0.750 (continuous) — conditional on incumbents |
| [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k + universe + leave-largest-out) | Direct | done | At full universe ROC ≈ 0.55, precision@500 ≈ 0 (retrospective, not prospective); leave-largest-out PR-AUC 0.126 → 0.036 (−71%), one case ≈ 55% of positives |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | In-sample item-level numbers attenuate under temporal holdout; direct-defendant null regime-invariant |
| [AN-029](../analyses/an-029-three-classifier-timing-battery.md) (timing battery) | Direct | done | A fully sequential strict-timing deployment is infeasible on this panel — disclosed as a limit |
| [AN-030](../analyses/an-030-market-persistence.md) (firm/market persistence) | Supports | done | 8.7% firm persistence between windows; the pool the screen survives in is incumbents, not fresh entrants |

## Open tests

- Window-length sensitivity (clf_2013, clf_2010 extensions to the
  three-classifier battery).
- Decomposition of attenuation into sample-size vs information channels.
- Cobidder-specific persistence rate (of 193 cobidders, how many in
  both windows?) — would refine [AN-030](../analyses/an-030-market-persistence.md).

## Why not 🟢 Confirmed?

The within-data timing evidence is honestly split, and the paper
discloses both halves. Inside the always-loser pool the screen survives
strict timing (firm AUC ≈ 0.77, conditional on incumbents); at the full
universe it does not (ROC ≈ 0.55, precision@500 ≈ 0), so the operational
content is retrospective among incumbents, not a cold prospective screen.
A fully sequential strict-timing pipeline is infeasible on this panel, and
the signal leans on a single CADE case (leave-largest-out drops PR-AUC
0.126 → 0.036, ≈ 55% of positives in one case). These are disclosed limits,
not hidden weaknesses — the honest map is the contribution.

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
benchmarks). Until that exists, H4 stays at **Partial (strongly
supported)**, consistent with H1 and H3 and the project-wide rule
documented in [findings/index.md](../findings/index.md).
