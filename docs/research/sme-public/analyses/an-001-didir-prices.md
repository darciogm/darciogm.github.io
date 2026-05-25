---
paper: sme-public
id: an-001
hypothesis: price-discipline-loss
type: causal
question: Does open competition lower negotiated procurement prices in switched group 65, identified by DiDiR around the March 2018 PGE-SP reinterpretation?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Open auctions in switched group 65 deliver log-price coefficients of −0.131 to −0.133 (18-month window, item-clustered SEs, p<0.01), implying ~13% lower prices relative to the SME-only regime; magnitudes stable across 6/12/18-month windows."
created: 2026-05-21
script: scripts/02_analysis.R
target: output/tables/tab_prices.tex
tags: ["H:price-discipline-loss", didir, prices, fixest, item-fe, item-cluster]
design:
  sample: "BEC standardized goods procurement, 1,344 PBUs, 82,569 items, 832,984 transactions; completed items (oc_item_status == 1)"
  specification: "y = η_i + γ Pre + β (g65 × Pre) + log(quantity) + sealed-bid + ε; fixest::feols, lean=TRUE; clustered SE by item"
  fixed_effects: "item; PBU FE in second specification"
  cluster: "item"
  controls: "log quantity; sealed-bid indicator"
  notes: "DiDiR design: g65 is the *switched* group, control groups are *always treated*"
---

# AN-001: DiDiR price effect

!!! abstract "Intuition (plain-language)"
    The cleanest evidence that the set-aside raises prices: when medical supplies were forced back into SME-only tendering in March 2018, their prices rose about 13% relative to groups that never changed. The estimate barely moves across 6/12/18-month windows — what you want from a real policy effect rather than noise.

!!! info "Reduced-form motivation layer"
    The numbers below are from the v1–v4 reduced-form DiDiR pipeline
    (`scripts/02_analysis.R` + companions), which the v8 manuscript
    carries as **motivation** in §1 but does not headline. The canonical
    v8 result is the structural counterfactual decomposition — see
    [AN-010](an-010-bne-decomposition.md) (decomposition) and
    [AN-011](an-011-welfare-arithmetic.md) (welfare arithmetic).

## Question

Does removing the SME-only restriction lower negotiated procurement prices
in switched group 65? The March 2018 PGE-SP reinterpretation makes group 65
identical to all other groups in being subject to SME-only tendering by
default. Comparing the *pre*-period (group 65 open, others SME-only) to the
*post*-period (all groups SME-only) yields the open-vs-SME-only price
effect, identified by DiDiR.

## Design

- **Sample**: completed items (`oc_item_status == 1`) in the BEC parquet
  cache for Sep 2016–Aug 2019 (18-month window), with 6/12-month
  sub-windows.
- **Variation**: group-65 indicator $\times$ pre-March-2018 indicator.
- **Specification**: $y_{pigt} = \eta_i + \gamma \text{Pre}_t + \beta\,(g65 \times \text{Pre}_t) + x'\delta + \varepsilon$
  with item FE $\eta_i$, log-quantity and sealed-bid controls,
  item-clustered SEs.
- **Outcomes**: log price (primary).
- **Identification threats**: cost shock specific to group 65 around
  March 2018; ruled out by placebo
  ([AN-004](an-004-placebo-tests.md)) and HonestDiD
  ([AN-006](an-006-honestdid.md)).

## Results

The 18-month DiDiR coefficient on $g65 \times \text{Pre}$ is
−0.1309 (base specification) and −0.1330 (PBU-FE specification), both
significant at p<0.01 with item-clustered SEs. The 12-month estimate is
−0.137 to −0.137; the 6-month is −0.131 to −0.144. Magnitudes are stable.

| Window | Base coef | PBU-FE coef | N |
|---|---:|---:|---:|
| 6m  | −0.1311*** (0.0121) | −0.1441*** (0.0116) | 219,535 |
| 12m | −0.1370*** (0.0107) | −0.1369*** (0.0104) | 439,054 |
| 18m | −0.1309*** (0.0096) | −0.1330*** (0.0094) | 649,714 |

*Item FE in all columns; PBU FE in alternating columns. SE clustered at
item level. \*\*\* p<0.01.*

Output: `output/tables/tab_prices.tex`.

## Interpretation

The coefficient implies ~13% lower prices under open competition relative
to the SME-only regime. The stability across windows is meaningful — short
windows have less power and more pre-treatment seasonality noise, but the
estimate barely moves. The PBU-FE specification adds buyer-level controls
without altering the headline, consistent with the policy switch being
the variation rather than buyer composition.

Reading: the lost-discipline channel (non-SMEs removed from the
price-forming pool) is the load-bearing mechanism. The reduced-form
DiDiR does not decompose this — see
[AN-010](an-010-bne-decomposition.md) for the structural decomposition.

Confidence: **yellow.** The point estimate is robust across windows, FE
structures, alternative clustering (item, group, PBU, two-way; see
[docs/robustness.md](../robustness.md)), and tight Lee bounds
([AN-005](an-005-lee-bounds.md)). HonestDiD survives substantial M̄
violations ([AN-006](an-006-honestdid.md)). The reading is still
single-source — own-project estimate; promotion to green requires
either independent replication in another procurement setting or a
converging recovery from a different identification source (e.g., the
GPV recovery from Convite first-price bids; partly run, not yet
documented as an AN).

## Follow-ups

- Cross-modality validation: GPV recovery of cost distribution from
  Convite first-price bids in the same product cells, compared to the
  Pregão drop-out recovery ([AN-013](an-013-pregao-dropouts.md)). Lives
  in `v7-jpube-tight/scripts/38_cross_modality.R`.
- Adherence-rate-by-PBU sensitivity for the fiscal translation
  (`scripts/35_pref_sdid_class.R`). Not load-bearing for the
  reduced-form coefficient, but tightens the welfare arithmetic in
  [AN-011](an-011-welfare-arithmetic.md).
- The quantile-DiD heterogeneity in [AN-007](an-007-quantile-did.md)
  shows the mean coefficient masks a strongly negative effect at low
  quantiles and a positive effect at $\tau=0.90$. A within-item
  conditional-quantile decomposition would isolate where the
  open-competition price gain comes from.
