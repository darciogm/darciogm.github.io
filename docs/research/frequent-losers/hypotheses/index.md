---
paper: frequent-losers
---

# Hypotheses

Testable implications for *Cheap Signals, Costly Proof: The Reach and Limits
of Award-Layer Screening in Cartel Enforcement* (Genicolo-Martins & de
Azevedo, JLEO). Each implication lives in its own file and is referenced
project-internally by `H:<slug>`.

The paper's claim is deliberately narrow: cheap award-layer records can
**order forensic priority** — they tell an agency *where to look first* —
without proving conduct. The contribution is a decomposition method (how much
of a raw award-layer signal is genuine versus mechanical opportunity) plus a
reach-and-limits map of where that signal survives and where it does not. The
hypotheses below are therefore framed not as "predictions a detector makes"
but as **threats the ranking must survive** given how little it observes:
opportunity exposure, timing and leakage, single-case dependence, scope
against direct defendants, the division of labor with bid microdata, the
gatekeeping value of the screen, and the scope (not damages) content of
price.

Hypotheses are organized into thematic clusters aligned with the paper's
sections in `work/v22-editor/submission_clean/`.

## How to read a hypothesis page

Each page follows the same structure — *the design → what's known → what's
left*:

- **Title + lede:** the `H:<slug>` title, then a plain-words statement of the
  claim.
- **Evidence-strength callout:** an at-a-glance verdict (Very strong / Strong /
  Moderate / Weak / Not yet tested) plus a one-line status.
- **Theory:** the theoretical motivation, with references.
- **Prediction:** the precise directional claim — and, where relevant, the
  honest *limit* of what survives.
- **Competing prediction:** what a non-strategic explanation (typically
  mechanical opportunity exposure) predicts instead — the threat the test has
  to survive.
- **Case evidence:** anecdotal grounding from CADE decisions and case
  documents.
- **Empirical test:** the concrete specification — outcome, variation,
  specification, fixed effects.
- **Data requirements and limitations:** datasets needed and threats to
  identification.
- **Evidence:** a table of the project's analyses bearing on the hypothesis —
  `Analysis` (AN-ID, linked) · `Bearing` (Supports / Against / Mixed / Pending)
  · `Key takeaway`. Click the analysis ID for the full design and results.
- **Open tests:** forward-looking only — analyses not yet run, or not yet
  stubbed.

The **scorecard** below rolls up the current status of every hypothesis
against the analyses (`AN-NNN`) that bear on it.

---

## Cluster A: Reach and scope of the ranking

Maps to paper §3 (award-layer screening) and §4.1, §4.3 (baseline + scope check).

- [H:cobidder-concentration](cobidder-concentration.md) — The ranking
  concentrates adjudication-anchored exposure (cobidders) in the always-loser
  stratum **above the share explained by participation opportunity alone**.
- [H:direct-defendants-null](direct-defendants-null.md) — The same ranking
  does not order direct CADE defendants — a scope boundary by design, not a
  failure (a loser-side screen cannot rank win-heavy defendants).

## Cluster B: Threats the ranking must survive

Maps to paper §4.2 (exposure and timing discipline) and the
[Validation Audits](../paper.md).

- [H:exposure-discipline](exposure-discipline.md) — Most raw concentration is
  opportunity; once opportunity is netted out, a limited genuine increment
  survives.
- [H:timing-discipline](timing-discipline.md) — Under strict holdout the
  signal survives only inside the always-loser pool, is retrospective among
  incumbents (not prospective at the universe), and leans on a single case.

## Cluster C: Economic profile of cobidders

Maps to paper §5 (the economic profile of adjudication-anchored losers).

- [H:cobidder-profile-distinct](cobidder-profile-distinct.md) — Cobidders look
  different from other frequent losers (deployed more broadly, closer to legal
  anchors, more concentrated portfolios) — descriptive economic content, not
  proof of a cover-bidding role.

## Cluster D: Division of labor with bid microdata

Maps to paper §6 (award → bid layer sequencing).

- [H:award-bid-complementarity](award-bid-complementarity.md) — Award-layer
  and bid-distribution screens carry complementary information (award ranks
  where to look, bid evaluates what is found) — a division of labor, not
  dominance.
- [H:gatekeeping-cost-of-evidence](gatekeeping-cost-of-evidence.md) —
  Award-layer gatekeeping traces a cost–recall frontier; firm-count reductions
  are large but bid-row savings are smaller, and no single operating point is
  optimal.

