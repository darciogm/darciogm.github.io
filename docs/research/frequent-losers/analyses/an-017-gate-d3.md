---
paper: frequent-losers
id: an-017
hypothesis: cobidder-concentration
type: robustness
question: D3 gate diagnostic — does the continuous score preserve the loser-side thesis without FL14, and what is the item-level raw AUC subject to the leakage audit?
status: done
status_date: 2026-05-22
confidence: green
headline: "D3 passes. Continuous-only specs significant at p < 0.001 across robustness; modal asymmetry survives without FL14. Item-level raw AUC 0.995 (then 0.891 OOF, 0.864 temporal — see AN-014)."
created: 2026-05-22
script: scripts/38_gate_d3_continuous_only.R
target: output/gate_d3/gate_d3_continuous_only.csv
tags: ["H:cobidder-concentration", gate-d3, continuous-only]
design:
  sample: "Always-losers and matched items in BEC 2009–2019; FL14 binary excluded"
  specification: "Continuous log(1+tenders_count) only; AUC + price coefficients across robustness specifications; modal asymmetry check"
  notes: "Diagnostic D3 from the 2026-04-30 gate battery. The thesis does not depend on the FL14 cutoff; the raw item-level AUC is subsequently disciplined in AN-014."
---

# AN-017: Gate D3 — continuous-only thesis

## Question

D3 gate diagnostic: does the continuous score preserve the loser-side
thesis without relying on the FL14 binary, and what is the item-level
raw AUC that the leakage audit then disciplines?

## Design

- **Sample**: always-losers and matched items in BEC 2009–2019; FL14
  binary deliberately excluded from all specifications.
- **Specifications**: continuous log(1+tenders_count) only;
  - AUC against cobidders;
  - price coefficients across robustness specs;
  - modal-asymmetry replication.
- **Raw item-level**: AUC reported on the full item-firm panel (subject
  to leakage; disciplined in [AN-014](an-014-leakage-audit-d3.md)).

## Results

- All continuous-only specifications: significant at p < 0.001.
- Modal asymmetry (Pregão > Convite) survives without FL14 binary
  ([AN-016](an-016-gate-d2.md)).
- Raw item-level AUC: **0.995** (`\valAUCitemRaw`); subject to leakage
  audit ([AN-014](an-014-leakage-audit-d3.md)).
- Continuous firm-level AUC: **0.939** [0.932, 0.946]
  (`\valAUClogtc`, `\valAUClogtcCI`).

After leakage discipline:

| Step | Continuous AUC |
|---|---:|
| Raw item-level | 0.995 |
| Out-of-fold CV at firm | 0.891 |
| Temporal holdout (firm) | 0.864 |

## Interpretation

**D3 passes**. The thesis does not depend on the FL14 cutoff: a
continuous-only specification preserves the cobidder concentration, the
price relationship, and the modal asymmetry. The FL14 binary is the
auditable operational rule, but the underlying signal is the
continuous loss intensity.

The raw item-level AUC of 0.995 is reported only after the leakage
audit ([AN-014](an-014-leakage-audit-d3.md)) is in place — the operational
claim relies on the disciplined band (0.86–0.89). The continuous score
is therefore robust to: (i) cutoff choice, (ii) leakage, (iii) modality
split, (iv) timing discipline ([AN-006](an-006-strict-prospective-holdout.md)).

D3 is one of four gate diagnostics (D1–D4) from 2026-04-30.

## Follow-ups

- Continuous-only operational metrics
  ([AN-012](an-012-operational-metrics.md),
  [AN-013](an-013-precision-at-k-audit.md)).
- Robustness to alternative continuous transformations
  ([AN-023](an-023-theory-operationalization-audit.md)).
