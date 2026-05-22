# The FL ranking is null on direct CADE defendants — by design

!!! info "Pending finding"
    Scaffold for a result reported in §4.3 of the
    [manuscript](../paper.md). Headline numbers from
    [AN-007](../analyses/an-007-auc-direct-cade.md) and
    [AN-018](../analyses/an-018-gate-d4.md).

🟢 The frequent-loser ranking, evaluated against the **47 direct CADE
defendants** in the 2009–2019 procurement-cartel adjudications, returns an
AUC indistinguishable from random (~0.49–0.50). This is part of the design:
a loser-side score built from persistent zero-win participation cannot rank
designated winners, and the null result confirms the loser-side scope
rather than undermining the screen.

This finding is the **anti-claim** that disciplines the rest of the paper.
It rules out the generic-cartel-detector reading and pins the
interpretation to loser-side adjacency.

**Caveat.** The null is the predicted finding under the loser-side scope
interpretation; reading the null as a failure of the screen would
misunderstand the construction. The reading is 🟢 because the result is
load-bearing for the paper's framing and survives every audit in §4 of the
manuscript.

**Sources.**

- *Own analysis*: [AN-007](../analyses/an-007-auc-direct-cade.md)
  (direct-defendant AUC), [AN-018](../analyses/an-018-gate-d4.md) (D4 gate
  diagnostic — CADE winner-heavy).
- *Cross-refs*: [H:direct-defendants-null](../hypotheses/direct-defendants-null.md);
  [docs/results.md](../results.md).
- *Validation*: backing script `scripts/33_auc_direct_cade.R`,
  `scripts/39_gate_d4_cade_winner_heavy.R`.
