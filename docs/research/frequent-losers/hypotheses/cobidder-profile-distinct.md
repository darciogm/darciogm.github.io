---
id: h5
slug: cobidder-profile-distinct
title: "FL cobidders are economically distinct from other frequent losers"
cluster: C
paper_section: "§5"
status: pending
last_updated: 2026-05-22
---

# H:cobidder-profile-distinct — FL cobidders are economically distinct from other frequent losers

If the frequent-loser ranking captures more than raw participation
intensity, then cobidders inside the FL stratum should look different from
other firms in the same stratum along economically meaningful dimensions:
buyer-portfolio breadth, product-portfolio concentration, proximity to
legal cartel anchors, and bid-level behavior consistent with credible
losing roles.

> **Evidence strength: Pending.**
> Backed by §5 of the [manuscript](../paper.md) ("The Economic Profile of
> Cartel-Adjacent Losers"). AN pages to follow.

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

| Analysis | Bearing | Status |
|---|---|---|
| [AN-008](../analyses/an-008-pbu-characterization.md) (FL characterization) | Direct | pending |
| [AN-009](../analyses/an-009-network-hhi.md) (network proximity + HHI) | Direct | pending |
| [AN-024](../analyses/an-024-unified-mechanism.md) (unified mechanism profile) | Supports | pending |

## Open tests

- Robustness to alternative cobidder definitions.
- Heterogeneity within FL stratum by sub-period.
