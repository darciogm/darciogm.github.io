---
paper: sme-public
---

# The protected SME pool responds but does not replace lost discipline

🟡 After the March 2018 SME-only cutoff, the number of SME bidders per
auction roughly doubles in switched group 65 — the protected pool does
respond. But the realized post-policy price $S_3$ remains above the
open benchmark $S_1$ ([AN-010](../analyses/an-010-bne-decomposition.md)).
The set-aside cannot be rationalized as a *mechanical non-entry* story:
SMEs show up; the issue is that the protected pool's cost distribution
cannot recreate the competitive discipline supplied by the excluded
non-SMEs.

The structural decomposition splits the protected-pool offset
$S_3 - S_2$ into a participation channel (more SMEs) and a
composition-of-active-SMEs channel (the active SME cost distribution
may itself shift under the policy — selection, sourcing or technology
changes, product-mix changes). The offset is sizable but does not
flip the net price effect from positive to negative — the net
$S_3 - S_1$ remains positive in both non-pharma and pharma cells.

**Caveat.** The interpretation that the SME pool *cannot* recreate the
discipline rests on the maintained IPV-clock reading
([H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)): the
post-policy SME drop-outs are read as cost observations. The threat
that drop-outs are strategically suppressed (more cover-bidding among
the smaller eligible pool) is now bounded by the collusion screens
([AN-015](../analyses/an-015-collusion-screens.md)): Conley close-pair
shares are flat or falling post-cutoff and Bajari-Ye T1 ratios fall in
both classes — the differential-coordination shock that would explain
the protected-pool offset away is rejected. Residual baseline clustering
(real > null in every cell) remains a limitation, hence 🟡.

**Sources.**

- *Own analysis*: [AN-010](../analyses/an-010-bne-decomposition.md)
  (decomposition of $S_3 - S_2$);
  [AN-017](../analyses/an-017-strict-invariance.md) (strict-invariance
  isolating the participation channel from the composition channel).
- *Reports*: none direct.
- *News anchors*: none direct.
- *Cross-refs*: [H:protected-pool-responds](../hypotheses/protected-pool-responds.md);
  [H:exclusion-dominates](../hypotheses/exclusion-dominates.md);
  paper §4 (The protected pool responds).
- *Validation*: `v7-jpube-tight/scripts/44_entry_pool.R` for the
  bidder-count tabulation; `45_bne_simulation.R` for the $S_3$
  simulation.
