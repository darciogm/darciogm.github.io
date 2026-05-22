---
paper: frequent-losers
id: an-005
hypothesis: exposure-discipline
type: placebo
question: Does cobidder concentration in the FL14 stratum survive a participation-volume-matched placebo, and how far is the observed AUC from the sham null distribution?
status: done
status_date: 2026-05-22
confidence: green
headline: "Formal permutation test (B = 2,000) rejects the volume-only null: observed AUC 0.911 vs sham distribution mean 0.500 (SD 0.013, q99 0.531, max 0.547); p < 1/2000. Observed AUC is 32 SDs above the sham mean."
created: 2026-05-22
script: scripts/25_sham_fl_permutation.R
target: output/sham_fl/sham_summary.csv
tags: ["H:exposure-discipline", placebo, permutation, sham-fl, formal-test]
design:
  sample: "Always-loser firms in BEC 2009–2019 (16,843 firms; 193 cobidders)"
  specification: "Sham FL: random reassignment of the FL14 label among always-losers preserving the marginal distribution of tenders_count; B = 2,000 permutations. Test statistic = AUC against cobidder labels. Permutation p-value = share of sham AUCs ≥ observed."
  notes: "Two complementary placebos: (a) THIS — sham FL permutation that preserves marginal participation; (b) CADE-label permutation (separate file, AUC pre/post band 0.713–0.783) — different randomization, both decisive."
---

# AN-005: Sham FL permutation — formal test against the volume-only null

## Question

Does cobidder concentration in the FL14 stratum survive a participation-
volume-matched placebo? If the result were driven by raw participation
volume rather than a signal-carrying loser-side footprint, permuting the
FL label while preserving the marginal `tenders_count` distribution
should reproduce the observed concentration. The formal test asks: how
many SDs is the observed AUC above the sham null distribution?

## Design

- **Sample**: 16,843 always-loser firms in BEC 2009–2019.
- **Sham construction**: random reassignment of the `FL14` label among
  always-losers preserving the marginal distribution of `tenders_count`
  (volume-matched).
- **Bootstrap depth**: B = 2,000 permutations.
- **Test statistic**: AUC against cobidder labels.
- **Permutation p-value**: share of sham AUCs ≥ observed.
- **Auxiliary**: same B sham draws also compute the price coefficient
  on FL14 presence (for the scope-vs-damages reading).

## Results

### Formal sham AUC distribution (B = 2,000)

| Statistic | Value |
|---|---:|
| Observed FL14 AUC | **0.911** |
| Sham mean | 0.500 |
| Sham SD | 0.013 |
| Sham q05 | 0.479 |
| Sham q50 (median) | 0.500 |
| Sham q95 | 0.521 |
| Sham q99 | 0.531 |
| Sham max | 0.547 |
| Permutation p-value | **0** (< 1/2,000) |
| Reject null at 99% | TRUE |
| Observed in SD units above sham mean | ≈ **32 σ** |

The observed AUC of 0.911 is 32 sham SDs above the sham mean. Among
2,000 random reassignments, zero permutations reached even 0.55. The
volume-only null is decisively rejected.

### Price coefficient under the same sham (auxiliary)

| Statistic | Value |
|---|---:|
| Observed FL14 price coefficient | +0.064 |
| Sham mean | +0.144 |
| Sham SD | 0.037 |
| Sham q95 | +0.207 |
| Sham q99 | +0.232 |
| Permutation p-value | 0.989 |
| Reject null at 99% | FALSE |

The price coefficient does NOT reject the volume-only null — the sham
mean (+0.144) is actually larger than the observed (+0.064). This is
the second piece of the **scope-vs-damages** reading
([H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md)):
the price effect at the FL margin is not the part of the result that
demands explanation; the AUC concentration is.

### Complementary CADE-label permutation

The `cade_permutation.csv` file (separate test, different randomization
scheme — permuting CADE labels rather than FL labels, and reporting an
AUC pre/post band rather than a single distribution) gives a
complementary band of 0.713–0.783 (`\valAUCprePostCI`). This is also
substantially below the observed 0.911. The two placebos test slightly
different artifacts (volume preservation vs CADE-anchor preservation)
and both reject decisively.

Sources: `output/sham_fl/sham_summary.csv` (formal AUC + price test),
`output/sham_fl/sham_auc_distribution.csv` (B = 2,000 draws),
`output/sham_fl/cade_permutation.csv` (CADE-label permutation).

## Interpretation

**Volume-only is dead as a candidate explanation.** Two independent
permutation procedures both reject the null that observed concentration
could arise from volume alone:

- Sham FL permutation: B = 2,000 draws, sham mean 0.500, observed 0.911.
  The observed AUC is more than 32 SDs above the sham null.
  Permutation p-value = 0.
- CADE-label permutation: pre/post band 0.713–0.783, observed 0.911.

The asymmetry between the AUC result (decisive rejection) and the price
coefficient (does not reject, sham mean larger than observed) is the
honest reading of what the screen does and does not measure: it
discriminates cobidders by participation pattern at a level that volume
cannot match, but the price reading is descriptive scope information,
not a damages parameter.

This is the **load-bearing audit** for [H:exposure-discipline](../hypotheses/exposure-discipline.md):
the observed AUC cannot come from volume + chance.

## Follow-ups

- Stratified sham permutation by modality (Convite vs Pregão sub-pools).
- Sham permutation on the strict-train sample
  ([AN-006](an-006-strict-prospective-holdout.md)) to test joint
  volume + timing artifact.
- Bootstrap the observed 0.911 to compare its SD to the sham SD
  directly (sham SD = 0.013; bootstrap of observed should also be tight
  — the bound is the SE of an AUC near 1.0).
- Add macros `\valShamMean`, `\valShamSD`, `\valShamQ99`, `\valShamP`
  to the `scripts/99_make_paper_values.R` pipeline.
