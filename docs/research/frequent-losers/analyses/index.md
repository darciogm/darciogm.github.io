---
paper: frequent-losers
---

# Analyses — Cheap Signals, Costly Proof

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

!!! warning "AN pages predating 2026-06-04 are superseded by the canonical re-estimation"
    On 2026-06-04 the paper's validation target was replaced by a
    reproducible, **non-circular** label — **651** always-loser cobidders
    (341 frequent-loser, 310 non-frequent-loser; the frequent-loser flag is
    never used to build the label) — and **every** result was re-estimated.
    The old 193-cobidder target (and the AUC/PR/timing/case-dominance/
    bid-benchmark numbers derived from it) is retired as circular and
    irreproducible. Individual AN pages authored before this date carry a
    banner to that effect and may still display pre-revision numbers; the
    **canonical** figures live on the [Paper](../paper.md),
    [Results](../results.md), and [Robustness](../robustness.md) pages and
    in `NEW_NUMBERS_MAP.md`. Where an AN page and the canonical pages
    diverge, the canonical pages win. AN entries below are **not**
    renumbered or deleted.

This page is the **directory of analyses** for *Cheap Signals, Costly
Proof: The Reach and Limits of Award-Layer Screening in Cartel
Enforcement*. Each AN-NNN page is anchored by a YAML frontmatter block
that drives the generated index below.

This page is the directory of *designs and results*. For curated claims
about the world — sentences that could go in the paper — see
[Findings](../findings/index.md). For the testable predictions and their
cross-references to AN pages, see [Hypotheses](../hypotheses/index.md).

---

## What the analyses establish

The paper's contribution is a **decomposition method** plus a
**reach-and-limits map**, not a cartel detector. Cheap award-layer
records (who participated, who lost) can *order forensic priority* — they
cannot prove conduct. The analyses below decompose what looks like a
strong screen into three pieces and trace where each one reaches and
where it stops:

1. **Mechanical co-participation exposure.** Most of the raw
   discriminating power is *exposure*: firms that bid in more tenders
   mechanically overlap more adjudicated cartel environments. Against the
   canonical 651-cobidder label the raw award score reaches only ROC
   **0.761** / PR-AUC **0.143**, and genuine label-blind opportunity
   ranks the label at only **0.553** (ranking by *observed* contact
   reaches 0.905, but that is mechanical label encoding — a cobidder *is*
   a firm with positive contact — not a competing model).
   Stripping exposure out — comparing firms *within* the same opportunity
   stratum — leaves a within-stratum AUC of **0.471 (≈ chance)**; the only
   positive is a fragile nested increment of **+0.010** (DeLong
   p = 0.013) that is **not robust across designs** (matched permutation
   p = 0.127; FL-enrichment p = 0.067). There is **no robust residual
   signal** net of opportunity.
2. **Single-case concentration.** Much of the operational performance
   leans on one adjudicated case. Leave-largest-out cuts the single-case
   PR-AUC from 0.143 to 0.090 (−37%); one case accounts for ≈ **32%** of
   positives and 45.4% of true positives at k = 500. The estimated ranking
   is case-sensitive, not portable.
3. **Timing.** Strict ex-ante construction reaches only ~0.68 inside the
   training always-loser pool; at full-universe scale it falls **below
   chance** (ROC ≈ 0.474, precision@500 = 0). The screen is largely
   **retrospective among incumbents**, not a prospective alarm.

