---
paper: frequent-losers
id: an-008
hypothesis: cobidder-profile-distinct
type: descriptive
question: Within the FL14 stratum, how do cobidders differ from non-cobidder FLs along buyer breadth and operational footprint?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Within the FL14 stratum, cobidders are deployed across roughly 2× more tenders and 2× more unique winners than non-cobidder FLs (136.5 vs 76.7 tenders; 24.8 vs 13.5 unique winners; Cohen's d ≈ 0.7–1.0)."
created: 2026-05-22
script: scripts/28_pbu_characterization.R
target: output/theory_bridge/summary_means_wide.csv
tags: ["H:cobidder-profile-distinct", descriptive, buyer-breadth, footprint]
design:
  sample: "FL14 stratum (always-losers above the IQR cutoff), with cobidder vs non-cobidder split"
  specification: "Within-stratum comparison of cobidders vs non-cobidder FLs; outcomes = mean tenders per firm, mean unique winners crossed, mean buyer-product groups; standardized effect sizes (Cohen's d) reported alongside raw means"
  notes: "Controls for tenders_count to rule out volume confound within stratum"
---

# AN-008: Cobidder buyer breadth and operational footprint

!!! abstract "Intuition (plain-language)"
    Inside the frequent-loser group, are cobidders distinguishable from other frequent losers, or do they look the same? Cobidders bid in twice as many tenders, cross twice as many unique winners, and concentrate in tighter product portfolios. The profile is what one would expect if cobidders are *deployed* against many tenders deliberately, rather than just bidding broadly by chance.

## Question

Within the FL14 stratum, how do cobidders differ from non-cobidder FLs
along buyer breadth and operational footprint? The test is within-
stratum, controlling for tenders_count.

## Design

- **Sample**: FL14 stratum (always-losers above the IQR cutoff).
- **Cobidder vs non-cobidder-FL** split.
- **Outcomes**: mean tenders per firm, unique winners crossed, number of
  buyer-product groups, repeat-buyer share.
- **Effect sizes**: standardized Cohen's d alongside raw means.

## Results

| Metric | Cobidders | Non-cobidder FL | Cohen's d |
|---|---:|---:|---:|
| Mean tenders per firm | 136.5 | 76.7 | +0.67 |
| Unique winners crossed | 24.8 | 13.5 | +1.00 |
| Share with a direct-defendant counterpart | 1.5% | 0.2% | +0.46 |
| Number of buyer-product groups | 7.6 | 9.5 | −0.32 |
| Repeat-buyer share | 21.6% | 33.4% | −0.38 |

Macros: `\valBridgeTendCob`, `\valBridgeTendFLnc`, `\valBridgeTendD`,
`\valBridgeUniqWinCob`, `\valBridgeUniqWinFLnc`, `\valBridgeUniqWinD`,
`\valBridgeDirectCob`, `\valBridgeDirectFLnc`, `\valBridgeNGroupsCob`,
`\valBridgeNGroupsFLnc`, `\valBridgeRepeatShareCob`,
`\valBridgeRepeatShareFLnc`.

![AN-008 cobidder profile Cohen's d](../assets/figures/fig_an008_cobidder_profile.png)

*Figure: Cohen's d of cobidders vs non-cobidder FLs across six profile
dimensions. Positive (red): cobidders higher on tenders, unique
winners crossed, share facing direct CADE, item-group HHI. Negative
(navy): cobidders lower on n item groups and repeat-buyer share.
Within-FL14 distinctness is robust across multiple dimensions.*

## Interpretation

Inside the FL14 stratum, cobidders are deployed more broadly (more
tenders, more unique winners crossed) but in tighter focal portfolios
(fewer buyer-product groups, lower repeat-buyer share). The pattern is
consistent with cover-bidding deployment — broad coverage across the
tenders where the cartel operates, concentrated in a few product
verticals — and not with random high-volume losing. The Cohen's d
magnitudes (0.3–1.0) are large in social-science terms.

This is descriptive, not diagnostic: the profile is *consistent with*
credible losing roles, not proof of them. The proof-producing stage
remains the bid layer ([AN-010](an-010-imhof-full-pipeline.md)).

## Follow-ups

- Sub-period stability of profile.
- Triangulation with network proximity
  ([AN-009](an-009-network-hhi.md)) and unified-mechanism quadrants
  ([AN-024](an-024-unified-mechanism.md)).
- Heterogeneity by procurement modality.
