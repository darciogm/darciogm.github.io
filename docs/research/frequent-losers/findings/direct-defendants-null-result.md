---
paper: frequent-losers
---

# The FL ranking is null on direct CADE defendants — by design

!!! abstract "Intuition (plain-language)"
    The same logic that makes the screen work also fixes its limit. A score built on "this firm never wins" is, by construction, blind to the firms that *did* win the rigged contracts — designated winners are not zero-win firms. So the screen scores essentially at random (AUC ≈ 0.49) against the convicted ring-leaders. That is not a failure to hide; it is the honest boundary of a loser-side tool: it tells you *where to look*, never *who is guilty*.

🟢 The frequent-loser ranking, evaluated against the **47 direct CADE
defendants** (the legal anchors) in 2009–2019 procurement-cartel
adjudications, returns **AUC ≈ 0.49** — indistinguishable from random.
This is a **predicted scope boundary, by design**, not a failure: a
score built from persistent zero-win participation cannot rank
designated winners, who are *not* zero-win firms by construction
([AN-007](../analyses/an-007-auc-direct-cade.md)). The paper
**front-pages** this null as the honest limit of an award-layer screen.

Diagnostic D4 ([AN-018](../analyses/an-018-gate-d4.md)) confirms the
null mechanistically: only **7 of 47 direct defendants (14.9%)** are
always-losers, and their median win rate is **0.261** (vs 0.086 for
cobidders, Mann–Whitney p < 0.05). Direct defendants are structurally
**winner-heavy**.

The null survives every evaluation regime: 0.506 in the leakage audit
([AN-014](../analyses/an-014-leakage-audit-d3.md)) raw item-level,
0.511 under temporal holdout — all within sampling distance of 0.5.

This finding is the **anti-claim** that disciplines the rest of the
paper. It rules out the "cartel detector" reading and pins the
interpretation to a loser-side tool that **orders forensic priority**,
never proves conduct. Without it, the screen would overclaim; with it,
the reach-and-limits map is honest.

**Caveat.** The null is the *predicted* finding under the loser-side
scope interpretation; reading it as a failure of the screen would
misunderstand the construction. The reading is 🟢 because the result is
load-bearing for the framing of the paper and survives every audit in
§4 of the manuscript.

**Sources.**

- *Own analysis*:
  [AN-007](../analyses/an-007-auc-direct-cade.md) (direct-defendant AUC),
  [AN-018](../analyses/an-018-gate-d4.md) (D4 gate — CADE winner-heavy),
  [AN-014](../analyses/an-014-leakage-audit-d3.md) (null in audit regimes),
  [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md) (scope
  matrix; **row 4: participation count vs direct CADE = 0.383, below
  random — score actively repels winner-heavy defendants**).
- *Cross-refs*:
  [H:direct-defendants-null](../hypotheses/direct-defendants-null.md);
  [docs/results.md](../results.md).
- *Macros*: `\valAUCdirectCADE` (0.491), `\valAUCdirectCADECI`,
  `\valDirectCADE` (47), `\valDirectShareAL` (14.9%),
  `\valDirectMedWR` (0.261), `\valOthersMedWR` (0.086).
- *Validation*: backing scripts `scripts/33_auc_direct_cade.R`,
  `scripts/39_gate_d4_cade_winner_heavy.R`,
  `scripts/40_leakage_audit_d3.R`.
