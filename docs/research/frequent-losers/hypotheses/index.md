---
paper: frequent-losers
---

# Hypotheses

Testable predictions for *Cheap Signals, Costly Proof: Award-Layer Triage
for Cartel Enforcement* (Genicolo-Martins & Furquim de Azevedo). Each
hypothesis lives in its own file and is referenced project-internally
by `H:<slug>`.

Hypotheses are organized into thematic clusters aligned with the paper's
sections in `work/v18-editor/submission_clean/`.

## How to read a hypothesis page

Each page follows the same structure — *the design → what's known → what's
left*:

- **Title + lede:** the `H:<slug>` title, then a plain-words statement of the
  claim.
- **Evidence-strength callout:** an at-a-glance verdict (Very strong / Strong /
  Moderate / Weak / Not yet tested) plus a one-line status.
- **Theory:** the theoretical motivation, with references.
- **Prediction:** the precise directional claim.
- **Competing prediction:** what a non-strategic explanation predicts instead —
  the alternative the test has to rule out.
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

## Cluster A: Award-layer triage scope

Maps to paper §3 (award-layer triage) and §4.1, §4.3 (baseline + scope check).

- [H:cobidder-concentration](cobidder-concentration.md) — The frequent-loser
  ranking concentrates CADE-adjacent cobidders in the always-loser stratum.
- [H:direct-defendants-null](direct-defendants-null.md) — The same ranking
  does not discriminate direct CADE defendants (loser-side scope by design).

## Cluster B: Audit discipline

Maps to paper §4.2 (exposure and timing discipline) and Appendix
[Validation Audits](../paper.md).

- [H:exposure-discipline](exposure-discipline.md) — Cobidder concentration
  survives participation-volume placebos and opportunity-set audits.
- [H:timing-discipline](timing-discipline.md) — Cobidder concentration
  survives relaxed and strict timing rules.

## Cluster C: Cobidder economic profile

Maps to paper §5 (the economic profile of cartel-adjacent losers).

- [H:cobidder-profile-distinct](cobidder-profile-distinct.md) — Inside the FL
  stratum, cobidders differ from other frequent losers along buyer breadth,
  product concentration, network proximity, and bid-level patterns.

## Cluster D: Sequential architecture

Maps to paper §6 (award → bid layer sequencing).

- [H:award-bid-complementarity](award-bid-complementarity.md) — Award-layer
  and bid-distribution screens enter at different stages; the joint signal
  is the full-observability upper bound.
- [H:gatekeeping-cost-of-evidence](gatekeeping-cost-of-evidence.md) —
  Award-layer gatekeeping cuts the bid-microdata pool ≥80% while recovering
  the majority of adjudicated cobidders.

## Cluster E: Price scope

Maps to paper §7 (price evidence as scope, not damages).

- [H:price-scope-sign-reversal](price-scope-sign-reversal.md) — The price
  coefficient sign reverses across validation targets, supporting a scope
  interpretation rather than a damages reading.

---

## Scorecard

Status runs **Not yet tested** → **Not confirmed** / **Mixed** / **Partial** →
**Confirmed**. Single-source own-project estimates anchored in BEC 2009–2019
and CADE adjudications; promotion to **Confirmed** would require independent
replication on a non-BEC procurement panel.

