---
paper: frequent-losers
---

# Advanced Methods

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    The conceptual move on this page is to be precise about *what is being identified*. The screen does not estimate guilt or damages; it is meant to produce a defensible *ordering of forensic priority* — "investigate whom first," not "who is liable." The methodological core is a decomposition: an apparent loser-side signal is split into mechanical co-participation exposure (firms that bid more co-appear with everyone), single-case concentration (one adjudicated case can dominate the labels), and any genuine increment that survives both. Under the reproducible non-circular label the finding is **deflationary**: almost all raw concentration is exposure, and the residual ordering is marginal at best and not robust across designs. The two things the data cannot settle — quirks of the source and which cartels prosecutors pursued — are exactly what cross-jurisdiction replication is meant to test.

This page collects the methodological machinery that supports the
empirical claims in the manuscript but is too heavy for the
[Robustness](robustness.md) and [Extensions](extensions.md) tabs. It
documents the decomposition method, the cost–recall frontier
construction, and the exit-margin survival model, with cross-references
to the AN pages where each result is computed.

## Identification: ordering forensic priority, not liability

The award-layer triage is operationalized as a **monotone rank** over
zero-win firms via the score *s*ᵢ = log(1 + *T*ᵢ), where *T*ᵢ is a
firm's participation count. The legal-economic object is **forensic
priority** — an ordering of whom to investigate first — not liability
and not damages. The construct measures participation intensity within
the always-loser stratum; that intensity *orders* exposure, it does not
*detect* cartel membership.

The administrative cutoff FL14 = (*T*ᵢ ≥ 14) corresponds to
median + 1.5 × IQR of always-loser participation counts. **The cutoff is
administrative, not structural**: it is an auditable simplification of
the continuous ordering, never an ontologically special threshold.

Two scope conditions discipline the interpretation:

1. **The binary flag does not detect winner-heavy defendants.** The
   FL14-binary AUC against direct CADE defendants is ≈ **0.49** in the full
   panel ([AN-007](analyses/an-007-auc-direct-cade.md)) — chance-level. The
   *continuous* participation score, by contrast, ranks those same
   defendants moderately above chance (≈ 0.66–0.70). The binary flag is a
   **scope boundary by design**: it is built to speak to cobidders and is
   blind to winner-heavy anchors; participation volume is not.
2. **A scope-discipline matrix** confirms the binary flag targets exactly
   what the loser-side framing predicts
   ([AN-027](analyses/an-027-universe-anchored-stratum-scope.md)): it does
   not masquerade as a general defendant detector. The earlier "below
   random" reading of participation against defendants is retired — the
   asymmetry is a property of the binary flag, not of participation volume.

## The opportunity decomposition

The methodological core of the paper is a three-way decomposition of the
apparent loser-side signal.

**Step 1 — mechanical co-participation exposure.** Firms that bid more
often have more chances to co-appear with *any* given firm, including a
CADE defendant. To isolate this, each firm's **expected-contact**
quantity *E*ᵢ is constructed from participation volume and the
defendants' exposure footprint, and firms are grouped into opportunity
strata. Ranking by **observed** contact reaches AUC **0.905** — but this
is **mechanical label encoding** (a cobidder *is*, by construction, a
firm with positive contact), reported only to expose inflation, not a
competing model. Stepping toward genuinely label-blind opportunity
collapses the number to **0.553** (see the armor pack below). The raw
award-layer score (ROC **0.761**, PR **0.143**) is itself mostly
exposure.

**Step 2 — within-stratum discrimination.** Evaluating the ordering
*within* opportunity strata removes the mechanical advantage of high
participation. The within-stratum AUC collapses to **0.471 — essentially
chance**. The only positive is a nested increment of **+0.010** over the
exposure baseline (DeLong *p* = 0.013
[AN-033](analyses/an-033-imhof-incremental-delong.md)), and it is **not
robust across designs**: the matched-stratum label permutation is not
significant (*p* = 0.127), the within-matched-strata FL-enrichment is not
significant (*p* = 0.067), and the matched change in cobidder probability
for FL14 is **negative** (−0.017). Most raw discrimination is mechanical
co-participation exposure, and **no robust residual ordering survives**.

**Step 3 — single-case concentration.** The positive labels are not
evenly spread across CADE cases. A **leave-largest-case-out** audit
removes the single most influential adjudicated case and re-evaluates:
precision–recall AUC falls from **0.143 to 0.090 (−37%)**, because one
case accounts for ≈ **32%** of the positive labels and 45.4% of true
positives at *k* = 500. The estimated ranking is therefore
**case-sensitive** — not a portable cartel score; the durable object is
the audit protocol and its portable principle, not the ranking.

| Decomposition step | Quantity | Value |
|---|---|---|
| Raw award-layer score | ROC / PR-AUC | 0.761 / 0.143 |
| Observed-contact ranking (mechanical label encoding) | AUC | 0.905 |
| Genuine label-blind opportunity | AUC | 0.553 |
| Within-stratum (opportunity removed) | AUC | 0.471 (≈ chance) |
| Nested increment over baseline | ΔAUC (DeLong *p*) | +0.010 (*p* = 0.013); not robust |
| Matched permutation / FL-enrichment | *p* | 0.127 / 0.067 (both ns) |
| Leave-largest-case-out | PR-AUC | 0.143 → 0.090 (−37%) |
| Largest single case share of positives | — | ≈ 32% |

