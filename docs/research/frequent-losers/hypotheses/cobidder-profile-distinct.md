---
paper: frequent-losers
id: h5
slug: cobidder-profile-distinct
title: "FL cobidders are economically distinct from other frequent losers"
cluster: C
paper_section: "§5"
status: mixed
last_updated: 2026-05-22
---

# H:cobidder-profile-distinct — FL cobidders are economically distinct from other frequent losers

If the frequent-loser ranking captures more than raw participation
intensity, then cobidders inside the FL stratum should look different from
other firms in the same stratum along economically meaningful dimensions:
buyer-portfolio breadth, product-portfolio concentration, proximity to
legal cartel anchors, and bid-level behavior consistent with credible
losing roles.

!!! abstract "Intuition (plain-language)"
    Within the frequent-loser group, are cobidders qualitatively different from other firms in the same group, or are they just the highest-volume members? Descriptively, cobidders are distinct across seven dimensions with large effect sizes. Causally, most of the within-FL heterogeneity is driven by volume itself — it doesn't survive matching. What survives is the bid-level behavioral signature (cobidders bid closer to winners). Honest mixed reading: the descriptive distinctness is robust; the causal/mechanistic story is narrower and concentrated in bid-level conduct.


> **Evidence strength: Partial (strongly supported).**
> Descriptive distinctness is robust across many dimensions; causal /
> mechanistic distinctness is largely a volume effect with one
> bid-level residual. Six lines of evidence:
> (i) **Participation profile** ([AN-008](../analyses/an-008-pbu-characterization.md)):
> Cohen's d +0.67 tenders, +1.00 unique winners, +0.46 CADE-facing,
> −0.32 n item groups, vs non-cobidder FLs.
> (ii) **Network / HHI** ([AN-009](../analyses/an-009-network-hhi.md)):
> cobidder portfolio HHI 0.380 vs 0.288 (d = +0.39); FL-bidder-present
> markets have lower winner-side HHI (0.178 vs 0.303) — cobidders sit
> in contestable winner environments.
> (iii) **Standardized-diff battery** ([AN-028](../analyses/an-028-exposure-stratum-balance.md)):
> 7 dimensions, d 0.19–1.00, all Wilcoxon p < 10⁻⁵ given N = 191.
> (iv) **Bid-level behavior** ([AN-031](../analyses/an-031-bid-level-behavioral-profile.md)):
> cobidder median gap-to-winner 0.582 vs 0.809 for non-cobidder FLs
> (d = −0.28, p < 10⁻⁶); SD of gap +0.15. Distinctness at the bid
> level, not just participation.
> (v) **Unified mechanism quadrants** ([AN-024](../analyses/an-024-unified-mechanism.md)):
> descriptive cell heterogeneity, with the Low-Low cell carrying the
> mass.
> (vi) **Matched-heterogeneity audit** ([AN-032](../analyses/an-032-matched-heterogeneity-audit.md)):
> the quadrant heterogeneity LARGELY DOES NOT SURVIVE PS matching —
> Low-HHI × Low-pairs cell drops from +0.090 (p = 0.048) unmatched to
> +0.066 (p = 0.227) matched. Reported as the negative finding that
> defines the causal-mechanistic limit.
> First-time-FL channel ([AN-021](../analyses/an-021-first-time-fl-matching.md))
> demoted to appendix (+0.10 unconditional → +0.062 PS-matched, p = 0.312).
> Promotion to 🟢 (**Confirmed**) requires both non-BEC replication AND
> a clean causal identification of the within-FL distinctness — see the
> H5 page section on why neither is satisfied by current evidence.

## Theory

Cartel theory predicts that cover bidders have specific operational
profiles: deployment patterns that put them in the relevant tenders, and
bid-level submission patterns consistent with credible non-winning roles
\citep{marshall2012economics,kawai2022detecting,clark2021collusion}. The
hypothesis is that these distinguishing characteristics survive within the
FL stratum — i.e., conditional on persistent zero-win participation.

## Prediction

Within the always-loser FL stratum, cobidders should:

1. be deployed across more buyers and tenders (broader operational
   footprint) than non-cobidder FLs;
2. operate in more concentrated product portfolios;
3. appear closer to legal cartel anchors in network terms (e.g., shared
   tenders, shared buyers);
4. exhibit bid-level patterns consistent with — but not diagnostic of —
   credible losing roles.

