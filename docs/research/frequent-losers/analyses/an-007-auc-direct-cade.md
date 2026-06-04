---
paper: frequent-losers
id: an-007
hypothesis: direct-defendants-null
type: placebo
question: Does the FL score discriminate direct CADE defendants? It should not — by design.
status: done
status_date: 2026-05-22
confidence: green
headline: "AUC against direct CADE defendants = 0.491 [0.461, 0.520] — indistinguishable from random. The null is the predicted finding under the loser-side scope reading."
created: 2026-05-22
script: scripts/33_auc_direct_cade.R
target: output/auc_direct_cade/auc_direct_cade.csv
tags: ["H:direct-defendants-null", placebo, scope-check, auc]
design:
  sample: "All BEC firms (not restricted to always-losers); positive label = 47 direct CADE defendants"
  specification: "AUC of FL14 (binary) and log(1+tenders_count) (continuous) over the full panel, with direct-defendant indicator as positive class"
  notes: "The null is the predicted finding under loser-side scope. A non-null result would undermine the scope reading and convert the screen into an overclaim."
---

!!! warning "Superseded numbers — canonical-target re-estimation (June 4, 2026)"
    This analysis note documents a historical run under the earlier validation label.
    On June 4, 2026 the paper adopted a reproducible, non-circular target (651
    always-loser cobidders; frequent-loser flag never used in the label) and
    re-estimated every result. Where this page conflicts with the
    [paper](../paper.pdf) or the [changelog](../changelog.md), **the paper wins**.

# AN-007: AUC against direct CADE defendants

!!! abstract "Intuition (plain-language)"
    The most important number in the paper is a near-coin-flip. The screen ranks loser-side roles, and a cartel's ringleaders are its *winners* — they capture the rents by taking the rotated contracts. So tested against the 47 direct CADE defendants the screen scores AUC 0.491, indistinguishable from random. This is not a failure to hide; it is the design made visible. A tool claiming to flag both cover bidders and ringleaders would be overclaiming, and this null is what disciplines every other claim in the paper.

## Question

Does the FL score discriminate direct CADE defendants? Under the loser-
side scope interpretation, it should not — the score is built over zero-
win firms and cannot rank designated winners. A null AUC is the
predicted finding.

## Design

- **Sample**: all BEC firms (not restricted to always-losers).
- **Positive label**: 47 direct CADE defendants
  ([AN-003](an-003-cade-bec-linkage.md)).
- **Specifications**: AUC of FL14 (binary) and `log(1+tenders_count)`.
- **Identification**: scope-check placebo; the null is the predicted
  finding.

## Results

| Score against direct defendants | AUC | 95% CI |
|---|---:|---|
| FL14 + continuous (combined) | **0.491** | [0.461, 0.520] |
| Item-level (raw) | 0.506 | (close to random) |
| Item-level under temporal holdout | 0.511 | [0.510, 0.513] |

Macros: `\valAUCdirectCADE`, `\valAUCdirectCADECI`,
`\valAUCitemDirect`, `\valAUCItemDirectTemp`.

D4 gate ([AN-018](an-018-gate-d4.md)) corroborates the null
mechanistically: 7 of 47 direct defendants (14.9%) are always-losers;
their median win rate is 0.261 vs 0.086 for the cobidder set.

![AN-007 direct-defendant AUC null across regimes](../assets/figures/fig_an007_direct_cade_null.png)

*Figure: AUC against 47 direct CADE defendants across three regimes —
full panel (0.491, [0.461, 0.520]), item-level raw (0.506), item-level
under temporal holdout (0.511). All within sampling distance of 0.5
(red line). The null is regime-invariant.*

## Interpretation

The result is exactly what the loser-side scope predicts. Direct
defendants are winner-heavy by construction — the rank cannot cover
them, and it shouldn't. This is the **scope boundary by design** that
disciplines the rest of the paper: it rules out any reading of the screen
as a cartel detector and pins the interpretation to adjudication-anchored
exposure on the loser side. The 95% CI includes
0.5; the null survives every audit variant
([AN-014](an-014-leakage-audit-d3.md): 0.506 raw, 0.511 temporal).

The result is load-bearing for the framing in §4.3 of the
[manuscript](../paper.md) and confirmed by the auxiliary D4 diagnostic
([AN-018](an-018-gate-d4.md)).

## Follow-ups

- Decomposition of direct defendants by role (declared winner,
  coordinator, other) and AUC by role.
- Sensitivity to alternative direct-defendant labels (e.g., extended
  CADE case set).
- Triangulation with the unified mechanism profile
  ([AN-024](an-024-unified-mechanism.md)).
