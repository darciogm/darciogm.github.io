---
paper: frequent-losers
---

# Advanced Methods

!!! abstract "Intuition (plain-language)"
    The conceptual move on this page is to be precise about *what is being identified*. The screen does not estimate guilt or damages; it produces a defensible *ordering of forensic priority* — an answer to "investigate whom first," not "who is liable." The methodological core is a decomposition: an apparent loser-side signal is split into opportunity arithmetic (firms that bid more co-appear with everyone), single-case concentration (one adjudicated case can dominate the labels), and a genuine increment that survives both. The two things the data cannot settle — quirks of the source and which cartels prosecutors pursued — are exactly what cross-jurisdiction replication is meant to test.

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

1. **The rank does not detect winner-heavy defendants.** AUC against
   direct CADE defendants is ≈ **0.49** in the full panel
   ([AN-007](analyses/an-007-auc-direct-cade.md)) — chance-level, and
   regime-invariant across the raw item-level and temporal-holdout
   evaluations. This is a **scope boundary by design**, not a failure:
   the loser-side ordering is built to speak to cobidders, and it
   actively repels winner-heavy anchors.
2. **A scope-discipline matrix** confirms the rank targets exactly what
   the loser-side framing predicts
   ([AN-027](analyses/an-027-universe-anchored-stratum-scope.md)). Raw
   participation count against direct CADE in the full BEC universe
   returns AUC 0.383 — below random — confirming the construct does not
   masquerade as a general defendant detector.

## The opportunity decomposition

The methodological core of the paper is a three-way decomposition of the
apparent loser-side signal.

**Step 1 — opportunity arithmetic.** Firms that bid more often have more
chances to co-appear with *any* given firm, including a CADE defendant.
To isolate this, each firm's **expected-contact** quantity *E*ᵢ is
constructed from participation volume and the defendants' exposure
footprint, and firms are grouped into opportunity strata. The
opportunity-only model — discrimination available from exposure alone —
reaches AUC **0.946**. This is the arithmetic baseline that any honest
signal must beat.

**Step 2 — within-stratum discrimination.** Evaluating the ordering
*within* opportunity strata removes the mechanical advantage of high
participation. The within-stratum AUC is **0.7715**, and the **genuine
increment** of the loser-side ordering over the opportunity baseline is
**+0.042** (DeLong *p* ≈ 2 × 10⁻⁶
[AN-033](analyses/an-033-imhof-incremental-delong.md)). The increment is
small but statistically robust: most raw discrimination is opportunity
arithmetic, and a real, smaller signal survives.

**Step 3 — single-case concentration.** The positive labels are not
evenly spread across CADE cases. A **leave-largest-case-out** audit
removes the single most influential adjudicated case and re-evaluates:
precision–recall AUC falls from **0.126 to 0.036 (−71%)**, because one
case accounts for ≈ **55%** of the positive labels. The headline
discrimination is therefore **concentrated**, not broad-based — a
first-order limit that must be front-paged, not buried.

| Decomposition step | Quantity | Value |
|---|---|---|
| Opportunity-only (exposure arithmetic) | AUC | 0.946 |
| Within-stratum (opportunity removed) | AUC | 0.7715 |
| Genuine increment over baseline | ΔAUC (DeLong *p*) | +0.042 (≈ 2 × 10⁻⁶) |
| Leave-largest-case-out | PR-AUC | 0.126 → 0.036 (−71%) |
| Largest single case share of positives | — | ≈ 55% |

## Cobidder labels and adjudication anchors

