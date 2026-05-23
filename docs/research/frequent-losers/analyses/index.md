---
paper: frequent-losers
---

# Analyses — Cheap Signals, Costly Proof

This page is the **directory of analyses** for *Cheap Signals, Costly
Proof: Award-Layer Triage for Cartel Enforcement*. Each AN-NNN page is
anchored by a YAML frontmatter block that drives the generated index
below.

This page is the directory of *designs and results*. For curated claims
about the world — sentences that could go in the paper — see
[Findings](../findings/index.md). For the testable predictions and their
cross-references to AN pages, see [Hypotheses](../hypotheses/index.md).

---

## How to read an AN page

Each `an-NNN-<slug>.md` follows the same skeleton:

- **Frontmatter:** identifier, status, hypothesis bearing on, script and
  output path, design block (sample, specification, FEs, etc.).
- **`## Question`** — the precise research question.
- **`## Design`** — sample, variation, specification, identification
  threats.
- **`## Results`** — headline number + headline table or figure, with a
  link to the underlying output.
- **`## Interpretation`** — what the result means; confidence color with
  justification.
- **`## Follow-ups`** — forward-looking only; analyses not yet run.

**Status.** `pending` (scaffolded, not yet run or not yet interpreted) →
`done` (script run, headline + interpretation written, confidence set) →
`stale` (superseded by a newer AN or by upstream-data change).

**Confidence.** 🟢 green (clean identification, large sample, robust),
🟡 yellow (informative with caveats), 🔴 red (unreliable, kept for the
record only). Set only when `status: done`.

---

## Generated index

All 41 AN pages, auto-generated from the YAML frontmatter of each `docs/analyses/an-NNN-*.md` via `scripts/gen_analysis_index.py` + `scripts/render_indexes.py`. The machine-readable form lives at [`docs/reference/analysis-index.yaml`](../reference/analysis-index.yaml).

