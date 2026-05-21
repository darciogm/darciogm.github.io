---
paper: sme-public
id: h12
slug: no-collusion-confound
title: "The price drop is not produced by a post-policy shift in bidder coordination"
cluster: D
paper_section: "§6.4"
status: partial
last_updated: 2026-05-21
---

# H:no-collusion-confound — The price drop is not produced by a post-policy shift in bidder coordination

The structural decomposition reads drop-out prices as willingness-to-supply
observations under the maintained IPV-clock interpretation
([H:ipv-clock-admissible](ipv-clock-admissible.md)). If bidder coordination
loosened or tightened around the March 2018 policy break — for instance
because the smaller eligible SME pool repeatedly meets the same competitors
— the drop-out distribution no longer reads as cost; it reads as strategic
bid behavior. The decomposition would then become a price-forming
*re-weighting* exercise rather than a structural counterfactual. Classical
bid-rigging screens (Bajari-Ye, Schurter, pair classification) test
whether such a coordination shift is detectable in the data.

> **Evidence strength: Partial (toward Supports).** Both classical
> screens land clean for the differential question.
> [AN-015](../analyses/an-015-collusion-screens.md) reports:
> Conley-Decarolis close-pair share is **flat** in non-pharma
> (16.9% → 16.8%, both well above null ~10%) and **falls** in pharma
> (27.6% → 24.4%); Bajari-Ye T1 ratios **fall** in both classes
> (NP 2.63 → 1.83; PH 1.29 → 1.11). The post-policy price increase is
> *not* produced by a new coordination shock among the surviving SME
> pool. Yellow because the screens were designed for other
> institutional contexts and residual baseline clustering remains
> acknowledged as a limitation.

## Theory

Classical bid-rigging detection (Porter and Zona 1993, 1999; Bajari and
Ye 2003; Schurter 2017; Conley and Decarolis 2016) tests for
coordination signatures in observed bidding patterns: low bid
dispersion within auctions, persistent firm-pair co-bidding clusters,
deviations from independent rationality in residual bids. The screens
were designed for first-price auctions but transfer to English-clock
drop-out data under the IPV reading. A *change* in screen flags across
the policy break would indicate the maintained IPV restriction is
unstable.

## Prediction

The screens should show *no significant shift* in bidder-coordination
flags between the pre-policy and post-policy bidder pools. Specifically:
- *Bajari-Ye*: residual bid correlation across firm pairs should not
  shift discontinuously around March 2018.
- *Schurter*: the test-statistic distribution should be invariant
  pre-vs-post.
- *Pair classification*: persistent co-bidding pairs should not exhibit
  systematically different coordination signatures pre-vs-post.

## Competing prediction

**Coordination shift drives the result.** If the smaller post-policy
SME pool exhibits more cover-bidding (perhaps because the eligible
firms meet each other more often), drop-outs are strategically
suppressed in the post-period. The decomposition's $S_3$ then *understates*
the true willingness-to-supply distribution, and the
"protected-pool offset" reading collapses into a coordination artifact.
This is the load-bearing alternative.

## Setting evidence

Post-policy SME pool composition can be tracked at the CNPJ-pair level
using the BEC participation logs. The same firms repeatedly meet across
items; the question is whether their relative drop-out patterns shift
across the break.

## Empirical test

- *Outcome variables*: per-screen test statistic distributions
  (Bajari-Ye, Schurter, pair-classification), per period.
- *Variation*: pre-policy vs post-policy bidder pools in switched
  group 65.
- *Specification*: each screen applied separately; results pooled
  across screens.
- *Sample*: BEC Pregão bid logs spanning March 2018.

## Data requirements and limitations

The screens require the full bid-event log (already in
`v7-jpube-tight/`); the pair-classification screen also requires
firm-pair historical co-bidding. The screens were designed for
specific institutional contexts (Italian roads, US highway, etc.); the
São Paulo BEC adaptation requires careful interpretation of test-
statistic baselines.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-015](../analyses/an-015-collusion-screens.md) | Supports | Conley realized share flat NP (16.9→16.8) / falls PH (27.6→24.4); Bajari-Ye T1 falls in both (NP 2.63→1.83; PH 1.29→1.11). Differential-coordination shock rejected. |

## Open tests

### Within-firm bid-pattern stability

If individual firms' drop-out behavior is strategic-coordination
driven, within-firm bid-cost distributions should shift discontinuously
across the policy break. A within-firm DiD on bid moments would be a
clean falsification.

### Buyer-level heterogeneity

Some PBUs are more sophisticated than others. A buyer-level cross-cut
(`v7-jpube-tight/scripts/62_buyer_heterogeneity.R`) on the screens
would identify whether coordination shifts (if any) are concentrated
in specific buyer types.