The validation target is **adjudication-anchored exposure**: always-
loser firms that bid alongside direct CADE defendants in adjudicated
cartel environments. Direct defendants are the **legal anchors**;
cobidders are **193 firms** ([AN-003](analyses/an-003-cade-bec-linkage.md)).
Cobidders are *not* cartel members — they are firms with documented
exposure to adjudicated environments. The cobidder set excludes direct
defendants by construction; the 193 figure corrects an earlier
98-cobidder count from a CNPJ zero-pad bug (v12 audit; locked from v13
onward).

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
| Volume sham permutation (B = 2,000) | [AN-005](analyses/an-005-sham-fl-permutation.md) | Sham AUC mean 0.500, SD 0.013; observed FL14 AUC 0.924 far above null; *p* < 1/2,000 |
| Leakage decomposition (raw → OOF → temporal) | [AN-014](analyses/an-014-leakage-audit-d3.md) | 0.995 → 0.891 → 0.864; attenuation 0.10–0.13 |
| Timing discipline (strict ex ante) | [AN-006](analyses/an-006-strict-prospective-holdout.md), [AN-029](analyses/an-029-three-classifier-timing-battery.md) | Retrospective among incumbents; full-universe out-of-time ROC ≈ 0.55; sequential strict-timing **infeasible** |
| Exposure-stratum balance | [AN-028](analyses/an-028-exposure-stratum-balance.md) | Within-FL14 cobidder distinctness across multiple dimensions |
| Cutoff sweep robustness | [AN-025](analyses/an-025-cutoff-sweep-robustness.md) | FL10–FL15 plateau ≥ 0.90; the cutoff is administrative, not a knife-edge |
| Subsample robustness | [AN-026](analyses/an-026-subsample-robustness.md) | AUC 0.89–0.96 across full/data-rich/low-bid/high-bid |
| CV precision stability | [AN-036](analyses/an-036-cv-precision-stability.md) | K-fold SD ≤ 0.011 |
| Market persistence (structural OOS) | [AN-030](analyses/an-030-market-persistence.md) | Firm persistence 8.7% between train/test — fresh population |

!!! warning "Timing is a limit, not a pass"
    The timing audit is reported as a **boundary**, not a clean
    prospective result. Among incumbents the ordering is informative, but
    on the full firm universe a strictly out-of-time ROC is near chance
    (≈ 0.55), and a fully sequential strict-timing evaluation is
    infeasible with the available adjudication dates. The screen is
    retrospective; prospective deployment is an open problem (see
    [Extensions](extensions.md)).

The chain enumerates the within-data artifact families systematically.
Each audit rules out a candidate explanation for the observed
concentration — and where it cannot (timing, single-case concentration),
that is stated as a limit.

## Cost–recall frontier construction

The operational architecture sequences a cheap award-layer triage before
a costly bid-layer forensic stage and is evaluated as a **frontier**, not
a single optimal cutoff.

- **[AN-010](analyses/an-010-imhof-full-pipeline.md)**: bid-distribution
  benchmark on the matched CV pool (manuscript Table *Discrimination at
  Different Information Costs*). Imhof full **0.888**; FL flag **0.921**;
  combined **0.962**. The combined number is leakage-sensitive; the read
  is **complementarity and a division of labor**, not dominance. Imhof
  CV-only is chance-level, so the bid-distribution pipeline needs
  participation features to reach its headline.
- **[AN-033](analyses/an-033-imhof-incremental-delong.md)**: formal
  DeLong incremental tests and the opportunity decomposition. The
  loser-side genuine increment over the opportunity baseline is **+0.042**
  (*p* ≈ 2 × 10⁻⁶). The FL14 binary marginal beyond continuous tenders is
  small — continuous participation is the load-bearing complement; FL14
  is the auditable simplification.
- **[AN-034](analyses/an-034-sequential-gatekeeping-envelope.md)** and
  **[AN-035](analyses/an-035-architecture-cost-of-evidence-matrix.md)**:
  the **K1 grid** that traces the frontier. The Stage-1 size K1 = 2,000
  is one point on the curve. Its reduction depends entirely on the cost
  **denominator**: counted in *firms*, the bid-layer footprint shrinks by
  ~88%; counted in *bid-rows* — the denominator that actually drives
  forensic cost — the reduction is ~33%. No single operating point is
  optimal across enforcers, because the relative cost of the two layers
  and the recall target are policy parameters.

!!! warning "Frontier, not a 'universal' cutoff"
    There is no single headline reduction. The result is a cost–recall
    *frontier*; the reduction is ~88% on a firm denominator but ~33% on a
    bid-row denominator; the optimal operating point is agency-specific.
    The earlier single-number summary is retired.

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
