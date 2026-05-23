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
    Within the frequent-loser group, are cobidders qualitatively different from other firms in the same group, or are they just the highest-volume members? Descriptively, cobidders are distinct across seven dimensions with large effect sizes. Cobidders do bid in ~1.8× more tenders — so the obvious worry is that the distinctness is just volume. The volume-matched audit (AN-041) settles it: matching cobidders to non-cobidder FLs on participation count, the profile distinctness survives and several dimensions *strengthen* (product specialization, winner-pair spread, bid proximity to the winner) — it is not a volume artifact. Two things do not survive: the bid-dispersion sub-signal (a volume artifact) and the across-cell price/mechanism heterogeneity (AN-032). Honest mixed reading: the firm-level profile distinctness is robust to volume; the causal-mechanistic price story and the first-time-FL channel remain the negatives that keep H5 mixed.


> **Evidence strength: Mixed.**
> Firm-level profile distinctness is robust across many dimensions and
> survives volume matching; the across-cell price/mechanism heterogeneity
> and the first-time-FL channel do not. Seven lines of evidence:
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
> (vii) **Volume-matched profile audit** ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)):
> matching cobidders to FL non-cobidders on `tenders_count`
> (SMD 0.49 → 0.00), product-portfolio HHI (d +0.47), winner-pair spread
> (−0.56), and median gap-to-winner (−0.25) hold or strengthen — the
> distinctness is not a volume artifact. The AN-031 bid-dispersion
> elevation collapses (sd_gap +0.05, p = 0.87) and is dropped.
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
| [AN-041](../analyses/an-041-volume-matched-cobidder-audit.md) (volume-matched profile audit) | Supports | done | Profile distinctness survives PS matching on tenders_count (SMD 0.49 → 0.00): HHI d +0.47, repeat-spread −0.56, median gap −0.25 all hold or strengthen. Casualty: bid-dispersion (sd_gap) collapses to +0.05 (n.s.) — was a volume artifact |

## Open tests

- Robustness to alternative cobidder definitions.
- Heterogeneity within FL stratum by sub-period.
- Bid-timing / inter-bid-interval moments under the same volume match — a
  second behavioral channel beyond gap-to-winner. The volume-matched
  median-gap audit itself is now done
  ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): the
  median-gap signal survives PS matching on `tenders_count`.

## Why not 🟢 Confirmed?

H5 has a different boundary than H1, H3, H4 because the descriptive
distinctness is genuinely a within-FL volume effect for most channels.
Three obstacles to Confirmed:

1. **The negatives are mechanism, not profile**. The firm-level profile
   distinctness survives volume matching
   ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): product
   specialization, winner-pair spread, and bid proximity to the winner hold
   or strengthen after matching on `tenders_count` (SMD 0.49 → 0.00). What
   does NOT survive is (a) the across-cell price/mechanism heterogeneity —
   the quadrant interaction ([AN-032](../analyses/an-032-matched-heterogeneity-audit.md))
   attenuates 26–35% and Low-Low loses significance — and (b) the
   first-time-FL channel ([AN-021](../analyses/an-021-first-time-fl-matching.md)),
   which loses significance entirely. The profile is a distinct firm type;
   the *mechanistic price story* is what the data do not pin down.

2. **Single surviving bid-conduct channel**. The participation-profile
   dimensions (HHI, winner-pair spread) survive matching
   ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)), but the
   only *bid-conduct* signal that survives is the median gap-to-winner
   ([AN-031](../analyses/an-031-bid-level-behavioral-profile.md): d = −0.28
   raw, −0.25 volume-matched). Its companion — the within-firm bid
   dispersion — collapses to d = +0.05 (p = 0.87) under matching and is
   dropped. One surviving bid-conduct channel would need independent
   confirmation from another behavioral dimension (e.g., timing of bid
   submission, inter-bid intervals, distance from reference price) before
   claiming bid-conduct distinctness is
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
