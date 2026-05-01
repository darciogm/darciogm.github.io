---
paper: frequent-losers
---

# Robustness

We stress-test the within-item price gap and the procuring-unit-size oversight gradient against four distinct concerns: design sensitivity, identification, deployment honesty, and comparative scope against bid-distribution detectors.

---

## 1. Threshold and Specification Sensitivity

The headline range holds across the design choices that define the construct: the IQR threshold multiplier, the clustering of standard errors, and the binary-versus-continuous specification of loss intensity.

### IQR threshold

The price coefficient is positive and significant across five multipliers, declining monotonically as the cutoff tightens. The decline is a feature, not a defect: as the cutoff tightens, the binary indicator filters fewer firms with high loss-intensity. The underlying primitive is the continuous `log(1+tenders_count)` statistic.

| Multiplier | Threshold | FL firms | Coefficient | SE |
|:---:|:---:|:---:|:---:|:---:|
| 1.0&times; IQR | 10 | 3,442 | **+0.079*** | (0.023) |
| **1.5&times; IQR (baseline)** | 14 | 2,735 | **+0.064*** | (0.020) |
| 2.0&times; IQR | 17 | 2,093 | +0.060*** | (0.022) |
| 2.5&times; IQR | 20 | 1,778 | +0.054** | (0.023) |
| 3.0&times; IQR | 24 | 1,456 | +0.050** | (0.024) |

### Standard-error clustering

The point estimate is mechanical to clustering choice; only inference moves.

| Clustering | Coefficient | SE | 95% CI |
|:---|:---:|:---:|:---:|
| Item level (baseline) | +0.0636 | (0.0215) | [0.0214, 0.1058] |
| Procuring-unit level | +0.0636 | (0.0144) | [0.0353, 0.0919] |
| Two-way (item + PBU, Cameron–Miller) | +0.0636 | (0.0240) | [0.0165, 0.1107] |

The coefficient is significant at *p* < 0.01 under all three regimes; item-level is the conservative middle choice.

### Binary vs continuous loss intensity

The continuous `log(1+tenders_count)` score discriminates the same adjudicated CADE-cobidder population at AUC **0.939** [0.932, 0.946] versus **0.911** [0.898, 0.925] for the binary FL14 indicator (DeLong *Z* = &minus;4.30, *p* = 2&times;10<sup>&minus;5</sup>). The headline price gap is not an artifact of binary discretization.

---

## 2. Identification Audits

Four audits calibrate the strength of the descriptive claim.

### Cinelli–Hazlett robustness value

**RV<sub>q=1</sub> = 17.5%.** An unobserved confounder would need to explain at least 17.5% of the residual variation in both frequent-loser presence and log price to drive the coefficient to zero, given the item, year, and procuring-unit fixed effects.

### Oster (2019) bounds

| Sample | &delta;&#x0302; | &beta;*(&delta;=1) | Reading |
|:---|:---:|:---:|:---|
| Full | 261.64 | &minus;0.0005 | Unobservables would need to be more than 200&times; as important as the observables already captured to overturn the result |
| Pregão | 634.00 | +0.0643 | Even larger margin |
| Convite | 43.62 | &minus;0.1395 | Smaller margin&mdash;consistent with the construct's signal-to-noise being highest in pregão environments |

### Strict-overlap matching

| Specification | Coefficient | *N* |
|:---|:---:|:---:|
| Within-PBU baseline | +0.064 | 1,653,658 |
| Overlap-cell ATT | **&minus;0.097** | 1,517,066 |
| PS-trimmed ATT (common support) | **&minus;0.307** | 400,687 |

We read the reversal as informative about selection within the always-loser stratum: strict-overlap matching restricts comparisons to the items frequent losers *would* have entered with high probability, removing precisely the systematic differences that the broad-sample association captures. Both estimates describe the same population from different angles; neither carries causal weight on its own.

### Anti-leakage audit (item-level AUC)

| Audit | What it tests | AUC |
|:---|:---|:---:|
| Reference (in-sample, full pool) | log(1+max tc) predicting any-cobidder participation | 0.995 |
| Audit 1: same score &rarr; direct-CADE label | Whether the screen also flags items with direct CADE defendants | **0.506** |
| Audit 2: 5-fold CV at cobidder-firm level | Hold out cobidders, recompute score, predict on held out | **0.891** [0.887, 0.894] |
| Audit 3: temporal holdout (train 2009–2016, test 2017–2019) | Score from past data only | **0.864** [0.859, 0.870] |

The screen retains discriminating power above 0.85 under both audits. The drop of 0.10 to 0.13 is the pure-leakage component, and we adopt the temporal-holdout AUC of **0.864** as the conservative discriminating reference.

### Placebo IV

A leave-one-out IV using the supply of sub-threshold always-losers (firms with persistent zero wins but below the IQR cutoff) yields a 2SLS coefficient of **+5.24** with first-stage *F* = 33&mdash;an implausible magnitude that signals the placebo instrument operates through channels other than cover bidding. The construct's price imprint draws on the above-threshold cover-bidder population we identify, not on generic always-loser supply.

---

## 3. Operational Metrics: In-Sample vs Temporal Holdout

The deployment claim rests on operational metrics computed under the temporal-holdout regime, not in-sample.

### Discriminating performance under temporal holdout

