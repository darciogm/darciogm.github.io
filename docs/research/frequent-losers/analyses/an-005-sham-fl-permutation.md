---
paper: frequent-losers
id: an-005
hypothesis: exposure-discipline
type: placebo
question: Does cobidder concentration in the FL14 stratum survive a participation-volume-matched placebo ("sham FL")?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Pre/post permutation-based placebos preserve AUC in the 0.713–0.783 band [valAUCprePostCI]; observed concentration cannot be reproduced by reassignment that preserves the marginal participation distribution alone."
created: 2026-05-22
script: scripts/25_sham_fl_permutation.R
target: output/sham_fl/cade_permutation.csv
tags: ["H:exposure-discipline", placebo, permutation, sham-fl]
design:
  sample: "Always-loser firms in BEC 2009–2019 (16,843 firms)"
  specification: "Sham FL: random reassignment of the FL14 label among always-losers preserving the marginal distribution of tenders_count; bootstrap AUC over CADE permutations"
  notes: "Permutation-based exposure discipline. AUC pre/post bootstrap CI confirms that observed concentration is not a volume artifact"
---

# AN-005: Sham FL permutation placebo

## Question

Does cobidder concentration in the FL14 stratum survive a participation-
volume-matched placebo? If the result were driven by raw participation
volume rather than a signal-carrying loser-side footprint, permuting the
FL label while preserving volume should reproduce the concentration.

## Design

- **Sample**: 16,843 always-loser firms in BEC 2009–2019.
- **Sham construction**: random reassignment of the `FL14` label among
  always-losers preserving the marginal distribution of `tenders_count`.
- **Outcome**: bootstrap AUC distribution under permutations vs observed
  AUC.

## Results

The permutation-based AUC against the cobidder target lies in the
**0.713–0.783** band (`\valAUCprePostCI`), with `\valAUCprePost = 0.748`
as the pre/post midpoint. This is **substantially below** the observed
in-sample AUC of 0.924 for FL14
([AN-004](an-004-cobidder-baseline.md)) and 0.939 for the continuous
score.

The conservative-case benchmark (`\valConservativeCobidders` = 210
cobidders linked to `\valConservativeCases` = 4 direct-defendant cases
with `\valConservativeFD` = 30 direct defendants) corroborates the
pattern: observed cobidder enrichment exceeds the permutation null at
ratios consistent with the `\valDyadicRatio = 5.9` (and
`\valDyadicTopTenRatio = 2.0` for the top-10 cells) reported in the
legacy permutation results.

## Interpretation

Volume-matching alone does not reproduce the observed concentration. The
gap between the observed AUC (0.924) and the permutation band
(~0.713–0.783) is the *signal* margin that volume cannot mechanically
account for. Pair this with the exposure-stratum audit in
[AN-014](an-014-leakage-audit-d3.md), which disciplines the same
question via leakage-controlled re-estimation.

## Follow-ups

- Sensitivity to permutation granularity (tenders_count bins).
- Comparison with the strict timing variant in
  [AN-006](an-006-strict-prospective-holdout.md).
- Sub-period stability of the placebo band.
