---
id: h5
slug: exclusion-dominates
title: "The lost-discipline channel dominates the protected-pool offset in the absolute price decomposition"
cluster: B
paper_section: "§4"
status: partial
last_updated: 2026-05-21
---

# H:exclusion-dominates — The lost-discipline channel dominates the protected-pool offset in the absolute price decomposition

The set-aside changes the price-forming pool on two margins: it removes
non-SMEs from eligible auctions (the **lost-discipline** channel) and it
changes the protected SME pool through additional participation and
composition (the **protected-pool offset**). The decomposition compares
$|S_2 - S_1|$ (the lost-discipline magnitude, holding the pre-policy SME
pool fixed) against $|S_3 - S_2|$ (the protected-pool offset, replacing
the fixed pool with the observed post-policy pool). The paper's headline
claim is that the first magnitude dominates the second in standardized
non-pharmaceutical procurement.

!!! abstract "Intuition (plain-language)"
    The set-aside moves the price on two levers: it removes the non-SMEs who were setting the price, and it changes who is left in the SME pool. The decomposition asks which lever does more work. For ordinary (non-pharma) goods, simply removing the disciplining non-SMEs accounts for about 72% of the price change. The SME pool's response is real but secondary — exclusion, not composition, is the main story.

> **Evidence strength: Partial (strongly supported).**
> [AN-010](../analyses/an-010-bne-decomposition.md) reports an
> absolute exclusion share of 72.0% (non-pharma) and 68.8% (pharma) —
> lost-discipline channel dominates protected-pool offset.
> [AN-017](../analyses/an-017-strict-invariance.md) shows strict
> invariance ($F_c^{\mathrm{SME,Post}} = F_c^{\mathrm{SME,Pre}}$)
> reinforces dominance: share rises to **85% (NP) / 79% (PH)** when
> SME composition is held fixed. **AN-022 cluster bootstrap (B=500)
> reports 95% CI [64.5, 86.8] (NP) and [61.6, 85.2] (PH) on the
> absolute exclusion share — the lower endpoint exceeds 50%
> in every cell × winner-censoring regime**, so the dominance ordering
> survives bootstrap inference. Pharma inherits additional model
> sensitivity ([AN-016](../analyses/an-016-pharma-boundary.md)),
> hence the boundary-case treatment.

## Theory

In an independent-private-values English auction with a type-mixed bidder
pool, the expected payment under counterfactual bidder-pool $V$ is
$E[c_{(2)}^V]$ where $c_{(2)}$ is the second-order statistic. Comparing
three counterfactuals isolates two margins:
$S_2 - S_1$ removes the non-SME draws while holding the SME-draw
distribution fixed — a pure *removal* effect;
$S_3 - S_2$ replaces the SME draw distribution with the post-policy
estimate — a pure *protected-pool composition + entry* effect. The
decomposition follows the price-formation logic in
\citep{vickrey1961, haile2003, athey2002}.

## Prediction

In standardized non-pharma, $|S_2 - S_1| > |S_3 - S_2|$. Operationalized:
the absolute exclusion share $|S_2-S_1| / (|S_2-S_1| + |S_3-S_2|)$ should
exceed 50%, and meaningfully so (paper headline: ~72%). The
exclusion-to-net ratio $(S_2-S_1) / (S_3-S_1)$ should likewise exceed 1.

## Competing prediction

**Protected pool fully responds.** If the post-policy SME pool entirely
replaced the price-forming role of the excluded non-SMEs, the offset
$|S_3-S_2|$ would be at least as large as the exclusion magnitude. The
direct evidence against this alternative is the post-policy SME bidder
count: it rises sharply but does not reach the level required to recreate
the lost discipline. See [H:protected-pool-responds](protected-pool-responds.md).

## Setting evidence

São Paulo's BEC Pregão is an English-reverse auction that records
drop-out prices for every losing bidder. The structural sample is built
from these drop-outs, type-coded by SME status. The maintained
IPV-clock interpretation
([H:ipv-clock-admissible](ipv-clock-admissible.md)) is load-bearing for
the decomposition.

## Empirical test

- *Outcome variable*: simulated $E[c_{(2)}^V]$ normalized by the buyer
  reference price, for $V \in \{S_1, S_2, S_3\}$.
- *Variation*: counterfactual bidder pool — $S_1$ open pre-policy,
  $S_2$ SME-only pre-policy SME pool, $S_3$ SME-only observed
  post-policy SME pool.
- *Specification*: BNE simulation
  (`v7-jpube-tight/scripts/45_bne_simulation.R`) on recovered
  type-specific cost distributions, by class (non-pharma standardized,
  pharma).
- *Sample*: BEC Pregão drop-outs, period spanning the March 2018 cutoff;
  class-level cells (medical/hospital non-pharma vs pharmaceuticals).

## Data requirements and limitations

The decomposition inherits two structural restrictions: (1) the IPV-clock
reading of drop-outs and (2) the Krasnokutskaya-style auction-level
heterogeneity correction. Both are tested in robustness
([AN-014](../analyses/an-014-uh-correction.md),
[AN-015](../analyses/an-015-collusion-screens.md)). The $S_3 - S_2$ term
should not be read as a pure entry parameter — it combines additional
participation with changes in the active SME pool composition
(see [H:protected-pool-responds](protected-pool-responds.md)).

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-010](../analyses/an-010-bne-decomposition.md) | Supports | Absolute exclusion share ~72% in standardized non-pharma; exclusion-to-net ratio exceeds 1 in both non-pharma and pharma cells. |
| [AN-017](../analyses/an-017-strict-invariance.md) | Pending | Strict-invariance specification holding the SME pool fixed in composition — should preserve the dominance ordering if compositional churn is not the main driver. |
| [AN-016](../analyses/an-016-pharma-boundary.md) | Mixed | Pharma magnitudes larger but more model-sensitive; not load-bearing for the headline. |
| [AN-014](../analyses/an-014-uh-correction.md) | Supports | UH-correction ICCs 0.36–0.59; Gaussian-copula ρ_c=0.3 share drift <5pp, total drift <10%. Decomposition not mechanically produced by scale shocks. |
| [AN-022](../analyses/an-022-bootstrap-ci.md) | Supports | 95% CI on absolute exclusion share [64.5, 86.8] NP / [61.6, 85.2] PH — lower endpoint exceeds 50% dominance threshold in every cell × regime. Δ_total CI excludes zero. |

## Open tests

### Cross-modality validation

Re-run the decomposition on Convite first-price bids using a GPV
recovery; the converging direction would discipline the IPV-clock
restriction. Lives in `v7-jpube-tight/scripts/38_cross_modality.R`.

### Bootstrap dominance ordering

**Done** in [AN-022](../analyses/an-022-bootstrap-ci.md): cluster
bootstrap (B=500) at auction level. 95% CI on absolute exclusion
share [64.5, 86.8] NP / [61.6, 85.2] PH — exceeds 50% threshold in
every cell × regime. **Open**: BCa intervals and subsampling
variants for skew-robust inference; stratification by adherence-rate
for the fiscal-cost CI alignment.