## Cluster E: Price as scope

Maps to paper §7 (price evidence as scope, not damages).

- [H:price-scope-sign-reversal](price-scope-sign-reversal.md) — The price
  coefficient sign reverses across specifications, marking *scope* (where the
  ranking applies), not a damages/overcharge magnitude.

---

## Scorecard

Status runs **Not yet tested** → **Not confirmed** / **Mixed** / **Partial** →
**Confirmed**. Single-source own-project estimates anchored in BEC 2009–2019
and CADE adjudications; promotion to **Confirmed** would require independent
replication on a non-BEC procurement panel.

| # | Threat the ranking must survive | Headline evidence | Evidence | Status |
|---|---|---|---|---|
| [H1](cobidder-concentration.md) | Ranking concentrates cobidders above mechanical opportunity. | Raw concentration is mostly opportunity (exposure-only AUC 0.946); the **within-stratum** signal is 0.7715 and the genuine increment over opportunity is **+0.042** (DeLong p ≈ 2e-6). Limited signal survives. | [AN-004](../analyses/an-004-cobidder-baseline.md), [AN-005](../analyses/an-005-sham-fl-permutation.md), [AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-011](../analyses/an-011-horse-race-continuous.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-017](../analyses/an-017-gate-d3.md), [AN-025](../analyses/an-025-cutoff-sweep-robustness.md), [AN-026](../analyses/an-026-subsample-robustness.md) | **Partial (strongly supported)** |
| [H2](direct-defendants-null.md) | Predicted null on direct defendants holds (scope boundary). | AUC ≈ 0.49 [0.461, 0.520] vs direct defendants — indistinguishable from random; only 14.9% of direct defendants are always-losers. The null is by design: a loser-side screen misses win-heavy defendants. | [AN-007](../analyses/an-007-auc-direct-cade.md), [AN-018](../analyses/an-018-gate-d4.md) | **Partial (strongly supported)** |
| [H3](exposure-discipline.md) | Genuine signal survives once opportunity is netted out. | Most raw concentration is opportunity exposure (exposure-only AUC 0.946); within-stratum AUC 0.7715, genuine increment +0.042 (DeLong p ≈ 2e-6); scope matrix shows the score repels winner-heavy defendants. A limited signal survives the discipline. | [AN-005](../analyses/an-005-sham-fl-permutation.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md), [AN-028](../analyses/an-028-exposure-stratum-balance.md) | **Partial (strongly supported)** |
| [H4](timing-discipline.md) | Signal survives strict timing / leakage / single-case stress. | Strict holdout survives only inside the always-loser pool (firm AUC ≈ 0.77); at the full universe ROC ≈ 0.55 and precision@500 ≈ 0 — retrospective among incumbents, not prospective. Sequential strict-timing infeasible. Leave-largest-out: PR-AUC 0.126 → 0.036 (−71%); one case ≈ 55% of positives. Disclosed. | [AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-013](../analyses/an-013-precision-at-k-audit.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-029](../analyses/an-029-three-classifier-timing-battery.md), [AN-030](../analyses/an-030-market-persistence.md) | **Partial (strongly supported)** |
| [H5](cobidder-profile-distinct.md) | Cobidders are economically distinct (descriptive, not proof of role). | Distinctness survives volume matching (SMD 0.49→0.00): product HHI d +0.47, repeat-spread −0.56, median gap −0.25 hold or strengthen — not a volume artifact. Bid-conduct is single-channel: dispersion (n.s.) and timing (all p≥0.23) are documented nulls. Patterns are consistent-with but not diagnostic-of credible losing roles. | [AN-008](../analyses/an-008-pbu-characterization.md), [AN-009](../analyses/an-009-network-hhi.md), [AN-024](../analyses/an-024-unified-mechanism.md), [AN-028](../analyses/an-028-exposure-stratum-balance.md), [AN-031](../analyses/an-031-bid-level-behavioral-profile.md), [AN-032](../analyses/an-032-matched-heterogeneity-audit.md), [AN-021](../analyses/an-021-first-time-fl-matching.md), [AN-041](../analyses/an-041-volume-matched-cobidder-audit.md), [AN-042](../analyses/an-042-volume-matched-timing-audit.md) | **Partial (strongly supported)** |
| [H6](award-bid-complementarity.md) | Award and bid layers are complementary (division of labor). | Imhof 0.888 / FL-binary 0.921 / combined 0.962 — combining beats either layer. Division of labor: award ranks *where to look*, bid evaluates *what is found*. Complementarity, not dominance; leakage-sensitive. | [AN-010](../analyses/an-010-imhof-full-pipeline.md), [AN-011](../analyses/an-011-horse-race-continuous.md), [AN-015](../analyses/an-015-gate-d1.md), [AN-033](../analyses/an-033-imhof-incremental-delong.md), [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) | **Partial (strongly supported)** |
| [H7](gatekeeping-cost-of-evidence.md) | Gatekeeping has cost-effective value along a frontier (no single optimum). | Cost–recall **frontier**, not a cutoff: at K1=2,000 the firm pool drops ~88% but the bid-row footprint only ~33%; beats random 3–12×. No single operating point is optimal — the frontier is the object. | [AN-012](../analyses/an-012-operational-metrics.md), [AN-013](../analyses/an-013-precision-at-k-audit.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md), [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md), [AN-036](../analyses/an-036-cv-precision-stability.md) | **Partial (strongly supported)** |
| [H8](price-scope-sign-reversal.md) | Price marks scope, not damages. | Broad +0.064 (selection into higher-price cells) → overlap-cell ATT −0.097 (blocks a markup reading) → only Q4 stays positive (+0.041). Price against direct CADE is null. Cover-bidding "theater" mechanism is **not identified** — price is scope, not an overcharge. | [AN-019](../analyses/an-019-rdd-cap-price.md), [AN-020](../analyses/an-020-did-decreto-2018.md), [AN-016](../analyses/an-016-gate-d2.md), [AN-022](../analyses/an-022-falsification-pregao.md), [AN-037](../analyses/an-037-sign-reversal-decomposition.md), [AN-038](../analyses/an-038-negative-cell-segment-audit.md), [AN-039](../analyses/an-039-selection-mechanism-test.md), [AN-040](../analyses/an-040-within-cell-mechanism-test.md) | **Partial (strongly supported)** |

