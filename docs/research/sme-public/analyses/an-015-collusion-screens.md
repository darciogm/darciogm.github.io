---
id: an-015
hypothesis: no-collusion-confound
type: robustness
question: Do Conley-Decarolis close-pair and Bajari-Ye bid-coordination screens detect a post-policy intensification of bidder clustering that would invalidate the IPV-clock reading of Pregão drop-outs?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Both screens detect baseline clustering (realized > null in every cell) but no post-policy intensification. Conley-style close-pair: non-pharma share 16.9% → 16.8% (essentially flat, both above null ~10%); pharma 27.6% → 24.4% (falls). Bajari-Ye T1 ratio: non-pharma 2.63 → 1.83; pharma 1.29 → 1.11. Differential-coordination story rejected; the post-policy price increase is not produced by a new coordination shock among the surviving SME pool."
created: 2026-05-21
script: v7-jpube-tight/scripts/58_collusion_screen.R
target: v7-jpube-tight/output/collusion_screens.parquet
tags: ["H:no-collusion-confound", "H:ipv-clock-admissible", collusion, bajari-ye, conley-decarolis, screens, lands-clean]
design:
  sample: "BEC Pregão bid logs spanning March 2018; classes = non-pharma standardized, pharma"
  specification: "Two screens: (1) Conley-Decarolis (2016) close-pair clustering — share of realized firm pairs with abnormally close bids vs a permutation null; (2) Bajari-Ye (2003) T1 ratio — observed-to-null moment ratio on residual bid co-movement"
  source_panel: "BEC event log"
  notes: "Identifying question: not whether coordination exists (baseline clustering is real), but whether it *intensifies* post-cutoff"
---

# AN-015: Classical bid-coordination screens

!!! abstract "Intuition (plain-language)"
    If the price rise were really the surviving SME pool quietly coordinating, the drop-out-as-cost reading would collapse. Standard collusion screens look for a post-policy jump in suspicious bid-clustering. There is baseline clustering but no post-policy intensification, so a new coordination shock is not driving the result.

## Question

The structural decomposition rests on the maintained IPV-clock
interpretation of Pregão drop-outs
([H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)). If
bidder coordination intensifies across the March 2018 policy break —
because the smaller eligible SME pool meets the same competitors more
often — drop-outs are strategically suppressed in the post-period and
the IPV reading breaks down. The identifying question is **narrower**
than "is there coordination": baseline clustering is endemic in
procurement. The question is whether clustering *intensifies* after
non-SMEs are removed.

## Design

- **Sample**: BEC Pregão bid logs spanning the policy break;
  non-pharma standardized and pharma cells separately.
- **Variation**: pre-policy vs post-policy bidder pools in switched
  group 65.
- **Specification**:
  - **Conley-Decarolis (2016) close-pair screen**
    (`v7-jpube-tight/scripts/58_collusion_screen.R`,
    `59_collusion_screen_schurter.R`): share of firm pairs with
    abnormally close residual bids ("close" = within a calibrated bid
    distance after partialling out auction-level controls). The
    realized share is compared against a permutation null mean drawn
    by re-shuffling firm pairs across auctions.
  - **Bajari-Ye (2003) T1 ratio**
    (`v7-jpube-tight/scripts/60_collusion_screen_bajari_ye.R`):
    observed-to-null moment ratio on residual bid co-movement;
    a ratio above 1 indicates clustering, with stronger ratios
    signaling tighter coordination.
  - **Pair-classification cross-check**
    (`v7-jpube-tight/scripts/61_collusion_screen_pair_classcond.R`):
    persistent co-bidding pairs are flagged and their coordination
    signatures (within-auction bid dispersion, exit-order patterns)
    tested for pre-vs-post invariance.
- **Outcomes**: realized share vs null mean (Conley), T1 ratio
  (Bajari-Ye), per period × class.

## Results

**Conley-Decarolis close-pair shares** (%, realized vs permutation null):

| Class | Pre realized | Pre null | Post realized | Post null | Δ realized |
|---|---:|---:|---:|---:|---:|
| Non-pharma | 16.9 | 10.6 | 16.8 | 10.2 | **−0.1 (flat)** |
| Pharma     | 27.6 | 16.3 | 24.4 | 14.4 | **−3.2 (falls)** |

Realized shares exceed the null in every cell (baseline clustering is
real). But the realized share is *flat* in non-pharma (16.9 → 16.8) and
*falls* in pharma (27.6 → 24.4) post-cutoff. The pharma drop in null
mean (16.3 → 14.4) tracks the realized drop — i.e., the screen's
permutation distribution shifts proportionally as the auction-pool
composition changes; the *gap* between realized and null is stable.

**Bajari-Ye T1 ratios** (observed / null):

| Class | Pre ratio | Post ratio | Δ ratio |
|---|---:|---:|---:|
| Non-pharma | 2.63 | 1.83 | **−0.80** |
| Pharma     | 1.29 | 1.11 | **−0.18** |

Both ratios *fall* post-cutoff. The non-pharma fall is large
(31% reduction). The pharma ratio is close to 1 in both periods
(consistent with a sparser, less-connected bidder pool to begin with).

Output: `v7-jpube-tight/output/collusion_screens.parquet`; documented in
`paper_v8.tex` §6.4 (Coordination).

## Interpretation

**The screens land clean for the differential question.** If the
post-policy price increase came from a new coordination shock among
the surviving SME pool, both screens should *intensify* post-cutoff —
Conley realized share should rise, Bajari-Ye ratio should rise. Neither
does. The non-pharma Conley realized share is essentially unchanged
(−0.1 pp); the pharma realized share *falls* by 3.2 pp; both Bajari-Ye
ratios *fall*. The differential-coordination explanation for the
exclusion-dominant decomposition is rejected.

**What the screens do not say.** They do not show that baseline
clustering is absent. It is not: realized shares are 1.6–1.9× the
null mean in non-pharma and 1.7× in pharma. The IPV-clock interpretation
of drop-outs is *not literally* the dominant strategy played by
every bidder; what the screens do is rule out the specific threat that
the post-policy environment generated *more* coordination, which is
the threat that would mechanically produce the exclusion-dominant
decomposition through bid suppression rather than through the type-cost
gradient.

Confidence: **yellow.** The differential null is clean and load-bearing
for [H:no-collusion-confound](../hypotheses/no-collusion-confound.md);
the screens come back invariant or falling post-cutoff. The reading
remains yellow rather than green because (i) the screens were
designed for a different institutional context (US highway, Italian
roads) and the BEC adaptation requires interpretation of test-statistic
baselines, (ii) residual baseline clustering remains a limitation
acknowledged in the paper, and (iii) the screens detect first-moment
clustering, not all conduct deviations from the IPV-clock benchmark.

## Follow-ups

- Buyer-level heterogeneity
  (`v7-jpube-tight/scripts/62_buyer_heterogeneity.R`): if differential
  coordination (if any) is concentrated in specific buyer types, the
  decomposition could still hold conditional on buyer characteristics.
- Within-firm bid-pattern stability: a within-firm DiD on bid moments
  would falsify the maintained IPV-clock reading at the individual-bidder
  level. Not yet specified as a standalone AN.
- Pair-classification AN: the pair-classification result deserves its
  own AN-page summary; currently bundled in this page's design.
