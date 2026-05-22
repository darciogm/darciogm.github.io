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

> **Evidence strength: Mixed.**
> Within-stratum profile shows Cohen's d 0.3–1.0 for tenders, unique
> winners, and HHI: cobidders bid in 136.5 tenders vs 76.7 for non-
> cobidder FLs; HHI 0.380 vs 0.288. The temporal "first-time-FL" margin
> does NOT survive PS matching (+0.062, p = 0.312), demoted to appendix.
> Cross-sectional profile supports the claim; the temporal channel does
> not.

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
| [AN-021](../analyses/an-021-first-time-fl-matching.md) (first-time FL — demoted) | Against | done | +0.062 (p = 0.312) under PS matching; demoted to appendix |

## Open tests

- Robustness to alternative cobidder definitions.
- Heterogeneity within FL stratum by sub-period.
