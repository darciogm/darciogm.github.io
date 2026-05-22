---
paper: frequent-losers
id: an-001
hypothesis: cobidder-concentration
type: descriptive
question: How is the persistent-zero-win-participation rank constructed, and what is its distribution across always-loser firms in BEC 2009–2019?
status: done
status_date: 2026-05-22
confidence: green
headline: "The always-loser pool contains 16,843 firms; the IQR-based FL14 cutoff (median + 1.5 × IQR = 13.5 tenders) selects 2,735 frequent-loser firms (16.2% of always-losers); the continuous score is log(1 + tenders_count)."
created: 2026-05-22
script: scripts/12_build_item_value.R
target: data/processed/firm_loss_stats.parquet
tags: ["H:cobidder-concentration", construction, rank, log-tenders-count]
design:
  sample: "Always-loser firms (win_rate == 0) in BEC LANCES panel 2009–2019; 16,843 firms drawn from 41,444 BEC firms total"
  specification: "Continuous: log(1 + tenders_count); Binary: FL14 = 1 if tenders_count > median + 1.5 × IQR (statistic = 13.5, rounded cutoff = 14)"
  notes: "Median + 1.5 × IQR (NOT Tukey Q3 + 1.5 × IQR — deliberate convention preserved across the pipeline)"
---

# AN-001: Persistent zero-win participation rank

## Question

How is the persistent-zero-win-participation rank constructed, and what
is its distribution across always-loser firms in BEC 2009–2019? The rank
is the empirical primitive of the paper's award-layer triage.

## Design

- **Sample**: 16,843 always-loser firms (`win_rate == 0`) in the BEC
  LANCES panel Jan 2009 – Dec 2019. The always-loser pool is constructed
  out of the full BEC firm registry of 41,444 firms.
- **Continuous score**: `log(1 + tenders_count)`. Monotone, not
  classificatory; carries the full information.
- **Binary rule (FL14)**: `1` if `tenders_count > 13.5` (the IQR
  threshold statistic). The integer cutoff of 14 is the auditable
  implementation.
- **Identification**: the rank is the empirical primitive; binary and
  continuous variants are documented side by side in
  [AN-002](an-002-iqr-threshold.md) and
  [AN-011](an-011-horse-race-continuous.md).

## Results

| Quantity | Value |
|---|---:|
| BEC firms total | 41,444 |
| Always-loser firms | 16,843 |
| IQR threshold statistic (median + 1.5 × IQR) | 13.5 |
| FL14 binary cutoff (integer) | 14 |
| FL14 firms | 2,735 |
| FL14 share of always-losers | 16.2% |
| Cobidders inside FL14 / share | 7.1% |

Output: `data/processed/firm_loss_stats.parquet`. The macro pipeline
(`values.tex`) carries the canonical figures via
`\valAlwaysLosers`, `\valFL`, `\valBECfirms`, `\valThreshold`,
`\valThresholdStat`, `\valFLrateAL`, `\valCobidShareFL`.

## Interpretation

The rank is small, transparent, and auditable. The IQR cutoff produces a
sharp binary rule (FL14) that selects roughly one in six always-losers,
which is consistent with the paper's framing of FL14 as a *deployable
operational rule* on top of an underlying continuous score. The 7.1%
cobidder share inside FL14 is the raw concentration that the downstream
audits and benchmarks discipline.

## Follow-ups

- Sensitivity of FL14 cutoff to alternative cutoff rules
  ([AN-002](an-002-iqr-threshold.md), [AN-023](an-023-theory-operationalization-audit.md)).
- Train-period-only construction
  ([AN-006](an-006-strict-prospective-holdout.md)).
- Continuous-only specification
  ([AN-017](an-017-gate-d3.md)).
