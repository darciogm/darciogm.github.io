---
id: an-012
type: descriptive
question: How accurately does the urgency classifier label purchase orders, validated against a ground-truth set, and does any residual error bias the regime contrasts?
status: done
status_date: 2026-05-24
confidence: yellow
headline: "Across 764,362 classified purchase orders, validation against 179,148 ground-truth orders shows 98.6% exact agreement; urgent-class F1 is 0.93 (judicial) and 0.96 (administrative), macro-F1 0.94; residual misclassification would attenuate, not inflate, regime contrasts."
created: 2026-05-24
script: v9-jpube-short/analysis/49_classifier_macros.py
target: v9-jpube-short/output/tables/tab_classifier_validation_v9.tex
tags: [classifier, validation, measurement, descriptive]
design:
  sample: "764,362 classified purchase orders; validation against 179,148 ground-truth purchase orders"
  specification: "Urgency classifier evaluated for exact agreement and per-class F1 against the ground-truth set"
  notes: "The classifier operates at the purchase-order and tender-notice level; the empirical analysis is at the purchase-offer-item (POI) level and price regressions use accepted winning bids; the 764,362 classified orders exceed the 479,330 POI analysis file because classification is upstream of item-level linkage"
---

# AN-012: Urgency classifier validation

!!! abstract "Intuition (plain-language)"
    Every purchase order is labeled as judicial-urgent, administrative-urgent, or ordinary by a classifier. Before trusting those labels, we check them against a hand-verified ground-truth set. The classifier agrees with the ground truth on 98.6% of cases, and its per-class accuracy is high for both urgent types. Crucially, the kind of mistakes it still makes would blur the regimes together, pulling estimated contrasts toward zero rather than exaggerating them.

## Question

The empirical analysis relies on labeling each purchase order by its
urgency regime. How accurate is that classifier when checked against a
ground-truth set, and would any residual misclassification bias the
regime contrasts upward or downward?

## Design

- **Sample**: 764,362 classified purchase orders, validated against
  179,148 ground-truth purchase orders. The classifier operates at the
  purchase-order and tender-notice level. The empirical analysis is at
  the purchase-offer-item (POI) level, and price regressions use
  accepted winning bids. The 764,362 classified orders exceed the
  479,330 POI analysis file because classification is upstream of
  item-level linkage.
- **Specification**: the urgency classifier is evaluated for exact
  agreement and per-class F1 against the ground-truth labels.

## Results

| Metric | Value |
|---|---:|
| Classified purchase orders | 764,362 |
| Ground-truth purchase orders | 179,148 |
| Exact agreement | 98.6% |
| Urgent-class F1 (judicial) | 0.93 |
| Urgent-class F1 (administrative) | 0.96 |
| Macro-F1 | 0.94 |

Output: `v9-jpube-short/output/tables/tab_classifier_validation_v9.tex`.

## Interpretation

Confidence: **yellow.** The urgency classifier reaches 98.6% exact
agreement against 179,148 ground-truth purchase orders, with urgent-class
F1 of 0.93 for the judicial class and 0.96 for the administrative class,
and a macro-F1 of 0.94. The classifier operates at the purchase-order and
tender-notice level, whereas the empirical analysis is at the POI level
and price regressions use accepted winning bids; the 764,362 classified
orders exceed the 479,330 POI analysis file because classification is
upstream of item-level linkage. Any remaining misclassification would
blur the regimes together and so would attenuate, not inflate, the regime
contrasts. The reading is yellow because the validation is from a single
jurisdiction (São Paulo BEC) and rests on own project runs.

## Follow-ups

- Report the confusion matrix entries that drive the residual
  misclassification, to confirm the attenuation direction class by class.
- Re-validate on an expanded ground-truth set drawn from later vintages
  to check that classifier accuracy is stable over the panel.
