---
paper: frequent-losers
id: an-041
hypothesis: cobidder-profile-distinct
type: descriptive
question: Does the within-FL distinctness of cobidders (AN-028 participation dimensions, AN-031 bid-level gap-to-winner) survive holding participation volume fixed, or is it a raw tenders_count artifact? Match cobidders to FL non-cobidders on tenders_count and re-compute Cohen's d.
status: done
status_date: 2026-05-23
confidence: green
headline: "Profile distinctness survives volume matching and is NOT a tenders_count artifact. Cobidders bid in 1.8× more tenders (137 vs 77); after PS NN matching (SMD 0.489 → 0.002) the headline non-volume dimensions hold or strengthen: product-portfolio HHI d +0.40 → +0.47 (p < 10⁻⁸), winner-pair spread share_repeat_5 d −0.39 → −0.56 (p < 10⁻⁶), median gap-to-winner d −0.26 → −0.25 (p < 10⁻³). Two casualties: the AN-031 bid-dispersion elevation collapses (sd_gap d +0.16 → +0.05, p = 0.87 — a volume artifact) and unique_winners attenuates 1.01 → 0.37 (mostly volume). share_facing_direct_cade EXCLUDED as circular (cobidders are defined by direct-defendant adjacency). CEM corroborates all signs."
created: 2026-05-23
script: scripts/74_volume_matched_cobidder_audit.R
target: output/volume_matched_audit/matched_standardized_diffs.csv + balance.csv
tags: ["H:cobidder-profile-distinct", "H:exposure-discipline", volume-matching, propensity-score, cem, robustness, gap-to-winner]
design:
  sample: "Within-FL always-loser stratum: cobidders (treated, N = 190) vs FL non-cobidders (control, N = 2,542), direct CADE defendants removed from both classes. Bid-level dimensions on the subset with ≥ 5 usable losing bids (cob 180, ctrl 2,353)."
  specification: "Match on tenders_count (total_participations). M1 = nearest-neighbour 1:1 on logit propensity score, caliper 0.2 SD, no replacement (186/190 cob matched; 4 high-volume cob off-support). M2 = coarsened exact matching on tenders_count deciles, weighted. Cohen's d (pooled SD) and Wilcoxon rank-sum recomputed inside the matched sample for 10 dimensions; raw vs matched d compared as the attenuation diagnostic."
  notes: "Answers the Open-test flagged in H:cobidder-profile-distinct and H:exposure-discipline as 'the strongest remaining within-data audit for the causal distinctness claim'. share_facing_direct_cade is tautological (cobidder definition) and is reported but excluded from the verdict. This isolates the participation-volume confound only; it is descriptive, not a causal identification of cobidder status."
---

# AN-041: Volume-matched cobidder audit — does within-FL distinctness survive holding tenders_count fixed?

!!! abstract "Intuition (plain-language)"
    The hardest skeptical test of the profile: pair each cobidder with a non-cobidder frequent loser that bids in the *same* number of tenders, then re-measure the gaps. Most distinctness survives and some grows — product specialization and bidding-close-to-winner strengthen once volume is equalized, meaning volume had been *masking* them. One signal dies honestly: the elevated bid dispersion of AN-031 turns out to be a pure volume artifact. The cobidder type is real, but it is about *what and how they bid*, not merely *how much*.

## Question