Firm-level AUC against 193 adjudicated CADE-cobidder labels, score from 2009–2016 only, evaluated 2017–2019: **0.864** [0.859, 0.870]. This is the operationally honest projection for a screening tool built on past participation data and deployed against a future case-load.

### Precision and lift in the deployable region

| Top-*k* | Precision (in-sample) | Precision (temporal holdout) | Lift (in-sample) | Lift (holdout) |
|:---:|:---:|:---:|:---:|:---:|
| 100 | 0.170 | **0.070** | 14.8&times; | **6.1&times;** |
| 250 | 0.160 | **0.076** | 14.0&times; | **6.6&times;** |
| 500 | 0.132 | **0.070** | 11.5&times; | **6.1&times;** |
| 1,000 | 0.097 | **0.066** | 8.5&times; | **5.8&times;** |

!!! warning "In-sample precision overstates the deployable projection"
    At top-500, in-sample precision is **+50% higher** than under temporal holdout (0.132 vs 0.070, retention 53%). The inflation arises because roughly **47% of the top-500 in-sample ranking** comes from 2017–2019 participation, after CADE adjudications were already underway for some of the cartels&mdash;the in-sample score is partly retrospective rather than purely prospective. We disclose the gap explicitly and operate on the temporal-holdout column for all operational claims.

### Three operational implications

1. **Deployable.** AUC 0.864 and lifts of 5.8&times; to 6.6&times; in the top-100 to top-1,000 region are operationally meaningful for a screening tool that runs on contract-award records alone.
2. **Temporal holdout is the honest reference.** Any operational claim in the paper that requires a precision or lift number is computed on the holdout column.
3. **Periodic rescoring matters.** An oversight body running the screen in production should refresh the score window as new years of contract-award data arrive.

---

## 4. Horse Race Against Bid-Distribution Detectors

The relevant comparison is at fixed *data cost*, not at fixed sample, because the two pipelines operate on different data envelopes: the construct uses award-record fields only, while the bid-distribution pipeline requires per-bid offer values.

### Discrimination at native data envelopes

| Model | Features required | AUC | 95% CI |
|:---|:---|:---:|:---:|
| FL flag (binary) | participation count, win flag | **0.903** | [0.884, 0.923] |
| log(1+tenders_count) | participation count, win flag | 0.884 | [0.860, 0.908] |
| Imhof full pipeline | 5 within-tender bid features (CV, skew, kurt, spread, second-low) | 0.888 | [0.865, 0.911] |

The two pipelines reach comparable discrimination on different data envelopes. We do not claim that the construct outperforms the bid-distribution pipeline; we claim that it reaches comparable accuracy on a substantially thinner data envelope.

### Combined: complementarity, not dominance

| Combined model | AUC | 95% CI |
|:---|:---:|:---:|
| FL flag + Imhof full | **0.955** | [0.943, 0.967] |
| log(1+tenders_count) + Imhof full | **0.962** | [0.954, 0.969] |

Both combined classifiers gain 5–7 AUC points over either single construct, indicating non-redundant signal in the participation-only and bid-distribution information sources. Restricting attention to a same-sample audit, the construct adds **+0.035 AUC** over the Imhof full pipeline alone (DeLong *p* = 0.014), and the combined model adds **+0.096 to +0.098** over Imhof full alone (DeLong *p* < 0.001).

The administrative pathway integrates the construct with the bid-distribution stage rather than substituting for it: the **Screen** stage runs on award records, the **Forensic** stage deploys bid-distribution methods, and the gain from running both is identifiable in the data.

---

## 5. Staggered Designs Attempted and Rejected

Two design-based strategies that would extract a causal estimate return null at the available bandwidths.

### RDD at the convite/pregão statutory caps

McCrary-style density tests around the R$80,000 cap return a left/right ratio of **0.94** and a log-density discontinuity of **&minus;0.063**; the convite share drops cleanly across the cap from 69% below to 59% above, consistent with rule-driven assignment rather than strategic gaming. The local first-stage power is too weak to support a fuzzy RDD at standard bandwidths (Stock–Yogo *F* below threshold).

### DiD using Decreto 9.412/2018 cap raise

A difference-in-differences design fails the parallel-trends diagnostic at the available pre-treatment window. Two attempted estimators show the failure:

| Estimator | Coefficient | SE | Status |
|:---|:---:|:---:|:---|
| Sun–Abraham interaction-weighted | +0.014 | (0.039) | Imprecise; non-monotone dynamics |
| Stacked DiD | &minus;0.006 | (0.014) | Pre-trends preclude causal reading |

We report the failures openly and treat the empirical content as descriptive throughout. The conditional within-item association is the empirical claim; the design-based strategies were attempted, did not pass their diagnostic gates, and are reported in the appendix to substantiate the descriptive stance.

---

## Summary

The headline range +3.6 to +7.7% holds across estimators, threshold multipliers, clustering schemes, binary-vs-continuous specifications, and rich sensitivity bounds. Strict-overlap matching reverses the sign as a different angle on the same population. Under temporal holdout, AUC settles at 0.864 (vs in-sample 0.939) and precision at top-500 attenuates by ~50%; we adopt the holdout column for all operational claims. Against bid-distribution detectors, the construct reaches comparable accuracy at lower data cost and adds non-redundant signal in combination. Causal identification was attempted and is not available at the bandwidths the data support.