## Generated index

All 8 hypothesis pages, auto-generated from the YAML frontmatter of each `docs/hypotheses/<slug>.md` via `scripts/render_indexes.py`. Maintained in lockstep with the scorecard above.

| H# | Cluster | Paper section | Status | Slug + title |
|---|:-:|:-:|---|---|
| [H1](cobidder-concentration.md) | A | §3 + §4 | **Partial (strongly supported)** | [cobidder-concentration](cobidder-concentration.md) — The ranking concentrates adjudication-anchored exposure above mechanical opportunity |
| [H2](direct-defendants-null.md) | A | §4.3 | **Partial (strongly supported)** | [direct-defendants-null](direct-defendants-null.md) — The ranking does not order direct CADE defendants (scope boundary by design) |
| [H3](exposure-discipline.md) | B | §4.2 | **Partial (strongly supported)** | [exposure-discipline](exposure-discipline.md) — A limited genuine signal survives once opportunity exposure is netted out |
| [H4](timing-discipline.md) | B | §4.2 | **Partial (strongly supported)** | [timing-discipline](timing-discipline.md) — Under strict timing the signal is retrospective among incumbents and single-case-dependent |
| [H5](cobidder-profile-distinct.md) | C | §5 | **Partial (strongly supported)** | [cobidder-profile-distinct](cobidder-profile-distinct.md) — Cobidders are economically distinct (descriptive, not proof of role) |
| [H6](award-bid-complementarity.md) | D | §6.1 + §6.2 | **Partial (strongly supported)** | [award-bid-complementarity](award-bid-complementarity.md) — Award and bid layers are complementary (division of labor, not dominance) |
| [H7](gatekeeping-cost-of-evidence.md) | D | §6.3 + §6.4 | **Partial (strongly supported)** | [gatekeeping-cost-of-evidence](gatekeeping-cost-of-evidence.md) — Award-layer gatekeeping traces a cost–recall frontier, not an optimal cutoff |
| [H8](price-scope-sign-reversal.md) | E | §7.1 + §7.2 | **Partial (strongly supported)** | [price-scope-sign-reversal](price-scope-sign-reversal.md) — Price evidence carries scope information, not damages |

**Status legend.** `Not yet tested` → `Not confirmed` / `Mixed` / `Partial` → `Partial (strongly supported)` → `Confirmed`. Promotion to `Confirmed` requires non-BEC replication; see [`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md).
