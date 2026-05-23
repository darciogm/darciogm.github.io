---
paper: frequent-losers
id: an-042
hypothesis: cobidder-profile-distinct
type: descriptive
question: Are cobidders distinct from non-cobidder FLs on bid TIMING (revision intensity, inter-bid interval, last-bid position, engagement span), and does any timing dimension survive volume matching on tenders_count? I.e., is there a SECOND bid-conduct channel beyond the median gap-to-winner?
status: done
status_date: 2026-05-23
confidence: yellow
headline: "NULL result. Under PS matching on tenders_count (SMD 0.40 → 0.00, 183 matched pairs), no pregão timing dimension distinguishes cobidders from non-cobidder FLs at the conventional bar: revision intensity d_M1 = -0.20 (Wilcoxon p = 0.86), inter-bid interval +0.05 (p = 0.96), last-bid position +0.11 (p = 0.64), engagement span -0.31 (p = 0.23). The two largest effects (cobidders revise less and disengage earlier) are directionally cover-bidding-consistent but the rank-sum tests do not reject — the Cohen's d is tail-driven, not a clean distributional shift. There is NO second bid-conduct channel; the bid-conduct distinctness of cobidders remains single-channel (median gap-to-winner, AN-031/AN-041), with both the dispersion sub-signal (AN-041) and now timing as documented nulls."
created: 2026-05-23
script: scripts/75_volume_matched_timing_audit.R
target: output/volume_matched_timing/timing_standardized_diffs.csv + timing_balance.csv
tags: ["H:cobidder-profile-distinct", timing, bid-conduct, volume-matching, null-result, propensity-score, cem]
design:
  sample: "Within-FL always-loser stratum, cobidder (treated) vs FL non-cobidder (control), direct CADE removed; restricted to firms with >= 5 PREGÃO tender-items (cob 187, ctrl 1,946). Pregão only, where real-time revision dynamics exist (100% timestamp coverage; mean 3.76 bids per firm-item, 49.8% multi-bid)."
  specification: "Per-firm pregão timing metrics from Data Hr Proposta: mean bids per item (revision intensity); median inter-bid interval = firm_span/(nb-1), log1p-transformed; mean normalized position of the firm's last bid in the tender's bidding window [0,1]; mean engagement-span fraction [0,1]. Match cobidder vs FL non-cobidder on tenders_count (total_participations): M1 = PS nearest-neighbour 1:1, caliper 0.2 SD; M2 = CEM on deciles. Cohen's d (pooled SD) and Wilcoxon rank-sum recomputed in the matched sample."
  notes: "Designed as the candidate SECOND bid-conduct channel for H5. It does not materialize. Reported as an honest null that bounds the bid-conduct distinctness claim to one channel."
---

# AN-042: Volume-matched timing audit — is there a second bid-conduct channel?

!!! abstract "Intuition (plain-language)"
    [AN-041](an-041-volume-matched-cobidder-audit.md) showed cobidders are a distinct within-stratum *pattern* (product specialization, winner spread, bidding closer to the winner) that survives matching on participation volume. But the only *bid-conduct* signal that survived was the median gap-to-winner — one channel. A single behavioral channel is thin. This page asks whether cobidders also *bid on a different clock* — revising less, spacing bids differently, finishing earlier — and whether that survives volume matching. The answer is no: the timing differences are small and statistically indistinguishable once volume is held fixed. The distinctness of cobidders is structural (what they bid on, how close to the winner), not a timing signature.

## Question

H5's bid-conduct distinctness rests on a single surviving channel (median
gap-to-winner). A second, orthogonal behavioral channel would lift the
bid-conduct claim above one residual. Bid *timing* is the natural
candidate: in pregão's real-time auction, a cover bidder placing token
bids might revise less, disengage earlier, or bid on a characteristic
rhythm. Do cobidders differ on timing, and does it survive matching on
`tenders_count`?

## Design

- **Sample.** Within-FL stratum, cobidder vs FL non-cobidder, direct CADE
  removed; firms with $\geq 5$ pregão tender-items (cob 187, ctrl 1,946).
  Pregão only — convite is sealed-bid, so revision/timing dynamics are
  degenerate there.
- **Metrics** (per firm, from `Data Hr Proposta`): revision intensity
  (mean bids/item), median inter-bid interval (log), last-bid position in
  the tender's bidding window $[0,1]$, engagement-span fraction $[0,1]$.
- **Matching.** Identical to AN-041: cobidder vs FL non-cobidder on
  `tenders_count`; M1 PS nearest-neighbour caliper 0.2, M2 CEM deciles.

## Results

Balance: tenders_count SMD 0.398 → **0.002** (M1), 183 matched pairs.

| Timing dimension | d raw | d M1 (PS) | d M2 (CEM) | Wilcoxon p (M1) |
|---|--:|--:|--:|--:|
| Revision intensity (bids/item) | −0.002 | −0.202 | −0.177 | 0.86 |
| Inter-bid interval (log s) | −0.081 | +0.054 | −0.032 | 0.96 |
| Last-bid position in window | +0.167 | +0.105 | +0.058 | 0.64 |
| Engagement-span fraction | −0.197 | −0.310 | −0.295 | 0.23 |

**No timing dimension clears `|d| ≥ 0.2` and `p < 0.05` after matching.**

## Interpretation

**The second channel does not exist.** The two largest matched effects ---
cobidders revise *less* (revision intensity d ≈ −0.20) and disengage
*earlier* (engagement-span d ≈ −0.31) --- point in the direction a
token-cover-bidding story would predict, but neither rank-sum test rejects
the null (p = 0.86 and 0.23). The Cohen's $d$ is driven by the tails of a
non-normal, bounded distribution rather than by a central shift, so the
distribution-free test --- the standard used throughout this project ---
returns no significant difference. We report the null straight.

**Consequence for the bid-conduct claim.** Cobidders' bid-conduct
distinctness is **single-channel**: the median gap-to-winner
([AN-031](an-031-bid-level-behavioral-profile.md),
[AN-041](an-041-volume-matched-cobidder-audit.md)) survives volume
matching, but both the within-firm dispersion sub-signal (AN-041) and the
timing channel (this page) are documented nulls. The distinctness of
cobidders is therefore **structural** --- product specialization, winner
spread, proximity to the winning bid --- not a behavioral timing signature.

## Bearing on hypotheses

- **H:cobidder-profile-distinct (H5).** Bounds the claim: the
  *profile/structural* distinctness is robust to volume (AN-041); the
  *bid-conduct* distinctness is one channel, not two. The promotion case
  for H5 rests on the profile leg, not on a multi-channel behavioral
  signature. Reported as a scope limit, not as support.

## Follow-ups

- Within-tender bid-sequence shape (monotone undercut vs erratic) under the
  same match — a finer timing object than the four moments here; lower
  priority given the null.
- Cross-jurisdiction replication (ComprasNet): whether the structural
  distinctness (not timing) reproduces on a non-BEC panel is the path to
  Confirmed.
