---
paper: bitter-pills
id: an-013
hypothesis: placebo-and-dynamics
type: placebo
question: Does the never-litigated placebo remain null inside buyer-by-class environments that also contain litigated purchases?
status: done
status_date: 2026-05-25
confidence: green
headline: "A stricter buyer-by-class placebo remains null: among never-litigated items bought in procurement environments that also contain litigated items, the urgent negotiated-price coefficient is -0.046 (SE 0.053), -0.020 (SE 0.070) with quantity control, and the reference-price and bidder-count placebos are also null."
created: 2026-05-25
script: v10-causal-mechanism/analysis/65_h7_specificity_placebos.R
target: v10-causal-mechanism/output/tables/tab_h7_placebo_battery.tex
tags: ["H:placebo-and-dynamics", placebo, specificity, buyer-class, robustness]
design:
  sample: "Never-litigated items with ordinary and administrative urgent variation; matched subset restricts to buyer-by-class cells that also contain litigated purchases elsewhere in the panel"
  specification: "Item, year, and PBU fixed effects; PBU-clustered SEs; outcomes are negotiated price, reference price, and log number of bidders"
  notes: "Specificity check only: tests whether the urgent-procurement pattern appears where litigation is absent but procurement environments overlap"
---

# AN-013: Buyer-by-class placebo battery

!!! abstract "Intuition (plain-language)"
    The original placebo asks whether never-litigated items show the same urgent-price pattern. This version makes the placebo harder to pass: it keeps only never-litigated items bought by the same buyers in the same item classes where litigated purchases also appear elsewhere in the panel. The result stays flat. The urgent pattern does not reappear even in overlapping procurement environments where a generic buyer, class, or platform story would be more plausible.

## Question

Does the never-litigated placebo remain null when restricted to procurement
environments that overlap with litigated procurement?

## Design

- **Sample**: never-litigated items with both ordinary and administrative urgent
  observations. The matched subset keeps buyer-by-class cells that also contain
  litigated purchases elsewhere in the panel.
- **Specification**: item, year, and PBU fixed effects, with standard errors
  clustered by PBU.
- **Outcomes**: log negotiated price, log reference price, and log number of
  bidders.
- **Role**: specificity check, not a stand-alone identification design.

## Results

| Placebo specification | Coefficient | SE |
|---|---:|---:|
| All never-litigated negotiated price | -0.020 | 0.032 |
| Matched buyer-by-class negotiated price | -0.046 | 0.053 |
| Matched negotiated price + quantity control | -0.020 | 0.070 |
| Matched reference price | -0.071 | 0.056 |
| Matched number of bidders | -0.032 | 0.043 |

The matched placebo contains 763 never-litigated items across 99 buyer-by-class
cells. Output:
`v10-causal-mechanism/output/tables/tab_h7_placebo_battery.tex`.

## Interpretation

Confidence: **green for the stated placebo question.** The tighter placebo
returns economically small, statistically null coefficients across negotiated
price, quantity-controlled negotiated price, reference price, and bidder count
inside buyer-by-class environments where litigated purchases also appear. This
substantially weakens generic platform, buyer-class, and time-trend explanations
for the urgent-procurement pattern. The dynamic evidence remains diagnostic, but
this placebo battery is strong for the specificity claim it is designed to test.

## Follow-ups

- Combine this placebo battery with classifier-threshold sensitivity if
  purchase-regime confidence scores are exposed in a future public replication
  file.
- The event-study path should remain diagnostic unless a future design supplies
  stronger pre-period robustness.
