---
paper: frequent-losers
id: an-015
hypothesis: award-bid-complementarity
type: descriptive
question: D1 gate diagnostic — does the continuous score dominate FL14 on a harmonized same-sample horse race, and do the price coefficients align?
status: done
status_date: 2026-05-25
confidence: green
headline: "D1 passes. Continuous AUC 0.939 dominates the binary FL14 flag (0.924); the gap is 0.015 under the corrected FL14 ≥ 14 definition (DeLong Z = −4.38, p = 1.2 × 10⁻⁵). Price coefficients align in sign across binary and continuous in the single-score specifications."
created: 2026-05-22
script: scripts/36_gate_d1_harmonized.R
target: output/gate_d1/gate_d1_harmonized.csv
tags: ["H:award-bid-complementarity", "H:cobidder-concentration", gate-d1, continuous, harmonized]
design:
  sample: "Harmonized same-sample set with both FL14 and continuous variants available; N = 1,653,658"
  specification: "DeLong test of AUC(continuous) vs AUC(FL14); price coefficients in three specifications (FL14 alone, continuous alone, joint)"
  notes: "Diagnostic D1 from the 2026-04-30 four-diagnostic gate that disqualified γ++ reframing and locked the JLEO path"
---

# AN-015: Gate D1 — harmonized same-sample horse race

!!! abstract "Intuition (plain-language)"
    D1 is the first of four 2026 "gate" diagnostics that decided the paper's framing. On a single harmonized firm set it pits the continuous score against the binary FL14 head to head. The continuous version dominates (0.939 vs 0.924; DeLong p ≈ 10⁻⁵) and the price coefficients agree in sign. The economic payoff: it confirms that loss intensity — not a particular cutoff — is the primitive, locking the rule that the binary is a deployable simplification of a continuous signal.

## Question

D1 gate diagnostic: does the continuous score dominate FL14 on a
harmonized same-sample horse race, and do the price coefficients align?
This is the diagnostic D1 from the 2026-04-30 gate battery that locked
the JLEO submission strategy.

## Design

- **Sample**: harmonized same-sample set with both FL14 and continuous
  variants available; N = 1,653,658 item-firm observations.
- **Specifications**:
  - AUC test: DeLong paired AUC comparison.
  - Price test: coefficient on each score in (a) FL14 alone, (b)
    continuous alone, (c) joint.

## Results

**AUC comparison:**

| Score | AUC | 95% CI |
|---|---:|---|
| FL14 binary | 0.924 | [0.921, 0.926] |
| Continuous log_tc | **0.939** | [0.932, 0.946] |

**D1 passes**: continuous dominates the binary flag (DeLong Z = −4.38, p = 1.2 × 10⁻⁵); the gap is 0.015 under the corrected FL14 (≥ 14) definition. The D1 re-run (2026-05-25) confirmed the direction; the earlier Z = −4.30 / p = 2 × 10⁻⁵ were computed under the superseded > 14 (FL15) cut.

**Price coefficients (item × year × PBU FE):**

| Spec | FL14 coef | SE | log_tc coef | SE |
|---|---:|---:|---:|---:|
| FL14 alone | +0.0653*** | 0.0216 | — | — |
| log_tc alone | — | — | +0.0188*** | 0.0055 |
| Joint | −0.0746* | 0.0383 | +0.0349*** | 0.0108 |

Single-score specifications show same-sign price coefficients
(both positive); the joint specification reveals the sign reversal of
FL14 once the continuous score absorbs the persistent-loss signal.

Macros: `\valHorseAUCBin`, `\valHorseAUCCont`, `\valDeLongZ`,
`\valDeLongP`, plus the `\valHorse*` price-coefficient series.

## Interpretation

**D1 passes** unambiguously. The continuous score dominates the binary
in both discrimination and in carrying the persistent-loss signal in
the price equation. FL14 is demoted from "the construct" to "the
deployable implementation of the construct"; the continuous
log(1+tenders_count) is the empirical primitive.

The sign reversal of the FL14 coefficient in the joint specification
flips the price reading: under the joint model the binary picks up
truncation noise that disconnects from the price signal. This is part
of the scope, not damages, story in
[AN-019](an-019-rdd-cap-price.md) and
[H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md).

D1 is one of four gate diagnostics (D1–D4) from 2026-04-30. D2
([AN-016](an-016-gate-d2.md)) disqualified γ++ reframing. D3
([AN-017](an-017-gate-d3.md)) preserved the loser-side thesis without
FL14. D4 ([AN-018](an-018-gate-d4.md)) confirmed CADE-winner-heavy
structure.

## Follow-ups

- Same horse race on temporal-holdout sample
  ([AN-006](an-006-strict-prospective-holdout.md)).
- Modal-by-modal horse race ([AN-016](an-016-gate-d2.md)).
- Robustness to alternative continuous transformations.
