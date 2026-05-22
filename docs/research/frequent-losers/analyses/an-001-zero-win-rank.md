---
id: an-001
hypothesis: cobidder-concentration
type: descriptive
question: How is the persistent-zero-win-participation rank constructed, and what is its distribution across always-loser firms in BEC 2009–2019?
status: pending
created: 2026-05-22
script: scripts/12_build_item_value.R
target: data/processed/firm_loss_stats.parquet
tags: ["H:cobidder-concentration", construction, rank, log-tenders-count]
design:
  sample: "Always-loser firms (win_rate == 0) in BEC LANCES panel 2009–2019"
  specification: "log(1 + tenders_count) over always-losers; binary FL14 = IQR threshold rule (median + 1.5 × IQR)"
  notes: "FL14 cutoff ~14 tenders; rank is monotone, not classificatory"
---

# AN-001: Persistent zero-win participation rank

## Question

How is the persistent-zero-win-participation rank constructed, and what is
its distribution across always-loser firms in BEC 2009–2019? The rank is
the empirical primitive of the paper's award-layer triage.

## Design

- **Sample**: always-loser firms (`win_rate == 0`) in the BEC LANCES panel
  Jan 2009 – Dec 2019.
- **Construction**: `tenders_count` per firm, then the continuous score
  `log(1 + tenders_count)`. The binary `FL14` rule applies the IQR
  threshold (median + 1.5 × IQR on always-loser tenders_count → cutoff
  ≈ 14).
- **Identification**: monotone rank, not a classifier; the binary rule
  is auditable but does not exhaust the information in the continuous
  score.

## Results

*Pending.* Headline distribution numbers (median, IQR, top-decile cutoff,
share of always-losers above FL14) will be populated when the script run
is documented here.

## Interpretation

*Pending.* See [H:cobidder-concentration](../hypotheses/cobidder-concentration.md)
for the substantive role of this rank.

## Follow-ups

- Sensitivity of FL14 cutoff to alternative IQR rules.
- Comparison of FL14 cutoff stability across sub-periods.
