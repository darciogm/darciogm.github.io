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
**Confirmed**. All hypotheses below are currently in `status: pending`; AN
pages need to graduate from pending to done before the row can move past
**Not yet tested**.

| # | Prediction | Intuition | Evidence | Status |
|---|---|---|---|---|
| [H1](cobidder-concentration.md) | FL score concentrates CADE cobidders. | Persistent zero-win participation ranks loser-side adjacency. | [AN-001](../analyses/an-001-zero-win-rank.md), [AN-004](../analyses/an-004-cobidder-baseline.md) | **Not yet tested** |
| [H2](direct-defendants-null.md) | FL score is null on direct CADE defendants. | A loser-side rank cannot detect designated winners. | [AN-007](../analyses/an-007-auc-direct-cade.md), [AN-018](../analyses/an-018-gate-d4.md) | **Not yet tested** |
| [H3](exposure-discipline.md) | Concentration survives exposure-disciplined placebos. | Signal is not driven by participation volume or opportunity overlap. | [AN-005](../analyses/an-005-sham-fl-permutation.md), [AN-006](../analyses/an-006-strict-prospective-holdout.md) | **Not yet tested** |
| [H4](timing-discipline.md) | Concentration survives strict timing discipline. | Score formed strictly before the target window retains discrimination. | [AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-013](../analyses/an-013-precision-at-k-audit.md) | **Not yet tested** |
| [H5](cobidder-profile-distinct.md) | FL cobidders are economically distinct from other FLs. | Cover-bidder operations leave a specific footprint. | [AN-008](../analyses/an-008-pbu-characterization.md), [AN-009](../analyses/an-009-network-hhi.md), [AN-024](../analyses/an-024-unified-mechanism.md) | **Not yet tested** |
| [H6](award-bid-complementarity.md) | Award and bid layers are complementary. | The two stages encode different information. | [AN-010](../analyses/an-010-imhof-full-pipeline.md), [AN-011](../analyses/an-011-horse-race-continuous.md), [AN-015](../analyses/an-015-gate-d1.md) | **Not yet tested** |
| [H7](gatekeeping-cost-of-evidence.md) | Gatekeeping cuts the bid pool ≥80% with majority cobidder recovery. | Two-stage architecture dominates one-stage under cost differential. | [AN-012](../analyses/an-012-operational-metrics.md), [AN-013](../analyses/an-013-precision-at-k-audit.md), [AN-014](../analyses/an-014-leakage-audit-d3.md) | **Not yet tested** |
| [H8](price-scope-sign-reversal.md) | Price coefficient sign reverses across targets — scope, not damages. | Prices inform where the loser-side rank applies, not the overcharge. | [AN-019](../analyses/an-019-rdd-cap-price.md), [AN-020](../analyses/an-020-did-decreto-2018.md), [AN-016](../analyses/an-016-gate-d2.md) | **Not yet tested** |
