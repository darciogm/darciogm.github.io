---
paper: bitter-pills
id: an-003
hypothesis: no-broad-same-firm-markup
type: causal
question: Within the same firm, buyer, and item, does the same supplier charge a higher price under the litigated urgent regime than under the administrative urgent comparison?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "No broad same-firm markup in deep repeated urgent markets (0.035, SE 0.041); the deep-market null is not universal — a residual within-firm gap persists in the earlier period, while the quantity axis reflects scale."
created: 2026-05-24
script: v10-causal-mechanism/analysis/48_mechanism_evidence.R
target: v10-causal-mechanism/output/tables/tab_within_firm_robustness.tex
tags: ["H:no-broad-same-firm-markup", within-firm, pricing, mechanism, causal]
design:
  sample: "Firm-buyer-item triples: 4,573 observations across 1,206 triples observed under both urgent regimes"
  specification: "Regression of log price on the litigated (versus administrative) urgent indicator with firm-buyer-item and year fixed effects; standard errors clustered by PBU"
  notes: "Holds the supplier identity fixed, so it isolates same-firm pricing from supplier-set reallocation; near-zero baseline does not mean the cost margin is zero — it relocates the margin to sourcing (AN-005, AN-006)"
---

# AN-003: Within-firm-buyer-item pricing under litigation

!!! abstract "Intuition (plain-language)"
    Hold everything about the transaction fixed except the regime: the same supplier, the same buyer, the same item. Does that one supplier charge more when the purchase is court-mandated? In deep, repeatedly traded urgent markets, the answer is essentially no — the same firm does not post a broad markup. The picture is not uniform, but the exceptions split in two: the small-lot positive reflects scale (bulk discounts), not the same supplier marking up, while a genuine residual within-firm gap survives in the earlier years — and even that gap is administrative-dearer, not the litigated buyer being squeezed. So the cost of litigation is not a blanket same-firm markup.

## Question

Within the same firm, the same buyer, and the same item, does the same supplier
charge a higher price under the litigated urgent regime than under the
administrative urgent comparison? Fixing the supplier identity strips out
supplier-set reallocation and isolates the **same-firm pricing** margin.

## Design

- **Sample**: firm-buyer-item triples — 4,573 observations across 1,206 triples
  observed under both urgent regimes.
- **Variation**: litigated-urgent versus administrative-urgent within the same
  firm-buyer-item triple.
- **Specification**: regression of log price on the litigated (versus
  administrative) urgent indicator, with firm-buyer-item (FBI) and year fixed
  effects. Standard errors are clustered by PBU.
- **Heterogeneity**: splits by order quantity (above/below median), formulary
  status (SUS formulary versus non-formulary), and period (earlier versus
  later).

## Results

| Cut | Coefficient (SE) | Reading |
|---|---:|---|
| Baseline (all triples) | 0.035 (0.041) | Indistinguishable from zero |
| Above-median quantity | −0.005 | Near zero |
| Below-median quantity | +0.066 (***) | Higher in thin lots |
| SUS-formulary | −0.001 | Near zero |
| Non-formulary | +0.101 | Higher off formulary |
| Earlier period | +0.117 (***) | Higher in early years |
| Later period | −0.038 | Near zero |

*FBI + year fixed effects. SE clustered by PBU. \*\*\* p<0.01.*

Output: `v10-causal-mechanism/output/tables/tab_within_firm_robustness.tex`.

![Within firm-buyer-item coefficient by subsample, with 95% CI: deep-market cells near zero, thin/early cells positive](../assets/figures/fig_within_firm_forest_v10.png)

## Interpretation

The baseline within-firm coefficient is 0.035 with a standard error of 0.041 —
indistinguishable from zero. There is **no broad same-firm markup in deep
repeated urgent markets**: the same supplier, selling the same item to the same
buyer, does not post a uniform price premium under litigation. This does not
mean the cost margin disappears; it relocates the margin away from same-firm
pricing and toward the supplier-set and scale channels documented in
[AN-005](an-005-pricing-sourcing-decomposition.md) and
[AN-006](an-006-winner-switching.md).

The heterogeneity makes the boundary precise, but the thin-market axes behave
differently. The below-median-quantity positive (+0.066, ***) is the **scale**
channel, not same-firm pricing: holding firm, buyer, and item fixed, the
within-triple log-quantity coefficient is −0.259 (SE 0.074), and the order-size
gradient collapses under a quantity control. The earlier-period gap (+0.117,
***) survives that control but is **administrative-dearer** and time-declining —
a genuine residual within-firm gap, not the litigated buyer being squeezed.
Off-formulary (+0.101) is positive but not significant. Where the market is
deep — large lots, formulary molecules, the later period — the within-firm gap
is near zero. The deep-market null is therefore not universal, but the surviving
margin is disambiguated rather than read as broad supplier leverage; this is
taken up directly in [AN-004](an-004-market-depth-heterogeneity.md).

Confidence: **yellow.** The within-firm-buyer-item design holds supplier
identity fixed, the tightest available control on composition, but it conditions
on triples that transact under both regimes — itself a selected set — and the
administrative urgent channel remains the selected, larger, closest feasible
urgent-procurement comparison rather than a random or clean counterfactual. The
reading is yellow because the evidence is single-jurisdiction (São Paulo BEC)
and from own-project runs.

## Follow-ups

- Map the thin-market and earlier-market leverage explicitly against market
  depth and formulary status — see
  [AN-004](an-004-market-depth-heterogeneity.md).
- Reconcile the near-zero same-firm pricing margin with the observed price gap
  through the scale and supplier-composition channels — see
  [AN-005](an-005-pricing-sourcing-decomposition.md).
- Confirm that the supplier set, not the supplier's price, moves under
  litigation — see [AN-006](an-006-winner-switching.md).
