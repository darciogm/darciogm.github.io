---
paper: sme-public
id: an-022
hypothesis: exclusion-dominates
type: robustness
question: What is the 95% bootstrap confidence interval on the absolute exclusion share, and does the lower endpoint exclude 50% (the dominance threshold)?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Cluster-bootstrap CI (B=500, auction-level resampling) on the absolute exclusion share gives [64.5%, 86.8%] in non-pharma and [61.6%, 85.2%] in pharma under the all-bidders baseline. The lower endpoint exceeds 50% in every cell × regime — the exclusion-dominant ordering survives bootstrap inference at the 95% level. Δ_total CI fully excludes zero across all three winner-censoring regimes (losers / all / Turnbull)."
created: 2026-05-21
script: v7-jpube-tight/scripts/51_bootstrap_ci.R
target: v7-jpube-tight/output/tables/tab_v3_bootstrap_ci.tex
tags: ["H:exclusion-dominates", "H:protected-pool-responds", bootstrap, confidence-interval, cluster-bootstrap, dominance-threshold]
design:
  sample: "BEC Pregão drop-outs, structural cells (non-pharma standardized; pharma)"
  specification: "B=500 cluster bootstrap at auction level. Each replicate (i) resamples auctions with replacement within (period × pharma × type) strata, (ii) refits F_c in three regimes (losers-only / all-bidders / Turnbull NPMLE), (iii) runs BNE MC with 500 auctions per scenario, (iv) computes Δ_total, share intens., share entry. 95% CI = empirical 2.5/97.5 percentiles over B replicates"
  weights: "Cluster bootstrap respects within-auction correlation from unobserved heterogeneity"
---

# AN-022: Bootstrap CI for the BNE decomposition

## Question

The point estimate of the absolute exclusion share is 72.0% in
non-pharma and 68.8% in pharma ([AN-010](an-010-bne-decomposition.md)).
The headline claim of [H:exclusion-dominates](../hypotheses/exclusion-dominates.md)
is that this share *exceeds 50%* — the dominance threshold below
which the lost-discipline and protected-pool offset channels would be
roughly equal in absolute magnitude. The point estimate clears this
threshold; does the 95% confidence interval clear it too?

## Design

- **Sample**: same structural cells as
  [AN-010](an-010-bne-decomposition.md) — BEC Pregão drop-outs across
  non-pharma standardized and pharma cells.
- **Variation**: cluster bootstrap at auction level (B = 500
  replicates), respecting within-auction correlation from
  unobserved heterogeneity (paired with the UH correction in
  [AN-014](an-014-uh-correction.md)).
- **Specification**: per bootstrap replicate, (i) resample auctions
  with replacement within (period × pharma × type) strata, (ii) refit
  $F_c$ in three regimes (losers-only / all-bidders / Turnbull
  NPMLE — see [AN-013](an-013-pregao-dropouts.md)), (iii) run BNE MC
  with 500 auctions per scenario, (iv) compute $\Delta_{\mathrm{total}}$,
  share intens., share entry.
- **Outcomes**: 95% CI on $\Delta_{\mathrm{total}}$, share intens.,
  share entry, by class × regime.

## Results

**Bootstrap CIs** (cluster at auction; B = 500 replicates;
`tab_v3_bootstrap_ci.tex`):

**Non-pharma:**

| Regime | Δ total [95% CI] | Share intens. [95% CI] | Share entry [95% CI] |
|---|---:|---:|---:|
| Losers-only | 0.255 [0.197, 0.314] | 74.0 **[65.8, 85.8]** | 26.0 [14.2, 34.2] |
| All-bidders | 0.234 [0.180, 0.291] | 73.2 **[64.5, 86.8]** | 26.8 [13.2, 35.5] |
| Turnbull    | 0.251 [0.194, 0.312] | 71.5 **[64.0, 82.2]** | 28.5 [17.8, 36.0] |

**Pharma:**

| Regime | Δ total [95% CI] | Share intens. [95% CI] | Share entry [95% CI] |
|---|---:|---:|---:|
| Losers-only | 0.360 [0.294, 0.433] | 70.6 **[62.5, 85.9]** | 29.4 [14.1, 37.5] |
| All-bidders | 0.305 [0.245, 0.370] | 70.0 **[61.6, 85.2]** | 30.0 [14.8, 38.4] |
| Turnbull    | 0.341 [0.272, 0.409] | 69.0 **[62.3, 80.1]** | 31.0 [19.9, 37.7] |

## Interpretation

**The 95% lower endpoint of the exclusion share exceeds 50% in every
cell × regime.** The lowest lower-endpoint across all 6 specifications
is **61.6%** (pharma, all-bidders regime); the highest lower-endpoint
is **65.8%** (non-pharma, losers-only). Even in the most pessimistic
bootstrap percentile across all regime choices, the lost-discipline
channel accounts for more than 60% of the absolute decomposition. The
exclusion-dominant ordering is robust to sampling variability at the
95% level.

**Δ_total CI fully excludes zero in every cell.** Across all 6
specifications, the lower endpoint of Δ_total is ≥ 0.180 (non-pharma)
or ≥ 0.245 (pharma) — economically large and statistically
distinguishable from zero. This is the bootstrap-equivalent of the
"set-aside raises prices" claim, evaluated on the structural
counterfactual rather than the reduced-form DDR.

**Regime sensitivity is within CI overlap.** The point estimates
across losers-only / all-bidders / Turnbull regimes (74.0 / 73.2 /
71.5 in non-pharma; 70.6 / 70.0 / 69.0 in pharma) all sit inside each
other's 95% CIs. The dominance ordering does not change with the
winner-censoring treatment.

**The lower-endpoint floor is the load-bearing number.** A 95% CI that
runs [64.5, 86.8] is *not* a claim that the exclusion share *is*
65–87%. It is a claim that, given sampling variability and the
auction-level cluster correlation, we can reject *at the 5% level*
any null where the share is below 64.5%. The dominance-vs-parity
threshold (50%) sits well outside the CI on all 6 specifications.

Confidence: **yellow.** The bootstrap is the within-project gold
standard for inference on the structural quantities. It is yellow
rather than green because (i) the bootstrap inherits the maintained
IPV-clock restriction from
[H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md),
(ii) the within-auction cluster correlation is bounded by the UH
correction rather than estimated unrestrictedly, and (iii) B = 500
replicates is sufficient for percentile CIs but could be larger
for tail-quantile precision.

## Follow-ups

- **Bias-corrected accelerated (BCa) intervals**: percentile CIs may
  understate width when the bootstrap distribution is skewed. BCa
  would give a more conservative interval.
- **Subsampling variant**: an $m$-out-of-$n$ subsampling bootstrap
  would be more robust to the joint dependence on UH correction +
  BNE simulation than the cluster bootstrap.
- **Stratification by adherence**: the bootstrap currently stratifies
  by (period × pharma × type). Adding adherence-rate strata would
  align the bootstrap CI with the realistic fiscal-cost range
  reported in [AN-011](an-011-welfare-arithmetic.md).
