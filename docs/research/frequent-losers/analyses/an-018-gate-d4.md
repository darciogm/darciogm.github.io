---
id: an-018
hypothesis: direct-defendants-null
type: descriptive
question: D4 gate diagnostic — what share of direct CADE defendants are always-losers, and what is their win-rate distribution?
status: pending
created: 2026-05-22
script: scripts/39_gate_d4_cade_winner_heavy.R
target: output/tables/tab_gate_d4.tex
tags: ["H:direct-defendants-null", gate-d4, cade, winner-heavy]
design:
  sample: "47 direct CADE defendants"
  specification: "Share of always-losers among direct defendants; median win_rate; Mann-Whitney test vs cobidder set"
  notes: "D4 result: 7/47 direct defendants are always-losers (14.9%); median win_rate 0.26 vs 0.09 cobidders; Mann-Whitney p<0.05."
---

# AN-018: Gate D4 — CADE winner-heavy diagnostic

## Question

D4 gate diagnostic: what share of direct CADE defendants are always-losers,
and what is their win-rate distribution? Diagnostic D4 from the 2026-04-30
gate battery.

## Design

- **Sample**: 47 direct CADE defendants.
- **Outcomes**: share of always-losers; median win_rate; comparison with
  cobidder set.
- **Test**: Mann-Whitney on win_rate distributions.

## Results

*Pending.* Headline: 7/47 direct defendants are always-losers (14.9%);
median win_rate 0.26 (direct defendants) vs 0.09 (cobidders);
Mann-Whitney p<0.05.

## Interpretation

*Pending.* Direct defendants are winner-heavy by construction — the
loser-side rank cannot cover them. Supports the predicted null in
[AN-007](an-007-auc-direct-cade.md). See
[H:direct-defendants-null](../hypotheses/direct-defendants-null.md).

## Follow-ups

- Decomposition by adjudication date.
