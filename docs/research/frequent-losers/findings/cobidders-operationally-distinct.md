---
paper: frequent-losers
---

# FL cobidders are operationally distinct from other frequent losers

🟡 Inside the FL14 stratum, **cobidders look different from other
always-losers** along four economically meaningful dimensions, with
effect sizes (Cohen's d) in the 0.3–1.0 band — large in social-science
terms.

1. **Buyer breadth** ([AN-008](../analyses/an-008-pbu-characterization.md)).
   Cobidders bid in 136.5 tenders on average vs 76.7 for non-cobidder
   FLs (**d = +0.67**); they cross 24.8 unique winners vs 13.5 (**d =
   +1.00**).
2. **Product concentration** ([AN-009](../analyses/an-009-network-hhi.md)).
   Cobidder product-portfolio HHI is 0.380 vs 0.288 for non-cobidder
   FLs (**d = +0.39**) — more focused product portfolios.
3. **Network proximity** ([AN-008](../analyses/an-008-pbu-characterization.md),
   [AN-009](../analyses/an-009-network-hhi.md)). 1.5% of cobidders have
   a direct-defendant counterpart vs 0.2% of non-cobidder FLs (**d =
   +0.46**). FL-bidder-present markets have winner-side HHI 0.178 vs
   0.303 — cobidders show up in the more contestable markets.
4. **Bid-level patterns** ([AN-010](../analyses/an-010-imhof-full-pipeline.md),
   [AN-024](../analyses/an-024-unified-mechanism.md)). Consistent with
   credible losing roles, not diagnostic of them.
5. **Survives volume matching** ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)).
   Cobidders bid in ~1.8× more tenders, so the obvious worry is that
   the distinctness is just volume. Matching cobidders to non-cobidder
   FLs on `tenders_count` (standardized difference 0.49 → 0.00), the
   profile distinctness holds or strengthens: product HHI **d = +0.47**,
   winner-pair spread **−0.56**, median gap-to-winner **−0.25**. The
   distinctness is **not a volume artifact**. One honest casualty: the
   AN-031 bid-dispersion elevation collapses (**+0.05, n.s.**) and is
   dropped as a volume artifact.

These differences give the loser-side adjacency target economic
content and make it harder to reduce the result to ordinary high-
volume losing alone — a worry now directly addressed by the
volume-matched audit.

**Caveat.** The distinctness that survives volume matching is
**structural** (product specialization, winner spread, proximity to the
winning bid). The *bid-conduct* distinctness is narrower: one channel
survives (median gap-to-winner), while the bid-dispersion sub-signal
([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)) and the
bid-timing battery ([AN-042](../analyses/an-042-volume-matched-timing-audit.md):
all Wilcoxon p ≥ 0.23) are documented nulls — so this is not a
multi-channel behavioral signature. The reading stays 🟡 because the
dimensions are observational, within-stratum, and single-source
(BEC × CADE). The first-time-FL channel
([AN-021](../analyses/an-021-first-time-fl-matching.md)) and the matched
quadrant heterogeneity
([AN-032](../analyses/an-032-matched-heterogeneity-audit.md)) bound a
causal-mechanism reading the finding does not assert, not the structural
distinctness. The supporting hypothesis
[H:cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md)
is **Partial (strongly supported)** on the structural claim; promotion
beyond 🟡 / to Confirmed needs non-BEC replication.

**Sources.**

- *Own analysis*:
  [AN-008](../analyses/an-008-pbu-characterization.md) (FL
  characterization),
  [AN-009](../analyses/an-009-network-hhi.md) (network HHI + proximity),
  [AN-021](../analyses/an-021-first-time-fl-matching.md) (first-time
  channel — demoted),
  [AN-024](../analyses/an-024-unified-mechanism.md) (unified mechanism
  quadrants),
  [AN-028](../analyses/an-028-exposure-stratum-balance.md)
  (standardized-diff battery, 7 dimensions × 3 comparisons),
  [AN-031](../analyses/an-031-bid-level-behavioral-profile.md) (bid-
  level gap-to-winner d = -0.28 — behavioral distinctness beyond
  participation),
  [AN-032](../analyses/an-032-matched-heterogeneity-audit.md) (matched
  quadrant heterogeneity audit — honest negative finding),
  [AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)
  (volume-matched profile audit — structural distinctness survives matching
  on `tenders_count`; bid-dispersion sub-signal does not),
  [AN-042](../analyses/an-042-volume-matched-timing-audit.md)
  (volume-matched timing audit — candidate 2nd bid-conduct channel, null).
- *Cross-refs*:
  [H:cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md);
  [docs/results.md](../results.md).
- *Macros*: `\valBridgeTendCob` (136.5), `\valBridgeTendFLnc` (76.7),
  `\valBridgeUniqWinCob` (24.8), `\valBridgeHHICob` (0.380),
  `\valBridgeHHIFLnc` (0.288), `\valFLwinnerHHI` (0.178),
  `\valNonFLwinnerHHI` (0.303), `\valFTpsCoef` (0.062), `\valFTpsP`
  (0.312).
- *Validation*: backing scripts `scripts/28_pbu_characterization.R`,
  `scripts/19_network_heterogeneity_2d.R`,
  `scripts/30_first_time_fl_matching.R`,
  `scripts/35_unified_mechanism.R`.
