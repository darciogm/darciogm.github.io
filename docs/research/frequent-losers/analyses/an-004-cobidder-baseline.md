---
paper: frequent-losers
id: an-004
hypothesis: cobidder-concentration
type: descriptive
question: Does the FL14 stratum contain a disproportionate share of CADE-adjudication-anchored cobidders relative to the always-loser baseline?
status: done
status_date: 2026-05-22
confidence: green
headline: "Pooled (exposure-inflated) baseline: FL14 binary AUC 0.924 [0.921, 0.926], continuous log(1+tenders_count) AUC 0.939 [0.932, 0.946] against cobidders. These are NOT the discrimination headline — most of the gap is opportunity arithmetic. Within-stratum (exposure-stripped) AUC is 0.7715, a genuine increment of +0.042 over the exposure-only benchmark of 0.946 (DeLong p ≈ 2e-6)."
created: 2026-05-22
script: scripts/02_analysis.R
target: output/tables/tab_cobidder_baseline.tex
tags: ["H:cobidder-concentration", baseline, fl14, auc]
design:
  sample: "Always-loser firms in BEC 2009–2019 (16,843 firms); cobidder set from AN-003 (193 firms)"
  specification: "AUC of FL14 (binary) and log(1+tenders_count) (continuous) with cobidder indicator as positive class"
  notes: "Baseline measurement before audit discipline; the audit chain (AN-005, AN-006, AN-013, AN-014) gives the disciplined operational numbers"
---

!!! warning "Superseded numbers — canonical-target re-estimation (June 4, 2026)"
    This analysis note documents a historical run under the earlier validation label.
    On June 4, 2026 the paper adopted a reproducible, non-circular target (651
    always-loser cobidders; frequent-loser flag never used in the label) and
    re-estimated every result. Where this page conflicts with the
    [paper](../paper.pdf) or the [changelog](../changelog.md), **the paper wins**.

# AN-004: Baseline cobidder concentration in FL14 stratum

!!! abstract "Intuition (plain-language)"
    Do the firms the screen flags cluster on the loser side of adjudicated cartels? In a pooled comparison, yes — FL14 separates cobidders from other always-losers at AUC 0.924, the continuous score at 0.939 (0.5 is a coin flip). But most of that gap is *opportunity arithmetic*: firms that bid in more tenders mechanically overlap more cartel environments. Strip exposure out by comparing firms *within* the same opportunity stratum and the AUC falls to 0.7715 — a genuine but modest increment of +0.042 over the exposure-only benchmark of 0.946. So this pooled number is the starting point, not the discrimination headline; everything after it decomposes the signal and tests where it reaches.

## Question

Does the FL14 stratum contain a disproportionate share of CADE-
adjudication-anchored cobidders relative to the always-loser baseline?
This is the headline-baseline triage result.

## Design

- **Sample**: 16,843 always-loser firms in BEC 2009–2019.
- **Outcome**: cobidder indicator (1 if firm is in the 193-firm
  cobidder set from [AN-003](an-003-cade-bec-linkage.md)).
- **Specifications**:
  - FL14 binary: AUC of the FL14 indicator.
  - Continuous: AUC of `log(1 + tenders_count)`.
- **Evaluation**: in-sample baseline; discipline applied separately in
  [AN-005](an-005-sham-fl-permutation.md),
  [AN-006](an-006-strict-prospective-holdout.md),
  [AN-013](an-013-precision-at-k-audit.md), and
  [AN-014](an-014-leakage-audit-d3.md).

## Results

**Pooled (exposure-inflated) baseline — the starting point, not the
headline:**

| Score | AUC | 95% CI |
|---|---:|---|
| FL14 (binary) | 0.924 | [0.921, 0.926] |
| log(1 + tenders_count) (continuous) | 0.939 | [0.932, 0.946] |

**Exposure decomposition — the disciplined reading:**

| Quantity | AUC |
|---|---:|
| Exposure-only benchmark | 0.946 |
| Within-opportunity-stratum (exposure-stripped) | **0.7715** |
| Genuine increment over exposure-only | **+0.042** (DeLong p ≈ 2 × 10⁻⁶) |

The pooled firm-level numbers are *exposure-inflated*: most of the raw
separation is opportunity arithmetic — firms that participate more
mechanically overlap more adjudicated cartel environments. The genuine
loser-side signal, isolated within the opportunity stratum, is the
0.7715 / +0.042 pair. See
[AN-027](an-027-universe-anchored-stratum-scope.md) and
[AN-028](an-028-exposure-stratum-balance.md) for the full exposure
audit.

Macros: `\valAUCFLfirm`, `\valAUCFLfirmCI`, `\valAUClogtc`,
`\valAUClogtcCI`.

![AN-004 baseline cobidder AUC](../assets/figures/fig_an004_baseline_auc.png)

*Figure: pooled baseline cobidder AUC for FL14 binary (0.924, [0.921,
0.926]) and continuous log(1+tenders_count) (0.939, [0.932, 0.946]).
Both substantially above the random benchmark (0.5) — but these are
exposure-inflated; the exposure-stripped within-stratum AUC is 0.7715.*

The cobidder share inside FL14 is 7.1% (`\valCobidShareFL`), against a
baseline always-loser cobidder rate that is much lower. This corresponds
to the headline 131/193 cobidder recovery in the gatekeeping setup
([AN-012](an-012-operational-metrics.md)).

## Interpretation

Both the pooled binary and continuous variants separate cobidders well
inside the always-loser pool, but the bulk of that separation is
opportunity arithmetic. Once exposure is stripped out, the genuine
within-stratum signal is AUC 0.7715 (+0.042 over the 0.946 exposure-only
benchmark, DeLong p ≈ 2 × 10⁻⁶) — real but modest. The continuous score
is the dominating ranking ([AN-011](an-011-horse-race-continuous.md));
FL14 is the administrative auditable implementation, not a structural
threshold. The pooled baseline numbers are exposure-inflated and inflated
relative to operational deployment — the disciplined columns in
[AN-013](an-013-precision-at-k-audit.md) and
[AN-014](an-014-leakage-audit-d3.md), and the exposure decomposition in
[AN-027](an-027-universe-anchored-stratum-scope.md)/[AN-028](an-028-exposure-stratum-balance.md),
are the right reading.

## Follow-ups

- Decomposition by adjudication-anchor sub-period.
- Modal-by-modal decomposition ([AN-016](an-016-gate-d2.md)).
- Strict-train-period replication
  ([AN-006](an-006-strict-prospective-holdout.md)).