| AN | Type | Status | Conf. | Hypothesis | Question |
|---|---|---|:-:|---|---|
| [AN-001](an-001-zero-win-rank.md) | descriptive | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | How is the persistent-zero-win-participation rank constructed, and what is its distribution across always-los… |
| [AN-002](an-002-iqr-threshold.md) | robustness | done | 🟡 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | How does the cobidder AUC change as the IQR threshold is varied, and is the median + 1.5 × IQR cutoff disting… |
| [AN-003](an-003-cade-bec-linkage.md) | descriptive | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | How are CADE direct defendants and adjudication-anchored cobidders linked to BEC firms via CNPJ root, and wha… |
| [AN-004](an-004-cobidder-baseline.md) | descriptive | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | Does the FL14 stratum contain a disproportionate share of CADE-adjudication-anchored cobidders relative to th… |
| [AN-005](an-005-sham-fl-permutation.md) | placebo | done | 🟢 | [exposure-discipline](../hypotheses/exposure-discipline.md) | Does cobidder concentration in the FL14 stratum survive a participation-volume-matched placebo, and how far i… |
| [AN-006](an-006-strict-prospective-holdout.md) | robustness | done | 🟡 | [timing-discipline](../hypotheses/timing-discipline.md) | Does cobidder concentration survive when the FL score is formed strictly before the target window? |
| [AN-007](an-007-auc-direct-cade.md) | placebo | done | 🟢 | [direct-defendants-null](../hypotheses/direct-defendants-null.md) | Does the FL score discriminate direct CADE defendants? It should not — by design. |
| [AN-008](an-008-pbu-characterization.md) | descriptive | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Within the FL14 stratum, how do cobidders differ from non-cobidder FLs along buyer breadth and operational fo… |
| [AN-009](an-009-network-hhi.md) | descriptive | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Do cobidders inside the FL14 stratum operate in more concentrated product portfolios than non-cobidder FLs, a… |
| [AN-010](an-010-imhof-full-pipeline.md) | causal | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | How does the seven-feature Imhof–Wallimann bid-distribution pipeline perform on the cobidder target, and what… |
| [AN-011](an-011-horse-race-continuous.md) | causal | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | Does the continuous log(1+tenders_count) dominate the binary FL14 on the cobidder target? |
| [AN-012](an-012-operational-metrics.md) | descriptive | done | 🟡 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | What are the in-sample precision@k and lift metrics for the FL ranking used as a forensic gatekeeper? |
| [AN-013](an-013-precision-at-k-audit.md) | robustness | done | 🟢 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | What are the temporal-holdout precision@k and lift metrics, and how much does the in-sample evaluation inflat… |
| [AN-014](an-014-leakage-audit-d3.md) | robustness | done | 🟢 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | How much does item-level evaluation leak relative to out-of-fold and temporal-holdout retraining? |
| [AN-015](an-015-gate-d1.md) | causal | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | D1 gate diagnostic — does the continuous score dominate FL14 on a harmonized same-sample horse race, and do t… |
| [AN-016](an-016-gate-d2.md) | descriptive | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | D2 gate diagnostic — does the FL screen discriminate cobidders better in Convite or in Pregão environments? |
| [AN-017](an-017-gate-d3.md) | robustness | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | D3 gate diagnostic — does the continuous score preserve the loser-side thesis without FL14, and what is the i… |
| [AN-018](an-018-gate-d4.md) | descriptive | done | 🟢 | [direct-defendants-null](../hypotheses/direct-defendants-null.md) | D4 gate diagnostic — what share of direct CADE defendants are always-losers, and what is their win-rate distr… |
| [AN-019](an-019-rdd-cap-price.md) | causal | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Does the negotiated-price coefficient at the procurement-cap threshold reverse sign when FL14 presence is int… |
| [AN-020](an-020-did-decreto-2018.md) | causal | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Does the 2018 procurement decree shift price dynamics differently across modalities, consistent with the scop… |
| [AN-021](an-021-first-time-fl-matching.md) | robustness | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Does the "first-time FL" effect on cobidder concentration survive propensity-score matching? |
| [AN-022](an-022-falsification-pregao.md) | placebo | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Do FL-margin price effects differ by procurement modality, and does the Pregão-only subsample replicate the f… |
| [AN-023](an-023-theory-operationalization-audit.md) | robustness | done | 🟡 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | Does the operational mapping from theory (loser-side concentration) to implementation (FL14) survive an expli… |
| [AN-024](an-024-unified-mechanism.md) | descriptive | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | How does the unified mechanism profile (HHI × pairs × heterogeneity quadrants) characterize FL cobidders rela… |
| [AN-025](an-025-cutoff-sweep-robustness.md) | robustness | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | How does cobidder AUC vary as the FL cutoff sweeps from FL2 through FL100, and is FL14 picking up an arbitrar… |
| [AN-026](an-026-subsample-robustness.md) | robustness | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | Does the cobidder concentration result survive across always-loser sub-populations defined by bid-microdata a… |
| [AN-027](an-027-universe-anchored-stratum-scope.md) | descriptive | done | 🟢 | [exposure-discipline](../hypotheses/exposure-discipline.md) | How does AUC behave when the universe and the positive class are systematically varied — does the loser-side… |
| [AN-028](an-028-exposure-stratum-balance.md) | descriptive | done | 🟢 | [exposure-discipline](../hypotheses/exposure-discipline.md) | Within the always-loser stratum, are cobidders distinguishable from non-cobidder FLs along dimensions other t… |
| [AN-029](an-029-three-classifier-timing-battery.md) | robustness | done | 🟢 | [timing-discipline](../hypotheses/timing-discipline.md) | Does the FL screen preserve discrimination under three progressively-earlier train windows, evaluated against… |
| [AN-030](an-030-market-persistence.md) | descriptive | done | 🟢 | [timing-discipline](../hypotheses/timing-discipline.md) | How much do the firms, markets, and procuring buyers in 2017–2019 overlap with those in 2009–2016? Is the out… |
| [AN-031](an-031-bid-level-behavioral-profile.md) | descriptive | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Do cobidders display bid-level behavior distinct from non-cobidder FLs, independent of participation volume? |
| [AN-032](an-032-matched-heterogeneity-audit.md) | robustness | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Does the quadrant-level heterogeneity (HHI × pairs) of the cobidder profile survive propensity-score matching… |
| [AN-033](an-033-imhof-incremental-delong.md) | causal | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | How significant is the incremental value of the award-layer score added to the Imhof bid-distribution pipelin… |
| [AN-034](an-034-sequential-gatekeeping-envelope.md) | descriptive | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | When deployed sequentially (FL gatekeeper → Imhof forensic stage) vs jointly, how does the cost-of-evidence t… |
| [AN-035](an-035-architecture-cost-of-evidence-matrix.md) | descriptive | done | 🟢 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | Across the full architecture × k × regime grid, what are the recall, precision, and bid-microdata cost trade-… |
| [AN-036](an-036-cv-precision-stability.md) | robustness | done | 🟡 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | Are the precision@k metrics stable across cross-validation folds, or do they depend on a specific random spli… |
| [AN-037](an-037-sign-reversal-decomposition.md) | causal | done | 🟢 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | How does the FL-margin price coefficient transform across baseline → overlap-cell → ATT specifications, and d… |
| [AN-038](an-038-negative-cell-segment-audit.md) | descriptive | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | At the item-group and operating-cell level, where does the negative FL-price coefficient hold and where does… |
| [AN-039](an-039-selection-mechanism-test.md) | causal | done | 🟢 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Do cartels with cover bidders endogenously select into cells where the underlying (non-treated) price level i… |
| [AN-040](an-040-within-cell-mechanism-test.md) | causal | done | 🟢 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Within overlap cells, does FL presence depress the observed winner bid relative to the reference price? Does… |
| [AN-041](an-041-volume-matched-cobidder-audit.md) | descriptive | done | 🟢 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Does the within-FL distinctness of cobidders (AN-028 participation dimensions, AN-031 bid-level gap-to-winner… |

**Status legend.** `done` = analysis run and interpretation written; `pending` = scaffolded only; `stale` = superseded.

**Confidence legend.** 🟢 green (clean identification, robust); 🟡 yellow (informative with caveats); 🔴 red (kept for the record, not load-bearing).