| # | Prediction | Headline evidence | Evidence | Status |
|---|---|---|---|---|
| [H1](cobidder-concentration.md) | FL score concentrates CADE cobidders. | AUC 0.924 (FL14) / 0.939 (continuous); 131/193 cobidders recovered; survives 8 audits. | [AN-004](../analyses/an-004-cobidder-baseline.md), [AN-005](../analyses/an-005-sham-fl-permutation.md), [AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-011](../analyses/an-011-horse-race-continuous.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-017](../analyses/an-017-gate-d3.md), [AN-025](../analyses/an-025-cutoff-sweep-robustness.md), [AN-026](../analyses/an-026-subsample-robustness.md) | **Partial (strongly supported)** |
| [H2](direct-defendants-null.md) | FL score is null on direct CADE defendants. | AUC 0.491 [0.461, 0.520]; 14.9% of direct defendants are always-losers (D4). | [AN-007](../analyses/an-007-auc-direct-cade.md), [AN-018](../analyses/an-018-gate-d4.md) | **Confirmed** |
| [H3](exposure-discipline.md) | Concentration survives exposure-disciplined placebos. | Sham permutation p < 1/2,000 (observed 32 σ above sham mean); leakage audit retains AUC 0.864; scope matrix row 4 = 0.383 (score repels winner-heavy defendants); within-FL Cohen's d 0.19–1.00. | [AN-005](../analyses/an-005-sham-fl-permutation.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md), [AN-028](../analyses/an-028-exposure-stratum-balance.md) | **Partial (strongly supported)** |
| [H4](timing-discipline.md) | Concentration survives strict timing discipline. | Three-classifier battery preserves AUC 0.79–0.90 across clf_2015/clf_2017 × cobid_all/cobid_post2019; firm persistence between windows = 8.7% (genuinely fresh population); strict ex ante firm AUC 0.767; precision retention 53%. | [AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-013](../analyses/an-013-precision-at-k-audit.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-029](../analyses/an-029-three-classifier-timing-battery.md), [AN-030](../analyses/an-030-market-persistence.md) | **Partial (strongly supported)** |
| [H5](cobidder-profile-distinct.md) | FL cobidders are economically distinct from other FLs. | Profile distinctness survives volume matching (SMD 0.49→0.00): HHI d +0.47, repeat-spread −0.56, median gap −0.25 hold or strengthen — not a volume artifact. Casualties: bid-dispersion sub-signal collapses (n.s.); matched quadrant price-heterogeneity attenuates 26–35%; first-time-FL channel demoted (p = 0.31 matched). | [AN-008](../analyses/an-008-pbu-characterization.md), [AN-009](../analyses/an-009-network-hhi.md), [AN-024](../analyses/an-024-unified-mechanism.md), [AN-028](../analyses/an-028-exposure-stratum-balance.md), [AN-031](../analyses/an-031-bid-level-behavioral-profile.md), [AN-032](../analyses/an-032-matched-heterogeneity-audit.md), [AN-021](../analyses/an-021-first-time-fl-matching.md), [AN-041](../analyses/an-041-volume-matched-cobidder-audit.md) | **Mixed** |
| [H6](award-bid-complementarity.md) | Award and bid layers are complementary. | Imhof+FL Δ vs Imhof = +0.096 (DeLong p = 1.2e-26); FL alone vs Imhof Δ = +0.035 (p = 0.014); sequential K=2,000 captures 74% joint recall at 17% bid-microdata footprint. | [AN-010](../analyses/an-010-imhof-full-pipeline.md), [AN-011](../analyses/an-011-horse-race-continuous.md), [AN-015](../analyses/an-015-gate-d1.md), [AN-033](../analyses/an-033-imhof-incremental-delong.md), [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md) | **Partial (strongly supported)** |
| [H7](gatekeeping-cost-of-evidence.md) | Gatekeeping cuts the bid pool ≥80% with majority cobidder recovery. | 83% pool cut + 131/193 cobidders (in-sample); sequential K=2,000 captures 103% of joint TP at 24% microdata cost (temporal holdout); CV precision SD ≤ 0.011. | [AN-012](../analyses/an-012-operational-metrics.md), [AN-013](../analyses/an-013-precision-at-k-audit.md), [AN-014](../analyses/an-014-leakage-audit-d3.md), [AN-034](../analyses/an-034-sequential-gatekeeping-envelope.md), [AN-035](../analyses/an-035-architecture-cost-of-evidence-matrix.md), [AN-036](../analyses/an-036-cv-precision-stability.md) | **Partial (strongly supported)** |
| [H8](price-scope-sign-reversal.md) | Price coefficient sign reverses across targets — scope, not damages. | Broad +0.064 → overlap ATT −0.097 (p = 1.7e-10); negative in 14 of 15 subgroup cells; item-group decomp predictably structured; modal asymmetry 2.45×. Decomposition (descriptive, not mechanism identification): selection into high-price cells (Δ 5.58 log-pts) plus a within-cell bidder-count association (+0.507 log-bidders). | [AN-019](../analyses/an-019-rdd-cap-price.md), [AN-020](../analyses/an-020-did-decreto-2018.md), [AN-016](../analyses/an-016-gate-d2.md), [AN-022](../analyses/an-022-falsification-pregao.md), [AN-037](../analyses/an-037-sign-reversal-decomposition.md), [AN-038](../analyses/an-038-negative-cell-segment-audit.md), [AN-039](../analyses/an-039-selection-mechanism-test.md), [AN-040](../analyses/an-040-within-cell-mechanism-test.md) | **Partial (strongly supported)** |

## Generated index

All 8 hypothesis pages, auto-generated from the YAML frontmatter of each `docs/hypotheses/<slug>.md` via `scripts/render_indexes.py`. Maintained in lockstep with the scorecard above.

| H# | Cluster | Paper section | Status | Slug + title |
|---|:-:|:-:|---|---|
| [H1](cobidder-concentration.md) | A | §3 + §4 | **Partial (strongly supported)** | [cobidder-concentration](cobidder-concentration.md) — The frequent-loser ranking concentrates CADE-adjacent cobidders |
| [H2](direct-defendants-null.md) | A | §4.3 | **Confirmed** | [direct-defendants-null](direct-defendants-null.md) — The frequent-loser ranking does not discriminate direct CADE defendants |
| [H3](exposure-discipline.md) | B | §4.2 | **Partial (strongly supported)** | [exposure-discipline](exposure-discipline.md) — Cobidder concentration survives exposure-disciplined placebos |
| [H4](timing-discipline.md) | B | §4.2 | **Partial (strongly supported)** | [timing-discipline](timing-discipline.md) — Cobidder concentration survives timing discipline |
| [H5](cobidder-profile-distinct.md) | C | §5 | **Mixed** | [cobidder-profile-distinct](cobidder-profile-distinct.md) — FL cobidders are economically distinct from other frequent losers |
| [H6](award-bid-complementarity.md) | D | §6.1 + §6.2 | **Partial (strongly supported)** | [award-bid-complementarity](award-bid-complementarity.md) — Award-layer and bid-layer information are complementary |
| [H7](gatekeeping-cost-of-evidence.md) | D | §6.3 + §6.4 | **Partial (strongly supported)** | [gatekeeping-cost-of-evidence](gatekeeping-cost-of-evidence.md) — Award-layer gatekeeping cuts the bid-microdata pool cost-effectively |
| [H8](price-scope-sign-reversal.md) | E | §7.1 + §7.2 | **Partial (strongly supported)** | [price-scope-sign-reversal](price-scope-sign-reversal.md) — Price evidence carries scope information, not damages |

**Status legend.** `Not yet tested` → `Not confirmed` / `Mixed` / `Partial` → `Partial (strongly supported)` → `Confirmed`. Promotion to `Confirmed` requires non-BEC replication; see [`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md).