## Competing prediction

**Volume confound within stratum.** Cobidders could just be the highest-
volume FLs, producing the same operational profile mechanically. The test
must compare within the stratum, controlling for tenders-count.

## Case evidence

CADE adjudication records describe operational patterns that match the
predicted profile in specific cases (e.g., coordinated bidding in
hospital-supply procurement). The systematic test asks whether these
patterns hold in the cross-section of FL cobidders.

## Empirical test

- *Sample*: always-loser FL14 stratum.
- *Outcomes*: buyer breadth, product concentration (HHI), network
  proximity, bid-level moments (mean bid, dispersion).
- *Specification*: cobidder indicator regressed on each outcome with
  tenders-count and exposure-stratum controls.

## Data requirements and limitations

Requires the firm-level panel with buyer / product / network features.
Limitation: bid-level moments are *consistent with* credible losing roles
but are not diagnostic — the manuscript explicitly distinguishes consistent
patterns from forensic proof.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-008](../analyses/an-008-pbu-characterization.md) (FL characterization) | Direct | done | Cohen's d +0.67 tenders, +1.00 unique winners |
| [AN-009](../analyses/an-009-network-hhi.md) (network proximity + HHI) | Direct | done | Cobidder HHI 0.380 vs 0.288 (d = +0.39); FL-winner HHI 0.178 vs 0.303 |
| [AN-024](../analyses/an-024-unified-mechanism.md) (unified mechanism) | Supports | done | Profile descriptive — drop "assinatura de cartel" framing |
| [AN-028](../analyses/an-028-exposure-stratum-balance.md) (within-FL standardized diffs) | Direct | done | 7 dimensions, Cohen's d 0.19–1.00 vs FL_non_cobidder; all Wilcoxon p < 10⁻⁵ |
| [AN-031](../analyses/an-031-bid-level-behavioral-profile.md) (bid-level behavior) | Direct | done | Cobidder median gap-to-winner 0.582 vs FL 0.809 (d = −0.28, p < 10⁻⁶); bid-level signal beyond volume |
| [AN-021](../analyses/an-021-first-time-fl-matching.md) (first-time FL — demoted) | Against | done | +0.062 (p = 0.312) under PS matching; demoted to appendix |
| [AN-032](../analyses/an-032-matched-heterogeneity-audit.md) (matched-heterogeneity audit) | Against | done | Quadrant heterogeneity attenuates under matching: Low-Low loses significance (p 0.048 → 0.227) |

## Open tests

- Robustness to alternative cobidder definitions.
- Heterogeneity within FL stratum by sub-period.
- Bid-level moments under volume-matched specification — does the
  d = −0.28 median-gap signal of [AN-031](../analyses/an-031-bid-level-behavioral-profile.md)
  survive PS matching on `tenders_count`? This is the strongest
  remaining within-data audit for the *causal* distinctness claim.

## Why not 🟢 Confirmed?

H5 has a different boundary than H1, H3, H4 because the descriptive
distinctness is genuinely a within-FL volume effect for most channels.
Three obstacles to Confirmed:

1. **Volume-confound at the firm level**. The quadrant heterogeneity
   ([AN-032](../analyses/an-032-matched-heterogeneity-audit.md))
   attenuates by 26–35% under PS matching on `tenders_count`. The
   first-time-FL channel ([AN-021](../analyses/an-021-first-time-fl-matching.md))
   loses significance entirely. Within-FL distinctness IS largely a
   volume effect — and that is honestly reported.

2. **Single behavioral residual**. What survives matching is the
   bid-level conduct ([AN-031](../analyses/an-031-bid-level-behavioral-profile.md)):
   median gap-to-winner d = −0.28. This is one channel; would need
   independent confirmation from another behavioral dimension (e.g.,
   timing of bid submission, inter-bid intervals, distance from
   reference price) before claiming bid-conduct distinctness is
   robust.

3. **No non-BEC replication**. Same boundary as H1, H3, H4 — without
   replicating on a non-BEC procurement panel, the bid-level signature
   could reflect a feature of the BEC mechanism rather than
   loser-role behavior in general.

Until both the within-data causal identification and the cross-data
replication exist, H5 stays at **Partial (strongly supported)**:
descriptive distinctness is robust; causal-mechanistic distinctness
is contingent on a single bid-level residual and one negative finding
(matched heterogeneity).
