---
paper: frequent-losers
---

# The FL ranking is null on direct CADE defendants — by design

🟢 The frequent-loser ranking, evaluated against the **47 direct CADE
defendants** in 2009–2019 procurement-cartel adjudications, returns
**AUC = 0.491 [0.461, 0.520]** — indistinguishable from random. The
null is the predicted finding under the loser-side scope: a score
built from persistent zero-win participation cannot rank designated
winners, who are *not* zero-win firms by construction
([AN-007](../analyses/an-007-auc-direct-cade.md)).

Diagnostic D4 ([AN-018](../analyses/an-018-gate-d4.md)) confirms the
null mechanistically: only **7 of 47 direct defendants (14.9%)** are
always-losers, and their median win rate is **0.261** (vs 0.086 for
cobidders, Mann–Whitney p < 0.05). Direct defendants are structurally
**winner-heavy**.

The null survives every evaluation regime: 0.506 in the leakage audit
([AN-014](../analyses/an-014-leakage-audit-d3.md)) raw item-level,
0.511 under temporal holdout — all within sampling distance of 0.5.

This finding is the **anti-claim** that disciplines the rest of the
paper. It rules out the generic-cartel-detector reading and pins the
interpretation to loser-side adjacency. Without it, the screen would
overclaim; with it, the scope is honest.

**Caveat.** The null is the *predicted* finding under the loser-side
scope interpretation; reading it as a failure of the screen would
misunderstand the construction. The reading is 🟢 because the result is
load-bearing for the framing of the paper and survives every audit in
§4 of the manuscript.

**Sources.**

- *Own analysis*:
  [AN-007](../analyses/an-007-auc-direct-cade.md) (direct-defendant AUC),
  [AN-018](../analyses/an-018-gate-d4.md) (D4 gate — CADE winner-heavy),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (null in audit regimes).
- *Cross-refs*:
  [H:direct-defendants-null](../hypotheses/direct-defendants-null.md);
  [docs/results.md](../results.md).
- *Macros*: `\valAUCdirectCADE` (0.491), `\valAUCdirectCADECI`,
  `\valDirectCADE` (47), `\valDirectShareAL` (14.9%),
  `\valDirectMedWR` (0.261), `\valOthersMedWR` (0.086).
- *Validation*: backing scripts `scripts/33_auc_direct_cade.R`,
  `scripts/39_gate_d4_cade_winner_heavy.R`,
  `scripts/40_leakage_audit_d3.R`.
