---
paper: sme-public
id: h1
slug: price-discipline-loss
title: "Open auctions yield lower procurement prices than SME-only auctions"
cluster: A
paper_section: "§1 + §6"
status: partial
last_updated: 2026-05-21
---

# H:price-discipline-loss — Open auctions yield lower procurement prices than SME-only auctions

Removing non-SMEs from a competitive bidding pool weakens the price-forming
order statistic. If the excluded bidders were on the price-forming margin,
opening the auction back up to them should *lower* the negotiated price.
The March 2018 PGE-SP reinterpretation that re-imposed SME-only status on
group 65 (medical/hospital supplies) flipped the regime, providing a DiDiR
testbed: comparing group 65 (switched) to other groups (always treated)
yields the *open-vs-SME-only* price effect.

> **Evidence strength: Partial (strongly supported).**
> [AN-001](../analyses/an-001-didir-prices.md) reports DiDiR β =
> −0.131 to −0.133 (18m, p<0.01); reading survives placebos
> ([AN-004](../analyses/an-004-placebo-tests.md)), Lee bounds
> ([AN-005](../analyses/an-005-lee-bounds.md)), HonestDiD
> ([AN-006](../analyses/an-006-honestdid.md)), Sun-Abraham (0.108 ≈ DDR
> 0.113, [AN-018](../analyses/an-018-cs2021-staggered.md)),
> Goodman-Bacon (100% weight on clean 2×2, 🟢
> [AN-020](../analyses/an-020-goodman-bacon.md)), and synthetic control
> ([AN-021](../analyses/an-021-synth-control.md)). Concentrated at low
> quantiles ([AN-007](../analyses/an-007-quantile-did.md)). Structural
> confirmation in [AN-010](../analyses/an-010-bne-decomposition.md).
> Falsification against CMED pharmaceutical-inflation alternative:
> price effect persists in both medications (β = −0.174***) and
> non-medication medical supplies (β = −0.097***) within Group 65
> ([AN-027](../analyses/an-027-within-g65-cmed.md)). Phased-adoption
> robust ([AN-023](../analyses/an-023-phased-adoption.md)).

## Theory

Set-aside policies that remove a subset of bidders from the auction must
either rely on the protected pool's response or accept higher prices. In
independent private values English auctions, the expected payment is the
second-order statistic of the bidder cost distribution
\citep{vickrey1961, milgrom1982, haile2003}. Removing the
lowest-cost subset of bidders raises the expected second-lowest cost; the
question is how much the protected pool's entry response offsets the
removal. Empirical work on SME procurement preferences (Marion 2007;
Reis and Cabral 2015; Nakabayashi 2013) finds positive price effects of
exclusionary preferences whose magnitude depends on the strength of the
disciplinary margin removed.

## Prediction

Negotiated log prices in switched group 65 should be lower in the
*pre*-period (when the group was open to all bidders) than in the *post*-period
(when the SME-only rule applied), relative to the always-treated control
groups. Operationalized as DiDiR: the coefficient on $g65 \times \text{Pre}$
in the price equation should be negative and statistically significant.

## Competing prediction

**Cost-shock alternative.** A common cost shock that hit group 65
differentially around March 2018 (e.g., the BNDES medical-supply credit
line, COVID-19 anticipations, currency moves in dollarized imports) would
produce a level shift in group-65 prices that the DiDiR would mechanically
attribute to the policy. The placebo test
([AN-004](../analyses/an-004-placebo-tests.md)) and HonestDiD sensitivity
([AN-006](../analyses/an-006-honestdid.md)) are the load-bearing pieces
ruling this out: cost shocks should produce a positive placebo coefficient
or a binding M̄ in HonestDiD; both come back null.

## Setting evidence

The March 2018 PGE-SP opinion (PGE-SP n. 2018/01) reversed the prior
exemption of group 65 from the federal SME law's mandatory SME-only rules
for items below R$80,000. From that date, group 65 procurements joined
all other groups in being subject to SME-only tendering by default.
This created a clean switching event with a pre-period in which group 65
was open to all bidders and other groups were already SME-only, and a
post-period in which all groups were subject to the same SME-only rule.
See [docs/paper.md](../paper.md) for the institutional account.

## Empirical test

