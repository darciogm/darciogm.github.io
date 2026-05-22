---
paper: frequent-losers
id: an-018
hypothesis: direct-defendants-null
type: descriptive
question: D4 gate diagnostic — what share of direct CADE defendants are always-losers, and what is their win-rate distribution?
status: done
status_date: 2026-05-22
confidence: green
headline: "D4 passes. 14.9% of direct CADE defendants (7/47) are always-losers; their median win rate is 0.261 vs 0.086 for cobidders. Direct defendants are structurally winner-heavy — the loser-side rank cannot cover them."
created: 2026-05-22
script: scripts/39_gate_d4_cade_winner_heavy.R
target: output/gate_d4/gate_d4_cade_winner_heavy.csv
tags: ["H:direct-defendants-null", gate-d4, cade, winner-heavy]
design:
  sample: "47 direct CADE defendants linked to BEC; comparison set = 193 cobidders"
  specification: "Share of always-losers among direct defendants; median win_rate; Mann–Whitney test on win_rate distributions"
  notes: "Diagnostic D4 from the 2026-04-30 gate battery. The result mechanistically confirms the AUC null against direct defendants (AN-007)."
---

# AN-018: Gate D4 — CADE winner-heavy diagnostic

## Question

D4 gate diagnostic: what share of direct CADE defendants are always-
losers, and what is their win-rate distribution? The diagnostic
mechanistically confirms the predicted AUC null against direct
defendants ([AN-007](an-007-auc-direct-cade.md)).

## Design

- **Sample**: 47 direct CADE defendants linked to BEC.
- **Comparison set**: 193 cobidders.
- **Outcomes**:
  - share of always-losers among direct defendants;
  - median win_rate (direct defendants vs cobidders);
  - median win count.
- **Test**: Mann–Whitney on win_rate distributions.

## Results

| Quantity | Direct defendants | Cobidders |
|---|---:|---:|
| N | 47 | 193 |
| Share that are always-losers | 14.9% (7/47) | 100% (193/193) |
| Median win rate | 0.261 | 0.086 |
| Median win count | 42 | (always-losers ⇒ 0 wins) |

Macros: `\valDirectCADE`, `\valDirectShareAL` (14.9), `\valDirectMedWR`
(0.261), `\valOthersMedWR` (0.086), `\valDirectMedWins` (42),
`\valCobidders`.

Mann–Whitney test on win_rate (direct defendants vs cobidders):
p < 0.05.

## Interpretation

**D4 passes**. Direct CADE defendants are structurally **winner-heavy**:
only 14.9% are always-losers, and their median win rate (0.261) is
~3× that of cobidders (0.086). A loser-side rank built from always-
loser participation literally cannot cover most of them, by
construction.

This mechanistically explains the predicted null AUC against direct
defendants ([AN-007](an-007-auc-direct-cade.md)): the scope of the
screen is loser-side adjacency, not membership.

D4 closes the four-diagnostic gate battery (D1–D4) from 2026-04-30. The
result is load-bearing for the framing of §4.3 of the
[manuscript](../paper.md): direct-defendant AUC ≈ 0.50 is a *feature*
of the scope, not a *failure* of the screen.

## Follow-ups

- Decomposition by adjudication date (within-cartel role allocation).
- Sensitivity to alternative direct-defendant definitions.
- Triangulation with the unified mechanism quadrants
  ([AN-024](an-024-unified-mechanism.md)).
