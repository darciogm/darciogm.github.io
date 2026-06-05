---
paper: frequent-losers
---

# The FL binary flag is null on direct CADE defendants — by design

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    The same logic that makes the loser-side flag concentrate risk also fixes its limit. A binary flag built on "this firm never wins" is, by construction, blind to the firms that *did* win the rigged contracts — designated winners are not zero-win firms. So the FL flag scores essentially at random (AUC ≈ 0.49) against the convicted ring-leaders. Participation *volume*, on the other hand, ranks defendants moderately above chance (0.66–0.70), because heavy participants are easier to flag generically. The boundary is on the loser-side binary flag, not on participation arithmetic: the flag tells you *where to look* among losers, never *who is guilty*.

🟢 The frequent-loser **binary flag**, evaluated against the **47 direct
CADE defendants** (the legal anchors) in 2009–2019 procurement-cartel
adjudications, returns **AUC ≈ 0.49** — indistinguishable from random.
This is a **predicted scope boundary, by design**, not a failure: a
binary flag built from persistent zero-win participation cannot rank
designated winners, who are *not* zero-win firms by construction
([AN-007](../analyses/an-007-auc-direct-cade.md)). The continuous
participation score, by contrast, ranks defendants **moderately above
chance (0.658 full / 0.695 strict)** — heavy participants are easier to
flag generically — so the asymmetry is specifically about the loser-side
binary flag, not participation volume. The paper **front-pages** the
binary null as the honest limit of an award-layer flag.

Diagnostic D4 ([AN-018](../analyses/an-018-gate-d4.md)) confirms the
null mechanistically: only **7 of 47 direct defendants (14.9%)** are
always-losers, and their median win rate is **0.261** — whereas
cobidders, being always-losers, have win rate **≡ 0 by construction**.
Direct defendants are structurally **winner-heavy**.

The null survives every evaluation regime: 0.506 in the leakage audit
([AN-014](../analyses/an-014-leakage-audit-d3.md)) raw item-level,
0.511 under temporal holdout — all within sampling distance of 0.5.

This finding is the **anti-claim** that disciplines the rest of the
paper. It rules out the "cartel detector" reading and pins the
interpretation to a loser-side flag that **concentrates forensic
priority** among losers, never proves conduct. Without it, the flag would
overclaim; with it, the reach-and-limits map is honest.

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
  matrix; the binary FL flag is silent on defendants (0.49) while the
  continuous participation score ranks them moderately above chance
  (0.66–0.70) — the asymmetry is on the binary flag, not participation
  volume).
- *Cross-refs*:
  [H:direct-defendants-null](../hypotheses/direct-defendants-null.md);
  [docs/results.md](../results.md).
- *Macros*: `\valAUCdirectCADE` (0.491), `\valAUCdirectCADECI`,
  `\valDirectCADE` (47), `\valDirectShareAL` (14.9%),
  `\valDirectMedWR` (0.261). (The old `\valOthersMedWR` = 0.086 is **dead**
  — never cite: cobidders are always-losers, so their win rate is ≡ 0 by
  construction.)
- *Validation*: backing scripts `scripts/33_auc_direct_cade.R`,
  `scripts/39_gate_d4_cade_winner_heavy.R`,
  `scripts/40_leakage_audit_d3.R`.