AN-028 (seven participation dimensions, Cohen's d 0.19–1.00) and AN-031
(bid-level median gap-to-winner, d = −0.28) document that cobidders are
distinct from non-cobidder FLs. But cobidders also participate in ~1.8×
more tenders. Several of those dimensions — `unique_winners`,
`pairs_at_least_5`, `n_item_groups` — mechanically grow with the number of
bids. The question for H5 is whether the distinctness is anything *beyond*
participation volume. Does it survive matching cobidders to non-cobidder
FLs on `tenders_count`?

## Design

- **Sample.** Within-FL always-loser stratum, cobidder (treated, N = 190)
  vs FL non-cobidder (control, N = 2,542), direct CADE defendants removed
  from both classes so the treated group is the cover-bidder type, not
  adjudicated principals. Bid-level metrics on firms with ≥ 5 usable losing
  bids.
- **Matching variable.** `tenders_count` (= `total_participations`), the
  single volume axis the docs flag as the confound.
- **M1 — PS nearest-neighbour.** 1:1 on the logit propensity score of
  `tenders_count`, caliper 0.2 SD, no replacement. This is the "PS matching
  on `tenders_count`" the H5/H3 Open-tests ask for.
- **M2 — CEM.** Coarsened exact matching on `tenders_count` deciles,
  weighted, as a functional-form-free robustness estimator.
- **Outcome.** Cohen's d (pooled SD) and Wilcoxon rank-sum recomputed inside
  the matched sample, compared to the raw (unmatched) d. A dimension whose
  |d| holds or grows is distinct beyond volume; one that collapses toward
  zero was a volume artifact.

## Results

**Balance.** Cobidders bid in 1.8× more tenders than controls (mean 136.7
vs 76.8; raw SMD 0.489). M1 matching equalizes volume almost exactly
(122.4 vs 122.2; SMD **0.002**), retaining 186/190 cobidders. The 4
unmatched cobidders are off-support — high-volume cobidders with no FL
non-cobidder bidding as much, which is itself evidence that the upper
volume tail is cobidder-specific. CEM SMD 0.114.

**Standardized differences (Cohen's d: cobidder vs FL non-cobidder).**

| Dimension | Kind | d raw | d M1 (PS) | d M2 (CEM) | Wilcoxon p (M1) | Verdict |
|---|---|--:|--:|--:|--:|---|
| `item_group_HHI` | product specialization | +0.396 | **+0.466** | +0.409 | 6.1 × 10⁻⁹ | survives, strengthens |
| `share_repeat_5` | winner-pair spread | −0.386 | **−0.563** | −0.487 | 3.3 × 10⁻⁷ | survives, strengthens |
| `median_gap_to_winner` | bid proximity to winner | −0.261 | **−0.246** | −0.202 | 6.6 × 10⁻⁴ | survives (mild attenuation) |
| `n_item_groups` | breadth (volume-ish) | −0.315 | −0.579 | −0.423 | — | survives, strengthens |
| `unique_winners` | volume-mechanical | +1.007 | +0.370 | +0.531 | — | mostly volume; residual +0.37 |
| `pairs_at_least_5` | volume-mechanical | +0.197 | −0.216 | −0.100 | — | sign flips; was volume |
| `sd_gap_to_winner` | bid dispersion | +0.157 | **+0.051** | +0.122 | 0.87 | **collapses — volume artifact** |
| `mean_gap_to_winner` | bid proximity | −0.142 | −0.192 | −0.104 | — | survives (weak) |
| `p75_gap_to_winner` | bid proximity | −0.133 | −0.137 | −0.086 | — | survives (weak) |
| `share_facing_direct_cade` | **circular** | +0.534 | +0.593 | +0.592 | — | **excluded (tautological)** |

## Interpretation

**The profile distinctness is not a volume artifact.** The three headline
non-volume dimensions — product-portfolio concentration
(`item_group_HHI`), winner-pair spread (`share_repeat_5`), and bid
proximity to the winner (`median_gap_to_winner`) — all survive volume
matching, and the two participation-portfolio dimensions *strengthen* once
volume is equalized. Matching makes the controls high-volume FL
non-cobidders; the fact that the gap widens means participation volume was
partially *masking* the distinctness, not generating it. M1 and M2 agree on
every sign.

**The cover-bidder profile that survives is "specialist broker", not
"repeat colluder".** Cobidders concentrate in a narrower set of product
groups (HHI up, n_item_groups down) while spreading across *more* distinct
winners with *lower* concentration in any single repeat-pair
(`share_repeat_5` down, `unique_winners` up). This is the opposite of a
naive "bids repeatedly against the same winner" reading and should be
described as product specialization with broad winner exposure.

**Two honest casualties.** (1) The bid-dispersion elevation reported in
AN-031 (`sd_gap` d = +0.15) does **not** survive PS matching (d = +0.05,
p = 0.87) — it was a volume artifact and should be dropped from the
distinctness claim. (2) `unique_winners` attenuates from a very large
d = 1.01 to +0.37; most of the "crosses more winners" gap is volume, with a
modest residual.

**One dimension excluded.** `share_facing_direct_cade` (d ≈ +0.53–0.59) is
circular: cobidders are *defined* as always-losers that bid alongside
direct CADE defendants, so this dimension is tautological and carries no
information about distinctness.

This audit isolates the participation-volume confound only. It is a matched
descriptive comparison, not a causal identification of cobidder status; the
distinctness is associational and single-source (BEC × CADE).

## Bearing on hypotheses

- **H:cobidder-profile-distinct (H5).** Resolves the headline Open-test
  affirmatively for product specialization, winner-pair spread, and
  bid-proximity; refutes the bid-dispersion sub-signal. The earlier reading
  that within-FL distinctness "is largely a volume effect" is too strong:
  the profile distinctness survives volume matching. H5's remaining limits
  are the mechanism-heterogeneity negative ([AN-032](an-032-matched-heterogeneity-audit.md))
  and the first-time-FL channel ([AN-021](an-021-first-time-fl-matching.md)),
  not the profile distinctness — keep H5 **Mixed** but on revised grounds.
- **H:exposure-discipline (H3).** Strengthens: the within-stratum
  concentration documented in [AN-028](an-028-exposure-stratum-balance.md)
  is not driven by participation volume.

## Follow-ups

- Bid-timing and inter-bid-interval moments under the same volume match —
  a second behavioral channel beyond gap-to-winner would lift the
  bid-conduct claim above a single residual.
- Multivariate matched logit (cobidder on HHI + gap + repeat, holding
  tenders_count) to confirm the dimensions are jointly, not just
  marginally, distinct.
- Cross-jurisdiction replication (ComprasNet) — the same volume-matched
  profile on a non-BEC panel is the path to promoting H5 distinctness
  beyond single-source.
- Macros for the manuscript: `\valVMHHId` (= +0.47), `\valVMRepeatd`
  (= −0.56), `\valVMGapd` (= −0.25), `\valVMSdGapd` (= +0.05, ns),
  `\valVMBalRaw` (= 0.49), `\valVMBalMatched` (= 0.00) if §5 cites the
  audit.
