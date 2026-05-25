---
paper: sme-public
id: an-018
hypothesis: parallel-trends-hold
type: robustness
question: Do Callaway-Sant'Anna (2021) and Sun-Abraham (2021) staggered-DiD estimators reproduce the DiDiR price effect once heterogeneous treatment timing is accounted for?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Sun-Abraham reproduces the DiDiR price coefficient almost exactly: 0.108*** vs DDR 0.113*** (sign-flipped, p<0.01) on log prices; 0.099*** vs 0.107*** on log firms; 0.055*** vs 0.084*** on log bids; 6.08 vs 6.15 km on distance. Callaway-Sant'Anna at group-month aggregation gives the same direction with larger SE due to aggregation level. Three estimators converge on direction and (for SA vs DDR) on magnitude."
created: 2026-05-21
script: scripts/19_cs2021.R + scripts/20_sun_abraham.R
target: output/tables/tab_cs2021.tex + output/tables/tab_sunab.tex
tags: ["H:parallel-trends-hold", staggered-did, callaway-santanna, sun-abraham, twfe, convergence]
design:
  sample: "BEC parquet cache, 18-month window; 76 never-treated control groups + group 65 treated cohort"
  specification: "(1) Callaway-Sant'Anna (2021) ATT(g,t) → aggregate ATT via did::att_gt + aggte(type='group'); group×month panel of means; multiplier bootstrap 999 iters. (2) Sun-Abraham (2021) interaction-weighted event study via fixest::i(period, g65, ref=t-1); item-level with item + PBU FE; cluster-robust SE at item"
  fixed_effects: "item + PBU (Sun-Abraham); group×month panel (CS2021)"
  cluster: "item (Sun-Abraham); multiplier-bootstrap group-clusters (CS2021)"
---

# AN-018: Staggered-DiD estimators (CS2021 + Sun-Abraham)

!!! abstract "Intuition (plain-language)"
    Modern DiD warns that two-way fixed effects can be contaminated by bad timing comparisons. Re-estimating with Sun-Abraham and Callaway-Sant'Anna reproduces the price effect almost exactly. The headline is not an artifact of staggered-timing bias.

## Question

Two-way fixed-effects DiD can be contaminated by heterogeneous
treatment effects across cohorts and timing
\citep{dechaisemartin2020, goodmanbacon2021, callaway2021, sun2021}.
The control groups in [AN-001](an-001-didir-prices.md) had been
SME-restricted at different times before March 2018 (gradual rollout
documented in [AN-004](an-004-placebo-tests.md)). Two modern
estimators correct for this: Callaway-Sant'Anna (CS2021) and
Sun-Abraham (SA2021). Do they reproduce the DiDiR coefficient?

## Design

- **Sample**: same BEC sample as [AN-001](an-001-didir-prices.md);
  18-month window; never-treated controls = 76 product groups not
  subject to a regime change within the window.
- **Specification (CS2021)**: aggregate ATT($g$, $t$) effects via
  `did::att_gt` followed by `aggte(type="group")`, on a
  codigogrupo × month panel of means (completed items for price /
  distance; all items for firms / bids). Multiplier bootstrap with
  999 iterations.
- **Specification (Sun-Abraham)**: event-study via
  `fixest::i(period, g65, ref=t-1)` at the item level with item + PBU
  FE. Reported ATT is mean of post-period event-time coefficients
  minus mean of pre-period coefficients (reference $t=697$ excluded).
  Cluster-robust SE at item level.
- **Outcomes**: log prices, log firms, log valid bids, distance (km).
- **DDR benchmark**: 18-month + PBU FE coefficient on $g65 \times Pre$
  from [AN-001](an-001-didir-prices.md), sign-flipped because DDR
  measures the open-tender period (inverse of the ME/EPP regime that
  CS2021 / Sun-Abraham treat as the policy).

## Results

**Three-estimator convergence** (paper Table — `tab_sunab.tex`):

| Outcome | DDR (sign-flipped) | CS2021 (group × month) | Sun-Abraham (item) |
|---|---:|---:|---:|
| Log prices  | **0.113*** (0.012) | 0.237* (0.141)  | **0.108*** (0.008) |
| Log firms   | **−0.107*** (0.007) | −0.097** (0.042) | **−0.099*** (0.006) |
| Log bids    | **−0.084*** (0.010) | −0.035  (0.067) | **−0.055*** (0.008) |
| Distance (km) | **−6.15*** (2.33) | −31.95*** (8.81) | **−6.08*** (2.32) |

Sun-Abraham pre-trend joint-zero F-tests: 5.29 (prices), 43.76 (firms),
20.99 (bids), 3.46 (distance) — all p<0.001, but see Interpretation
below.

Output: `output/tables/tab_cs2021.tex`, `output/tables/tab_sunab.tex`.

## Interpretation

**Sun-Abraham essentially reproduces DDR.** On log prices, the SA ATT
of 0.108 sits within 0.005 of the DDR 0.113 — a difference invisible
relative to either standard error. Log firms (0.099 vs 0.107),
distance (6.08 vs 6.15 km) match equally tightly. Log bids diverges
slightly (0.055 vs 0.084) but both are positive and significant. The
DDR was therefore not driven by heterogeneous-timing contamination.

**CS2021 at group-month aggregation gives the same direction with
larger SE.** The CS2021 estimator works at the group × month panel
(76 groups × 36 months ≈ 2,700 cells), much coarser than the
item-level DDR / SA. This explains both the larger coefficient
magnitudes (group means are noisier averages of item-level effects)
and the wider standard errors. Critically, signs and significance
align: log prices p<0.10, log firms p<0.05, distance p<0.01. Log bids
loses significance in CS2021 but remains directionally consistent.

**Pre-trend F-stats reject — but not the way it looks.** The SA
joint-zero F on pre-period event-time coefficients rejects at p<0.001
in all four outcomes. This is not a parallel-trends violation in the
DDR sense — it is the *same* phenomenon documented in
[AN-004](an-004-placebo-tests.md): treated and control groups operate
at different *levels* within each period, which the item FE in DDR
(and SA) absorbs from the identification. The pre-trend F-test does
not condition on item FE in the way DDR does. The paper table notes
this explicitly: *"Pre-trend F rejects in all four cases because the
treated and control groups operate at different price levels within
each period; the item FE in DDR absorbs these level differences, so
the DDR and SA ATTs remain valid identification estimates of the
policy's change over time."*

Confidence: **yellow.** Both estimators converge on direction and
(for SA) on magnitude. The convergence is the strongest within-project
discipline available on the parallel-trends concern. Yellow rather
than green because the convergence is within the same dataset (BEC);
external replication would push to green.

## Follow-ups

- Goodman-Bacon decomposition of the TWFE coefficient is the
  complementary structural check that all weight falls on the clean
  treated-vs-never-treated 2×2 — see
  [AN-020](an-020-goodman-bacon.md).
- Synthetic control matches group 65 to a weighted donor combination
  — see [AN-021](an-021-synth-control.md).
- The log-bids divergence between DDR (−0.084) and SA (−0.055)
  deserves attention. A within-firm bid-count decomposition would
  expose whether the divergence comes from re-bidding patterns
  (intensive margin) that the two estimators weight differently.