## Cobidder labels and adjudication anchors

The validation target is **adjudication-anchored exposure**: always-
loser firms that share at least one BEC tender-item with a BEC-active
direct CADE defendant. Direct defendants are the **legal anchors**;
cobidders are **651 firms** ([AN-003](analyses/an-003-cade-bec-linkage.md)),
of which 341 are frequent-loser and 310 are not — so the label is **not**
constructed from the frequent-loser flag. Cobidders are *not* cartel
members — they are firms with documented exposure to adjudicated
environments. The cobidder set excludes direct defendants by construction.
This reproducible, non-circular 651-firm label replaces an earlier
circular target; a contact-intensity sensitivity (≥ 2 shared tender-items)
gives 368 positives.

The adjudication-anchored label inherits CADE's selection of which
procurement cartels to adjudicate. Cross-jurisdiction replication on a
non-BEC panel (see
[`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md))
is the natural test of whether the decomposition generalizes beyond
CADE's adjudication choices.

## Permutation, leakage, and timing audits

The audit chain disciplines the ordering against four artifact families:

| Audit | Source AN | Outcome |
|---|---|---|
| Matched-exposure permutation | [AN-005](analyses/an-005-sham-fl-permutation.md) | Matched-stratum label permutation *p* = 0.127 (ns); pure-exposure null PR 0.264 > observed 0.143 — **no residual** net of exposure |
| Leakage / contamination decomposition | [AN-014](analyses/an-014-leakage-audit-d3.md) | Excluding label-defining tenders, award ROC 0.829 / PR 0.156 on 569 retained positives — not pure tautology, but still exposure-inflated |
| Timing discipline (strict ex ante) | [AN-006](analyses/an-006-strict-prospective-holdout.md), [AN-029](analyses/an-029-three-classifier-timing-battery.md) | Retrospective among incumbents; training-pool ROC ≈ 0.68; full-universe out-of-time ROC ≈ **0.474 (below chance)**, precision@500 = 0; sequential strict-timing **infeasible** |
| Negative controls | [AN-005](analyses/an-005-sham-fl-permutation.md) | Real ROC 0.761 ≈ placebo 0.755 (*p* = 0.46); high-volume-winner null 0.78 (*p* = 0.91) — **no separation**; controls corroborate the opportunity account |
| Exposure-stratum balance | [AN-028](analyses/an-028-exposure-stratum-balance.md) | Within matched strata the FL14 flag's change in cobidder probability is **negative** (−0.017) |
| Cutoff sweep robustness | [AN-025](analyses/an-025-cutoff-sweep-robustness.md) | Broad plateau across multipliers; the cutoff is administrative, not a knife-edge |
| Dilution sensitivity (contact ≥ 2) | [AN-026](analyses/an-026-subsample-robustness.md) | Raw ROC 0.854 but within-stratum 0.506 (≈ chance), increment +0.003 (*p* = 0.47) — dilution objection dead |
| CV precision stability | [AN-036](analyses/an-036-cv-precision-stability.md) | K-fold metrics stable across folds |
| Market persistence (structural OOS) | [AN-030](analyses/an-030-market-persistence.md) | Low firm persistence between train/test — fresh population |

!!! warning "Timing is a limit, not a pass"
    The timing audit is reported as a **boundary**, not a clean
    prospective result. Among incumbents the training-pool ordering is
    weakly informative (≈ 0.68), but on the full firm universe a strictly
    out-of-time ROC is **below chance** (≈ 0.474, precision@500 = 0 in every
    rolling-origin year), and a fully sequential strict-timing evaluation
    is infeasible with the available adjudication dates. The screen
    supports **incumbent-firm triage with retrospective validation, not
    platform-wide prospective deployment** (see
    [Extensions](extensions.md)).

The chain enumerates the within-data artifact families systematically.
Each audit rules out a candidate explanation for the observed
concentration — and where it cannot (timing, single-case concentration),
that is stated as a limit.

## Audit-of-the-audit armor pack

The deflationary verdict is decided by an **anchor-agnostic battery**,
not by any claim that "exposure beats the score." All four results are
regenerated under `outputs/diagnostics/audit_armor/` (scripts
`12_audit_armor.R` + `12b_audit_armor_fixup.R`).

| Armor result | Value | Use |
|---|---|---|
| Exposure tiers: $O_i$ / $E_{\text{plug}}$ / $E_{\text{firm-LOO}}$ / **label-blind** | 0.905 / 0.985 / 0.855 / **0.553** | exposure benchmark is an *upper bound* on opportunity's role; 0.905/0.985 are mechanical label encoding |
| Positive control $O_i$ within MEDIUM strata | **0.953** | falsifiability — the design *detects* residual signal when one is planted |
| Within-stratum sweep (E-LOO): COARSE / MEDIUM / STRICT | 0.508 / 0.493 / 0.600 | stable across granularities ($N$ 15,246 / 2,213 / 615) |
| Permutation power (α = .05) at within-AUC 0.52 / 0.55 / 0.60 | 0.28 / **0.97** / 1.00 (size 0.05) | non-rejection bounds the residual below ≈ 0.55 |
| Label-frozen timing: pool / prospective / retrospective | 13,051 / **0.713** (231 pos) / 0.718 (582 pos) | clean timing benchmark — volume forecasts *generic* contact, not cartels |

!!! note "What the armor pack settles"
    The retired claim ("an exposure-only model reaches 0.905 and
    out-predicts the raw score / exposure is the better model") was itself
    partly mechanical: a cobidder *is* a firm with positive observed
    contact. Computed label-blind, opportunity ranks the label at only
    **0.553**. The within-stratum test is **not** dead by construction — a
    planted positive control ($O_i$) recovers AUC **0.953** — and the
    permutation test has **power 0.97 at a within-AUC of 0.55**, so the
    observed non-detections genuinely bound any residual below ≈ 0.55. The
    label-frozen timing benchmark (prospective 0.713 ≈ retrospective 0.718)
    is **generic co-participation forecasting, not cartel-specific
    prediction**, consistent with the negative controls (placebo
    *p* = 0.46; non-CADE high-volume-winner anchors 0.78 > real, *p* = 0.91).
    Defendant roles regenerated alongside: 14.9% always-losers, median win
    rate 0.261; cobidders have win rate ≡ 0 by construction.

## Cost–recall frontier construction

The operational architecture sequences a cheap award-layer triage before
a costly bid-layer forensic stage and is evaluated as a **frontier**, not
a single optimal cutoff.

- **[AN-010](analyses/an-010-imhof-full-pipeline.md)**: a transparent
  bid-moment random-forest benchmark inspired by Imhof–Wallimann-style
  screens, on a single pool (16,731 firms, all 651 positives). Bid RF
  ROC **0.717** / PR 0.116; award continuous ROC **0.760** / PR 0.143;
  combined PR **0.188** under random CV. The read is **conditional
  complementarity and a division of labor**, not dominance: under
  case-grouped folds the combined model falls **below** award-only on PR
  (0.103 vs 0.143). Award ≈ bid on the pooled diagnostic.
- **[AN-033](analyses/an-033-imhof-incremental-delong.md)**: formal
  DeLong incremental tests and the opportunity decomposition. The
  loser-side nested increment over the opportunity baseline is **+0.010**
  (*p* = 0.013) and is **not robust across designs** (matched permutation
  *p* = 0.127). The within-stratum AUC is ≈ chance; continuous
  participation, not the FL14 flag, carries what little ordering there is.
- **[AN-034](analyses/an-034-sequential-gatekeeping-envelope.md)** and
  **[AN-035](analyses/an-035-architecture-cost-of-evidence-matrix.md)**:
  the **K1 grid** that traces the frontier. The Stage-1 size K1 = 2,000
  is one point on the curve. Its reduction depends entirely on the cost
  **denominator**: counted in *firms*, the bid-layer footprint shrinks by
  ~88% (88.1%); counted in *bid-rows* — the denominator that actually
  drives forensic cost — the reduction is only ~33% (32.7%). And
  K1 = 1,000 recovers *more* true positives than K1 = 2,000 (124 vs 116 at
  *k* = 500), so no single operating point is optimal: the relative cost
  of the two layers and the recall target are policy parameters. These are
  **recovery-footprint** measures, not measured agency budget savings.

!!! warning "Frontier, not a 'universal' cutoff"
    There is no single headline reduction. The result is a cost–recall
    *frontier*; the firm-count footprint shrinks ~88% but the bid-row
    footprint only ~33%; K1 = 1,000 beats K1 = 2,000; no operating point is
    optimal across enforcers. The earlier single-number "reduction"
    summary is retired.

## Exit-margin / survival model

Appendix B models how long firms persist on the loser side. Cobidders
persist **longer** than non-cobidder always-losers (estimated hazards
~0.155 vs ~0.368), consistent with a longer-lived loser-side role for
exposed firms. Under the maintained assumption that the cobidder hazard
λ_C exceeds the generic always-loser hazard λ_G, the survival model
treats persistence as an exit margin rather than a treatment effect. The
ranking λ_C > λ_G is a **maintained assumption**, disclosed as such — the
survival evidence is descriptive of exit dynamics, not an identified
causal claim.

## Why not further within-data audits?

The within-data audit chain is essentially exhaustive. Two artifact
families remain untestable from BEC alone:

1. **Data-generating-process artifacts**: BEC missingness, CNPJ-root
   collision, CADE adjudication completeness — not rulable-out by
   within-data permutation.
2. **Selection on CADE adjudication**: CADE's choice of which cartels to
   adjudicate may carry stable biases that the BEC-anchor evaluation
   inherits.

Both can only be addressed by non-BEC replication. See
[`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md)
for the cross-jurisdiction validation plan and [Extensions](extensions.md)
for the open prospective-deployment problem.
