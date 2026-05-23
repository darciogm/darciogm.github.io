---
paper: frequent-losers
id: h5
slug: cobidder-profile-distinct
title: "FL cobidders are economically distinct from other frequent losers"
cluster: C
paper_section: "§5"
status: partial (strongly supported)
last_updated: 2026-05-23
---

# H:cobidder-profile-distinct — FL cobidders are economically distinct from other frequent losers

If the frequent-loser ranking captures more than raw participation
intensity, then cobidders inside the FL stratum should look different from
other firms in the same stratum along economically meaningful dimensions:
buyer-portfolio breadth, product-portfolio concentration, proximity to
legal cartel anchors, and bid-level behavior consistent with credible
losing roles.

!!! abstract "Intuition (plain-language)"
    Within the frequent-loser group, are cobidders qualitatively different from other firms in the same group, or are they just the highest-volume members? The robust answer is **structural**: cobidders specialize in narrower product portfolios, spread across more distinct winners, sit closer to legal cartel anchors, and bid closer to the winning price. Cobidders bid in ~1.8× more tenders, so the obvious worry is volume — but the volume-matched audit (AN-041) settles it: matching on participation count (SMD 0.49 → 0.00), the structural distinctness *holds or strengthens*. That is the strongly-supported core. The bid-conduct side is narrower and honestly bounded: one channel survives (bidding closer to the winner), while the bid-dispersion sub-signal (AN-041) and the bid-timing channel (AN-042) are documented nulls. The remaining negatives — the across-cell price/mechanism heterogeneity (AN-032) and the first-time-FL channel (AN-021) — are about a *causal-mechanism* reading the hypothesis does not assert, not about the structural distinctness. Promotion beyond strongly-supported needs non-BEC replication.


> **Evidence strength: Partial (strongly supported).**
> The structural/profile distinctness is robust across many dimensions and
> survives volume matching (the strongly-supported core). The bid-conduct
> side is one surviving channel with two documented nulls; the across-cell
> price/mechanism heterogeneity and the first-time-FL channel are scope
> limits on a causal-mechanism reading the hypothesis does not assert.
> Eight lines of evidence:
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
> structural distinctness is not a volume artifact. The AN-031 bid-dispersion
> elevation collapses (sd_gap +0.05, p = 0.87) and is dropped.
> (viii) **Volume-matched timing audit** ([AN-042](../analyses/an-042-volume-matched-timing-audit.md)):
> a candidate *second* bid-conduct channel — pregão bid timing (revision
> intensity, inter-bid interval, last-bid position, engagement span) — does
> NOT survive matching (all Wilcoxon p ≥ 0.23). Documented null: the
> bid-conduct distinctness stays single-channel (gap-to-winner).
> The strongly-supported core is the structural distinctness; promotion to
> 🟢 (**Confirmed**) requires non-BEC replication (the binding constraint,
> as for every other hypothesis), since the claim is descriptive and
> single-source.

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
| [AN-021](../analyses/an-021-first-time-fl-matching.md) (first-time FL — demoted) | Scope (mechanism) | done | +0.062 (p = 0.312) under PS matching; a causal-channel extension that does not survive — not the structural distinctness claim |
| [AN-032](../analyses/an-032-matched-heterogeneity-audit.md) (matched-heterogeneity audit) | Scope (mechanism) | done | Across-cell price/mechanism heterogeneity attenuates under matching: Low-Low loses significance (p 0.048 → 0.227). Bounds the mechanism reading, not the profile |
| [AN-041](../analyses/an-041-volume-matched-cobidder-audit.md) (volume-matched profile audit) | Direct | done | Structural distinctness survives PS matching on tenders_count (SMD 0.49 → 0.00): HHI d +0.47, repeat-spread −0.56, median gap −0.25 all hold or strengthen. Casualty: bid-dispersion (sd_gap) collapses to +0.05 (n.s.) — a volume artifact |
| [AN-042](../analyses/an-042-volume-matched-timing-audit.md) (volume-matched timing audit) | Null (bid-conduct) | done | Candidate 2nd bid-conduct channel: pregão bid timing does NOT survive matching (all Wilcoxon p ≥ 0.23). Bid-conduct distinctness stays single-channel (gap-to-winner) |

## Open tests

- Robustness to alternative cobidder definitions.
- Heterogeneity within FL stratum by sub-period.
- Bid-timing / inter-bid-interval moments under volume matching — **done**
  ([AN-042](../analyses/an-042-volume-matched-timing-audit.md)): a candidate
  second bid-conduct channel that returns a **null**, so the bid-conduct
  distinctness stays single-channel (gap-to-winner, AN-041). The structural
  distinctness remains the strongly-supported core.
- Non-BEC replication (ComprasNet) of the structural distinctness — the
  binding path to 🟢 Confirmed.

## Why not 🟢 Confirmed?

H5 is at **Partial (strongly supported)** on the structural distinctness:
that core survives the strongest within-data audit (volume matching) across
multiple dimensions. Confirmed is blocked by the same constraint as every
other hypothesis — non-BEC replication — and the bid-conduct side is
honestly narrower than the structural side.

1. **The negatives are about mechanism, not the profile**. The structural
   distinctness survives volume matching
   ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): product
   specialization, winner-pair spread, and bid proximity to the winner hold
   or strengthen after matching on `tenders_count` (SMD 0.49 → 0.00). What
   does NOT survive is (a) the across-cell price/mechanism heterogeneity —
   the quadrant interaction ([AN-032](../analyses/an-032-matched-heterogeneity-audit.md))
   attenuates 26–35% and Low-Low loses significance — and (b) the
   first-time-FL channel ([AN-021](../analyses/an-021-first-time-fl-matching.md)),
   which loses significance entirely. These bound a *causal-mechanism*
   reading the hypothesis does not assert; the structural firm-type
   distinctness stands.

2. **Bid-conduct distinctness is single-channel**. The only *bid-conduct*
   signal that survives matching is the median gap-to-winner
   ([AN-031](../analyses/an-031-bid-level-behavioral-profile.md): d = −0.28
   raw, −0.25 volume-matched). Two candidate companions are documented
   nulls: the within-firm bid dispersion collapses to d = +0.05 (p = 0.87,
   [AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)), and the
   bid-timing battery (revision intensity, inter-bid interval, last-bid
   position, engagement span) does not survive matching
   ([AN-042](../analyses/an-042-volume-matched-timing-audit.md): all
   Wilcoxon p ≥ 0.23). The distinctness is therefore structural, not a
   multi-channel behavioral signature.

3. **No non-BEC replication** — the binding Confirmed constraint. Same
   boundary as H1, H3, H4: the claim is descriptive and single-source
   (BEC × CADE), so the structural signature could reflect a feature of the
   BEC mechanism rather than loser-role behavior in general. ComprasNet (or
   another panel) is the path to 🟢.

H5 stays at **Partial (strongly supported)**: the structural distinctness
is robust and survives volume matching; the bid-conduct side is one channel
with two documented nulls; and Confirmed awaits non-BEC replication.
