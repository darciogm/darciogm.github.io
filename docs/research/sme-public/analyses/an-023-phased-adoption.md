---
id: an-023
hypothesis: parallel-trends-hold
type: robustness
question: Does the DiD price coefficient survive dropping the 8-month BEC enablement window (Jul 2017–Feb 2018) during which the SME-only OC functionality was operationalized before the empirical cutoff of mass take-up?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Dropping the 8-month BEC enablement window (Jul 2017–Feb 2018; COMUNICADO BEC 02/2017 and 03/2017) reduces the DiD price coefficient from −0.109*** (full sample) to −0.087*** (drop-incubation). Effect persists with magnitude reduced by 22% but remains highly significant at p<0.01. The headline price effect is not driven by the rollout window."
created: 2026-05-21
script: v7-jpube-tight/scripts/70_phased_adoption.R
target: v7-jpube-tight/output/tables/tab_phased_adoption.tex
tags: ["H:parallel-trends-hold", "H:price-discipline-loss", phased-adoption, rollout-robust, comunicado-bec, did, item-fe]
design:
  sample: "BEC completed Pregão items, 18-month symmetric window [680, 715]; full sample vs sample with m ∉ [690, 697] excluded"
  specification: "ln(price) = β g65 × Pre + γ_1 convite + γ_2 ln(qty) + δ_i + δ_t + ε; item FE δ_i + month FE δ_t; item-clustered SE"
  fixed_effects: "item + month"
  cluster: "item"
  notes: "Drops m ∈ [690, 697] — the BEC functional-enablement window per COMUNICADO BEC 02/2017 and 03/2017"
---

# AN-023: Phased-adoption robustness — drop the BEC enablement window

!!! abstract "Intuition (plain-language)"
    The SME-only functionality was switched on gradually before mass take-up. If the price effect were really driven by that messy rollout window, dropping it should kill the result. Dropping the 8-month enablement window shrinks the coefficient by about 22% but it stays highly significant — the effect is not a rollout artifact.

## Question

The March 2018 PGE-SP legal reinterpretation triggered SME-only
tendering for group 65, but BEC operationally rolled out the
functionality earlier — COMUNICADOs BEC 02/2017 and 03/2017
documented the system changes between Jul 2017 and Feb 2018. If
the rollout window itself produces distinctive bidding behavior
(suppliers anticipating the cutoff, item-mix shifts as buyers learn
the new flow), the DiDiR could capture rollout dynamics rather than
the steady-state policy effect. Dropping the 8-month rollout window
and re-estimating the DiD is the natural robustness check.

## Design

- **Sample**: BEC completed Pregão items.
  - Full sample column: 18-month symmetric window [680, 715]
    (paper baseline).
  - Drop-incubation column: same window, but excluding the 8 months
    $m \in [690, 697]$ (Jul 2017 – Feb 2018).
- **Variation**: same DiD identification as
  [AN-001](an-001-didir-prices.md), but the regressor on the post-period
  picks up the cleaner steady-state post-cutoff observations rather
  than the rollout transition.
- **Specification**: $\ln(\mathrm{price}) = \beta\,g65 \times \mathrm{Pre}
  + \gamma_1\,\mathrm{convite} + \gamma_2 \ln(\mathrm{qty}) + \delta_i + \delta_t + \varepsilon$
  with item FE $\delta_i$, month FE $\delta_t$, item-clustered SE.

## Results

| Specification | β on $g65 \times \mathrm{Pre}$ | SE | N | p |
|---|---:|---:|---:|---|
| Full sample (paper baseline) | **−0.109*** | (0.012) | 625,627 | <0.01 |
| Drop incubation ($m \notin [690, 697]$) | **−0.087*** | (0.012) | 489,758 | <0.01 |
| Δ vs baseline | +0.022 | — | −135,869 | — |

Output: `output/tables/tab_phased_adoption.tex`.

## Interpretation

**The headline survives the rollout exclusion.** Removing the 8-month
operationalization window reduces the DiD coefficient by ~22%
(from −0.109 to −0.087) but the steady-state effect remains highly
significant (p<0.01) and economically large. The headline is not
mechanically driven by the rollout window.

**The 22% reduction is informative, not damning.** Two readings are
consistent with the data:
- *Anticipation*: bidders shifted behavior during Jul 2017 – Feb 2018
  in anticipation of the cutoff (e.g., non-SMEs reducing
  participation early, SMEs preparing). The 22% magnitude difference
  is then a *rollout component* layered on top of the steady-state
  policy effect.
- *Cleaner contrast*: the rollout window is genuinely noisy (system
  changes, buyer learning, item-mix shifts). Dropping it produces a
  tighter steady-state contrast, and the lower magnitude is the
  *truer* steady-state effect.

Either reading leaves the headline intact: open competition delivers
~9–11% lower negotiated prices in switched group 65, with the
steady-state floor at 8.7% and the headline reading at 10.9%.

**Implication for the structural decomposition.** The structural BNE
inputs ([AN-013](an-013-pregao-dropouts.md)) are estimated on the
full pre/post sample, which includes the rollout window. If the
rollout window were biasing the structural drop-out distributions,
the reduced-form DiD would also be biased in the same direction.
The fact that the reduced-form survives the rollout exclusion
suggests the structural inputs are not heavily contaminated either.
This is an indirect check on
[H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md) —
the structural drop-out distributions inherit the same rollout
exposure but the magnitude of contamination, bounded by 22% on the
reduced-form coefficient, is small enough that the structural
exclusion-dominant ordering is unlikely to flip.

Confidence: **yellow.** The DiD-with-exclusion is mechanically clean
(it is the same regression on a subsample). The 22% magnitude
reduction is informative but cannot be diagnostically attributed
between anticipation and rollout-noise readings without an
out-of-period replication.

## Follow-ups

- **Apply the same exclusion to the structural pipeline**: re-run
  [AN-013](an-013-pregao-dropouts.md) drop-out extraction excluding
  $m \in [690, 697]$ from the structural sample and re-fit the BNE
  simulation. If the structural exclusion share moves by less than the
  reduced-form magnitude (22%), the structural reading is more robust
  than the reduced-form.
- **Symmetric pre-period exclusion placebo**: drop 8 months of the
  pre-period far from the policy (e.g., $m \in [680, 687]$) and
  re-estimate. If the DiD changes by a comparable 22% magnitude, the
  reduction is partly mechanical (smaller N) rather than substantive.
