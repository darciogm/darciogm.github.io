---
paper: sme-public
id: an-015
hypothesis: no-collusion-confound
type: robustness
question: Do Bajari-Ye, Schurter, and pair-classification bid-coordination screens flag a post-policy change in bidder coordination that would invalidate the IPV-clock reading?
status: pending
created: 2026-05-21
script: v7-jpube-tight/scripts/58_collusion_screen.R
target: v7-jpube-tight/output/collusion_screens.parquet
tags: ["H:no-collusion-confound", "H:ipv-clock-admissible", collusion, bajari-ye, schurter, pair-classification, screens]
design:
  sample: "BEC Pregão bid logs spanning March 2018; classes = non-pharma standardized, pharma"
  specification: "Three screens applied separately: (1) Bajari-Ye residual bid correlation, (2) Schurter test-statistic distribution, (3) pair-classification on persistent co-bidding pairs"
  source_panel: "BEC event log"
  notes: "Load-bearing for the IPV-clock interpretation of drop-outs"
---

# AN-015: Classical bid-rigging screens

## Question

The structural decomposition rests on the maintained IPV-clock
interpretation of Pregão drop-outs as willingness-to-supply
observations. If bidder coordination shifted across the March 2018
policy break (e.g., because the smaller eligible SME pool meets the
same competitors more often), drop-outs are strategically suppressed
in the post-period and the IPV reading breaks down. Three classical
screens test for such a coordination shift.

## Design

- **Sample**: BEC Pregão bid logs spanning the policy break; non-pharma
  and pharma cells.
- **Variation**: pre-policy vs post-policy bidder pools.
- **Specification**:
  - **Bajari-Ye** (`v7-jpube-tight/scripts/60_collusion_screen_bajari_ye.R`):
    residual bid correlation across firm pairs after controlling for
    auction-level fixed effects and observable covariates. A
    discontinuous shift across the break flags a coordination shift.
  - **Schurter** (`v7-jpube-tight/scripts/59_collusion_screen_schurter.R`):
    test-statistic distribution comparison pre vs post.
  - **Pair classification**
    (`v7-jpube-tight/scripts/61_collusion_screen_pair_classcond.R`):
    persistent co-bidding firm pairs are flagged; their coordination
    signatures (within-auction bid dispersion, exit-order patterns)
    are tested for pre-vs-post invariance.
- **Outcomes**: per-screen test statistic distribution; pre-vs-post
  flag rates.

## Results

> *Pending — screens are partly run but not yet documented here. The
> result that needs to land is **invariance across the policy break**:
> if test-statistic distributions are stable, the IPV-clock reading
> survives; if they shift discontinuously, the decomposition becomes a
> bid-shift re-weighting.*

## Interpretation

> *Pending. The most-informative reading is whether the screens detect
> any post-policy increase in coordination indicators. A null result
> (no shift) is the load-bearing finding for
> [H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md);
> a positive result (coordination tightens post-policy) would require
> reframing the decomposition.*

Confidence: **pending.**

## Follow-ups

- Buyer-level cross-cut
  (`v7-jpube-tight/scripts/62_buyer_heterogeneity.R`): if coordination
  shifts (if any) are concentrated in specific buyer types, the
  IPV-clock reading may still hold conditional on buyer characteristics.
- Within-firm bid-pattern stability: if individual firms' drop-out
  behavior is strategic, within-firm bid-cost distributions should
  shift discontinuously across the break. A within-firm DiD on bid
  moments would be a clean falsification.
- Cross-screen agreement: do the three screens point in the same
  direction? If Bajari-Ye flags a shift but Schurter doesn't, the
  reading depends on which screen is more powerful in this setting.