- *Outcome variable*: log negotiated price (per item).
- *Variation*: DiDiR — group 65 is the *switched* group; other groups are
  *always treated*. The coefficient on $g65 \times \text{Pre}$ is the
  open-vs-SME-only effect for group 65.
- *Specification*: $y_{pigt} = \eta_i + \gamma \text{Pre}_t + \beta\,(g65_{pgt} \times \text{Pre}_t) + x'\delta + \varepsilon_{pigt}$
  with item FE $\eta_i$, controls $x$ (log quantity, tender type),
  item-clustered SEs.
- *Fixed effects*: item; PBU FE in second specification.
- *Sample*: completed items (`oc_item_status == 1`), 6/12/18-month windows
  centered on March 2018.

## Data requirements and limitations

Requires the BEC parquet cache (`data/processed/paper2_me_epp.parquet`)
covering Jan 2016–Dec 2019. The DiDiR identifies the *open-vs-SME-only*
effect in group 65 — not a treatment effect on the universally-treated
groups. The estimate is a reduced-form policy comparison; it does not
decompose the price difference into the lost-discipline channel and the
protected-pool offset (see [H:exclusion-dominates](exclusion-dominates.md)
for that decomposition).

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-001](../analyses/an-001-didir-prices.md) | Supports | DiDiR price &beta; &minus;0.131 to &minus;0.133 (18m), p<0.01, item-clustered. Magnitudes stable across 6/12/18-month windows. |
| [AN-004](../analyses/an-004-placebo-tests.md) | Supports (via rule-out) | Pre-treatment placebo on prices null (&beta; = &minus;0.0145, p > 0.10) — rules out the cost-shock confound. |
| [AN-005](../analyses/an-005-lee-bounds.md) | Supports | Lee bounds &minus;0.131 to &minus;0.123, both highly significant; sample selection has negligible impact. |
| [AN-006](../analyses/an-006-honestdid.md) | Supports | Price effect survives substantial M̄ violations in HonestDiD. |
| [AN-007](../analyses/an-007-quantile-did.md) | Mixed | Effect concentrated at &tau; &le; 0.50 (strongly negative); turns positive at &tau; = 0.90. Mean DiDiR masks heterogeneous distributional impact. |
| [AN-010](../analyses/an-010-bne-decomposition.md) | Supports | Structural counterfactual confirms direction; $S_1 - S_3 > 0$ in standardized non-pharma. |
| [AN-018](../analyses/an-018-cs2021-staggered.md) | Supports | Sun-Abraham ATT 0.108*** matches DDR 0.113*** within 0.005; CS2021 same direction. |
| [AN-020](../analyses/an-020-goodman-bacon.md) | Supports (🟢) | Weight = 1.000 on clean Treated-vs-Untreated 2×2; no contamination from heterogeneous-timing. |
| [AN-021](../analyses/an-021-synth-control.md) | Mixed | Synth pre-gap exact 0.0000; post ATT 0.171 directionally consistent; placebo p=0.103. |
| [AN-027](../analyses/an-027-within-g65-cmed.md) | Supports | Within-Group-65 split: medications −0.174***, non-medications −0.097***. CMED inflation alternative rejected. |
| [AN-023](../analyses/an-023-phased-adoption.md) | Supports | DiD survives dropping BEC enablement window (β −0.109 → −0.087, both p<0.01). |

## Open tests

### Cross-modality validation

Re-estimate the price effect on Convite first-price bids using a
GPV (Guerre-Perrigne-Vuong 2000) recovery, and compare with the Pregão
drop-out recovery. Convergence would upgrade this hypothesis to
🟢-eligible. Lives in `v7-jpube-tight/scripts/38_cross_modality.R`;
documented as part of [AN-014](../analyses/an-014-uh-correction.md)
robustness battery.

### Adherence-rate sensitivity for fiscal translation

The reduced-form &beta; translates to ~R$55–128M/year on group 65 alone
under varying adherence assumptions
(see [docs/extensions.md](../extensions.md)). A first-stage-by-PBU
adherence calibration (`scripts/35_pref_sdid_class.R`) would tighten the
fiscal interpretation but is not load-bearing for the welfare arithmetic,
which uses simulated rather than realized prices.
