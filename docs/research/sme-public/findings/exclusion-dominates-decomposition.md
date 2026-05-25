# Exclusion dominates the price decomposition

🟡 The structural decomposition of the SME set-aside price effect into
the **lost-discipline channel** (non-SMEs removed, SME pool held fixed)
and the **protected-pool offset** (post-policy SME pool replacing the
fixed one) finds that the first channel accounts for **~72% of the sum
of absolute component magnitudes** in standardized non-pharmaceutical
procurement
([AN-010](../analyses/an-010-bne-decomposition.md)). The exclusion-to-net
ratio likewise exceeds 1 — the protected-pool offset works in the right
direction but cannot recreate the lost competitive discipline.

The decomposition rests on three counterfactual price-formation objects
recovered from BEC Pregão drop-outs under the maintained IPV-clock
interpretation: $S_1$ (open pre-policy auction), $S_2$ (SME-only with
the pre-policy SME pool held fixed), $S_3$ (SME-only with the observed
post-policy SME pool). The jump $S_1 \to S_2$ is the lost-discipline
magnitude; the decline $S_2 \to S_3$ is the protected-pool offset; the
remaining gap $S_1 \to S_3$ is the realized price cost of the set-aside.

*See Figure 4 (Counterfactual price decomposition) in `paper.pdf` §4.*

*The simulated second-order statistic $E[c_{(2)}]$ normalized by the
buyer reference price, for $S_1$, $S_2$, $S_3$. $S_2 - S_1$ is the
lost-discipline magnitude; $S_3 - S_2$ is the protected-pool offset
working in the opposite direction. The absolute exclusion share
$|S_2-S_1| / (|S_2-S_1| + |S_3-S_2|)$ is ~72% in non-pharma.*

**Caveat.** The decomposition inherits the maintained IPV-clock
interpretation of Pregão drop-outs
(see [H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)).
The diagnostic battery has now landed:
[AN-015](../analyses/an-015-collusion-screens.md) finds Conley
close-pair shares stable in non-pharma (16.9% → 16.8%) and falling in
pharma (27.6% → 24.4%); Bajari-Ye T1 ratios fall in both classes
(NP 2.63 → 1.83; PH 1.29 → 1.11). The threat that the smaller
eligible SME pool generated a new coordination shock is rejected.
Strict invariance ([AN-017](../analyses/an-017-strict-invariance.md))
reinforces the dominance ordering, raising the exclusion share to
**85% (NP) and 79% (PH)** when composition is held fixed. The
reading remains 🟡 because residual baseline clustering exists
(realized close-pair shares are 1.6–1.9× the null mean) and the
screens do not *prove* IPV-clock holds — they rule out the most
obvious deviations. The pharma analog inherits additional model
sensitivity ([AN-016](../analyses/an-016-pharma-boundary.md)), which
is why pharma is treated as a boundary case rather than a second
headline.

**Sources.**

- *Own analysis*: [AN-010](../analyses/an-010-bne-decomposition.md)
  (BNE simulation + decomposition table); supporting pieces
  [AN-013](../analyses/an-013-pregao-dropouts.md) (drop-out extraction),
  [AN-014](../analyses/an-014-uh-correction.md) (Krasnokutskaya-style
  heterogeneity correction),
  [AN-015](../analyses/an-015-collusion-screens.md) (collusion screens),
  [AN-017](../analyses/an-017-strict-invariance.md) (strict-invariance
  sensitivity).
- *Reports*: none direct.
- *News anchors*: none direct.
- *Cross-refs*: [H:exclusion-dominates](../hypotheses/exclusion-dominates.md);
  [H:protected-pool-responds](../hypotheses/protected-pool-responds.md);
  paper §4 (Exclusion and the Price-Forming Pool).
- *Validation*: `v7-jpube-tight/scripts/45_bne_simulation.R` and
  `46_decomp_compare.R` produce the decomposition table cells; the
  v8-jpube `46_bne_empirical_counts.R` is the empirical bidder-count
  robustness used to discipline the simulation against observed entry.
