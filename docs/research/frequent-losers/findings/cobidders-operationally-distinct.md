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

These differences give the loser-side adjacency target economic
content and make it harder to reduce the result to ordinary high-
volume losing alone.

**Caveat.** The bid-level patterns are explicitly described as
*consistent with* credible losing roles, not as forensic proof. The
manuscript distinguishes consistency from diagnosticity and keeps the
proof-producing stage in the bid layer. The reading is 🟡 because the
profile dimensions are observational and within-stratum; the first-
time-FL channel demoted to appendix
([AN-021](../analyses/an-021-first-time-fl-matching.md)) is one of the
margins that did not survive PS discipline.

**Sources.**

- *Own analysis*:
  [AN-008](../analyses/an-008-pbu-characterization.md) (FL
  characterization),
  [AN-009](../analyses/an-009-network-hhi.md) (network HHI + proximity),
  [AN-021](../analyses/an-021-first-time-fl-matching.md) (first-time
  channel — demoted),
  [AN-024](../analyses/an-024-unified-mechanism.md) (unified mechanism
  quadrants).
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