What the screen does *not* do is equally load-bearing: the FL-binary AUC
≈ 0.49 against **direct CADE defendants** (the cartel's winners) is a
scope boundary by design (the continuous score ranks them at 0.66–0.70),
not a failure.

### Reading the catalogue by threat

| Threat the analysis confronts | AN pages |
|---|---|
| **Construct** — how the rank is built; is the FL14 cutoff arbitrary? | [AN-001](an-001-zero-win-rank.md), [AN-002](an-002-iqr-threshold.md), [AN-003](an-003-cade-bec-linkage.md), [AN-023](an-023-theory-operationalization-audit.md), [AN-025](an-025-cutoff-sweep-robustness.md) |
| **Opportunity** — is it just exposure / participation volume? | [AN-004](an-004-cobidder-baseline.md), [AN-005](an-005-sham-fl-permutation.md), [AN-027](an-027-universe-anchored-stratum-scope.md), [AN-028](an-028-exposure-stratum-balance.md), [AN-041](an-041-volume-matched-cobidder-audit.md), [AN-043](an-043-federal-opportunity-adjusted-validation.md) |
| **Cross-platform** — does the audit port to a second procurement system? | [AN-043](an-043-federal-opportunity-adjusted-validation.md) |
| **Timing** — would it flag firms before cases closed? | [AN-006](an-006-strict-prospective-holdout.md), [AN-013](an-013-precision-at-k-audit.md), [AN-015](an-015-gate-d1.md), [AN-029](an-029-three-classifier-timing-battery.md), [AN-030](an-030-market-persistence.md) |
| **Single-case concentration** — does one case carry it? | [AN-013](an-013-precision-at-k-audit.md), [AN-034](an-034-sequential-gatekeeping-envelope.md), [AN-036](an-036-cv-precision-stability.md) |
| **Scope** — what the screen cannot and should not cover | [AN-007](an-007-auc-direct-cade.md), [AN-016](an-016-gate-d2.md), [AN-018](an-018-gate-d4.md), [AN-027](an-027-universe-anchored-stratum-scope.md) |
| **Division of labor** — award layer vs bid layer | [AN-010](an-010-imhof-full-pipeline.md), [AN-011](an-011-horse-race-continuous.md), [AN-033](an-033-imhof-incremental-delong.md), [AN-035](an-035-architecture-cost-of-evidence-matrix.md) |
| **Price = scope, not damages** | [AN-019](an-019-rdd-cap-price.md), [AN-020](an-020-did-decreto-2018.md), [AN-022](an-022-falsification-pregao.md), [AN-037](an-037-sign-reversal-decomposition.md), [AN-038](an-038-negative-cell-segment-audit.md), [AN-039](an-039-selection-mechanism-test.md), [AN-040](an-040-within-cell-mechanism-test.md) |
| **Leakage** — is ~1.0 AUC memorization? | [AN-014](an-014-leakage-audit-d3.md), [AN-017](an-017-gate-d3.md) |

Throughout: the rank **orders forensic priority**; it does not detect or
prove. FL14 is an **administrative** cutoff (median + 1.5 × IQR), not a
structural threshold; the continuous log-participation score is the
underlying primitive. Price differentials are read as **scope**, not
damages or overcharge.

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

All 43 AN pages, auto-generated from the YAML frontmatter of each `docs/analyses/an-NNN-*.md` via `scripts/gen_analysis_index.py` + `scripts/render_indexes.py`. The machine-readable form lives at [`docs/reference/analysis-index.yaml`](../reference/analysis-index.yaml).

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
| [AN-010](an-010-imhof-full-pipeline.md) | descriptive | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | How does the seven-feature Imhof–Wallimann bid-distribution pipeline perform on the cobidder target, and what… |
| [AN-011](an-011-horse-race-continuous.md) | descriptive | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | Does the continuous log(1+tenders_count) dominate the binary FL14 on the cobidder target? |
| [AN-012](an-012-operational-metrics.md) | descriptive | done | 🟡 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | What are the in-sample precision@k and lift metrics for the FL ranking used as a forensic gatekeeper? |
| [AN-013](an-013-precision-at-k-audit.md) | robustness | done | 🟢 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | What are the temporal-holdout precision@k and lift metrics, and how much does the in-sample evaluation inflat… |
| [AN-014](an-014-leakage-audit-d3.md) | robustness | done | 🟢 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | How much does item-level evaluation leak relative to out-of-fold and temporal-holdout retraining? |
| [AN-015](an-015-gate-d1.md) | descriptive | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | D1 gate diagnostic — does the continuous score dominate FL14 on a harmonized same-sample horse race, and do t… |
| [AN-016](an-016-gate-d2.md) | descriptive | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | D2 gate diagnostic — does the FL screen discriminate cobidders better in Convite or in Pregão environments? |
| [AN-017](an-017-gate-d3.md) | robustness | done | 🟢 | [cobidder-concentration](../hypotheses/cobidder-concentration.md) | D3 gate diagnostic — does the continuous score preserve the loser-side thesis without FL14, and what is the i… |
| [AN-018](an-018-gate-d4.md) | descriptive | done | 🟢 | [direct-defendants-null](../hypotheses/direct-defendants-null.md) | D4 gate diagnostic — what share of direct CADE defendants are always-losers, and what is their win-rate distr… |
| [AN-019](an-019-rdd-cap-price.md) | descriptive | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Does the negotiated-price coefficient at the procurement-cap threshold reverse sign when FL14 presence is int… |
| [AN-020](an-020-did-decreto-2018.md) | descriptive | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Does the 2018 procurement decree shift price dynamics differently across modalities, consistent with the scop… |
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
| [AN-033](an-033-imhof-incremental-delong.md) | descriptive | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | How significant is the incremental value of the award-layer score added to the Imhof bid-distribution pipelin… |
| [AN-034](an-034-sequential-gatekeeping-envelope.md) | descriptive | done | 🟢 | [award-bid-complementarity](../hypotheses/award-bid-complementarity.md) | When deployed sequentially (FL gatekeeper → Imhof forensic stage) vs jointly, how does the cost-of-evidence t… |
| [AN-035](an-035-architecture-cost-of-evidence-matrix.md) | descriptive | done | 🟢 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | Across the full architecture × k × regime grid, what are the recall, precision, and bid-microdata cost trade-… |
| [AN-036](an-036-cv-precision-stability.md) | robustness | done | 🟡 | [gatekeeping-cost-of-evidence](../hypotheses/gatekeeping-cost-of-evidence.md) | Are the precision@k metrics stable across cross-validation folds, or do they depend on a specific random spli… |
| [AN-037](an-037-sign-reversal-decomposition.md) | descriptive | done | 🟢 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | How does the FL-margin price coefficient transform across baseline → overlap-cell → ATT specifications, and d… |
| [AN-038](an-038-negative-cell-segment-audit.md) | descriptive | done | 🟡 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | At the item-group and operating-cell level, where does the negative FL-price coefficient hold and where does… |
| [AN-039](an-039-selection-mechanism-test.md) | descriptive | done | 🟢 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Do cartels with cover bidders endogenously select into cells where the underlying (non-treated) price level i… |
| [AN-040](an-040-within-cell-mechanism-test.md) | descriptive | done | 🟢 | [price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md) | Within overlap cells, does FL presence depress the observed winner bid relative to the reference price? Does… |
| [AN-041](an-041-volume-matched-cobidder-audit.md) | descriptive | done | 🟢 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Does the within-FL distinctness of cobidders (AN-028 participation dimensions, AN-031 bid-level gap-to-winner… |
| [AN-042](an-042-volume-matched-timing-audit.md) | descriptive | done | 🟡 | [cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md) | Are cobidders distinct from non-cobidder FLs on bid TIMING (revision intensity, inter-bid interval, last-bid… |
| [AN-043](an-043-federal-opportunity-adjusted-validation.md) | validation | provisional | 🟡 | [exposure-discipline](../hypotheses/exposure-discipline.md) | Does the award-layer evidence-triage protocol replicate on a SECOND, institutionally distinct procurement platform (feder… |

**Status legend.** `done` = analysis run and interpretation written; `pending` = scaffolded only; `stale` = superseded.

**Confidence legend.** 🟢 green (clean identification, robust); 🟡 yellow (informative with caveats); 🔴 red (kept for the record, not load-bearing).
