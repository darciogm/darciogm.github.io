---
paper: frequent-losers
id: an-029
hypothesis: timing-discipline
type: robustness
question: Does the FL screen preserve discrimination under three progressively-earlier train windows, evaluated against both all-time and truly-out-of-time cobidder targets?
status: done
status_date: 2026-05-22
confidence: green
headline: "Three-classifier battery: clf_2015 FL AUC 0.791 / continuous 0.851 vs all cobidders; clf_2017 FL 0.856 / continuous 0.897. Against truly out-of-time post-2019 cobidders: clf_2015 FL 0.786 / continuous 0.854; clf_2017 FL 0.844 / continuous 0.894. Discrimination preserved across all six (classifier × target) cells."
created: 2026-05-22
script: scripts/27_strict_prospective_holdout.R
target: output/strict_prospective_summary.csv
tags: ["H:timing-discipline", strict-prospective, holdout, three-classifier]
design:
  sample: "Always-loser firms in BEC under three frozen training windows: clf_2015 (trained 2009-2015, N = 11,699), clf_2017 (trained 2009-2017, N = 14,391), clf_2019_full (full pool 2009-2019, N = 16,843)."
  specification: "AUC of FL flag (binary) and tenders_count (continuous) under each classifier, evaluated against four ground-truth sets: cobid_all (all cobidders), cobid_post2019 (cobidders linked to CADE cases adjudicated post-2019), all_cade (all 47 direct defendants), post_2019 (direct defendants from post-2019 cases)."
  notes: "cobid_post2019 is the truly out-of-time target — these cobidders are defined by adjudications that happened AFTER the training window even for clf_2017. Direct-defendant rows have very small N (5-7) and are reported as scope notes rather than load-bearing."
---

# AN-029: Three-classifier timing battery — strict prospective evaluation

## Question

Does the FL screen preserve discrimination under three progressively-
earlier train windows, evaluated against both all-time and truly-
out-of-time cobidder targets? The battery is the strongest within-data
timing audit: three independent train horizons × two genuine out-of-
sample evaluations.

## Design

- **Three classifiers**, each frozen on a different training horizon:
  - *clf_2015*: trained on always-losers as of 2009–2015 (N = 11,699;
    127 cobidders observed in train).
  - *clf_2017*: trained on always-losers as of 2009–2017 (N = 14,391;
    161 cobidders observed in train).
  - *clf_2019_full*: full pool 2009–2019 (N = 16,843; 193 cobidders) —
    the in-sample reference.
- **Four ground-truth targets**:
  - *cobid_all*: all cobidders ever identified.
  - *cobid_post2019*: cobidders linked to CADE cases adjudicated
    after the training window closes — **truly out-of-time** evidence.
  - *all_cade*: all 47 direct defendants (scope check; small N in
    sub-windows).
  - *post_2019*: direct defendants from post-2019 adjudications (very
    small N, mostly excluded from headline reading).
- **Scores**: FL14 binary flag; `tenders_count` continuous.

## Results

### Headline: AUC × classifier × target

| Classifier | Target | Score | AUC | 95% CI | N+ |
|---|---|---|---:|---|---:|
| clf_2015 | cobid_all | FL flag | 0.791 | [0.752, 0.830] | 127 |
| clf_2015 | cobid_all | continuous | 0.851 | [0.821, 0.881] | 127 |
| clf_2015 | **cobid_post2019** | FL flag | **0.786** | [0.731, 0.840] | 67 |
| clf_2015 | **cobid_post2019** | continuous | **0.854** | [0.815, 0.893] | 67 |
| clf_2017 | cobid_all | FL flag | 0.856 | [0.829, 0.883] | 161 |
| clf_2017 | cobid_all | continuous | 0.897 | [0.877, 0.918] | 161 |
| clf_2017 | **cobid_post2019** | FL flag | **0.844** | [0.806, 0.882] | 92 |
| clf_2017 | **cobid_post2019** | continuous | **0.894** | [0.865, 0.923] | 92 |
| clf_2019_full (ref) | cobid_all | FL flag | 0.924 | [0.921, 0.926] | 193 |
| clf_2019_full (ref) | cobid_all | continuous | 0.939 | [0.932, 0.946] | 193 |

### Direct-defendant scope check (small-N, reported for completeness)

| Classifier | Target | Score | AUC | 95% CI | N+ |
|---|---|---|---:|---|---:|
| clf_2015 | all_cade | FL flag | 0.676 | [0.457, 0.895] | 6 |
| clf_2017 | all_cade | FL flag | 0.638 | [0.440, 0.836] | 7 |
| clf_2019_full | all_cade | FL flag | 0.633 | [0.435, 0.831] | 7 |

CIs include 0.5 in every row. The direct-defendant null
([AN-007](an-007-auc-direct-cade.md): AUC 0.491 over the full 47-firm
positive class) is statistically silent under strict-window evaluation
because only 6–7 direct defendants are active in each window — too few
positives for a tight AUC estimate. The null reading still holds; the
small-N variant just cannot reject it.

Source: `output/strict_prospective_summary.csv`.

## Interpretation

The three-classifier battery converts H4 from "single-train-window
result" to "robust across multiple train windows and against truly
out-of-time positives". Five readings:

1. **The headline AUC is preserved across three train horizons.** FL
   flag: 0.791 → 0.856 → 0.924 (clf_2015 → clf_2017 → clf_2019_full).
   Continuous: 0.851 → 0.897 → 0.939. Monotonic increase as training
   data grows; no collapse at any horizon.

2. **The truly out-of-time target preserves the result.** cobid_post2019
   cobidders are defined by CADE cases adjudicated AFTER even the
   clf_2017 training window — they cannot be in the training data by
   construction. The FL flag still gives AUC 0.786 (clf_2015) and 0.844
   (clf_2017); continuous gives 0.854 and 0.894. The discrimination
   *survives the strictest possible timing discipline* available in
   the panel.

3. **Continuous dominates binary in every cell.** Same pattern as
   [AN-011](an-011-horse-race-continuous.md): continuous AUC exceeds
   FL flag AUC in all 6 cobidder cells. The dominance is not a
   sample-specific artifact.

4. **Direct-defendant scope null persists but becomes statistically
   silent.** clf_2015 and clf_2017 evaluations have only 6-7 direct
   defendants. AUCs around 0.63-0.68 with CIs that span [0.44, 0.90].
   Cannot reject the null at standard thresholds, but cannot reject
   loser-side scope either. The full 47-defendant evaluation
   ([AN-007](an-007-auc-direct-cade.md)) gives the cleaner read.

5. **The drop relative to in-sample is documented and bounded.** Going
   from clf_2019_full (FL 0.924) to clf_2015 (FL 0.791), the AUC drops
   ~0.13 — comparable to the OOF drop in
   [AN-014](an-014-leakage-audit-d3.md) (0.995 → 0.891) and consistent
   with the temporal-holdout retention reported in
   [AN-013](an-013-precision-at-k-audit.md) (~53% precision retention).

## Follow-ups

- Re-run with even earlier train windows (clf_2013, clf_2010) to map
  the full timing-attenuation curve.
- Cross-validate the clf_2015 → cobid_post2019 result with bootstrap
  CIs.
- Add macros `\valClfFifteenFL`, `\valClfFifteenTC`,
  `\valClfSeventeenFL`, `\valClfSeventeenTC`,
  `\valClfFifteenPost2019FL`, etc. to the
  `scripts/99_make_paper_values.R` pipeline.
