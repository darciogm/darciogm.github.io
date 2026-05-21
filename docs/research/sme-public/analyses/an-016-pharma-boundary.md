---
paper: sme-public
id: an-016
hypothesis: static-welfare-loss-large
type: robustness
question: How does the structural decomposition and welfare arithmetic behave in pharmaceuticals, and what makes pharmaceuticals a boundary case rather than a second headline?
status: pending
created: 2026-05-21
script: v7-jpube-tight/scripts/24_pharma.R
target: v7-jpube-tight/output/pharma_decomp.parquet
tags: ["H:static-welfare-loss-large", pharma, boundary-case, sensitivity, model-fragility]
design:
  sample: "Pharmaceutical Pregão drop-outs (class = pharma); compared to non-pharma standardized as reference"
  specification: "Same BNE decomposition + welfare arithmetic as AN-010 / AN-011, applied to the pharma cell; sensitivity to SME-pool composition and post-policy compositional churn"
  notes: "Pharma is reported as a boundary case in paper §4.5 due to thinner protected pool and larger composition changes"
---

# AN-016: Pharma boundary-case decomposition

## Question

The structural decomposition and welfare arithmetic produce *larger*
point estimates in pharmaceutical procurement than in standardized
non-pharma. Why is pharma reported as a *boundary case* rather than as
a second headline?

## Design

- **Sample**: pharmaceutical Pregão drop-outs (class = pharma in the
  structural classification);
  `v7-jpube-tight/scripts/33_pharma_flag.R` defines the cell.
- **Variation**: same BNE decomposition + welfare arithmetic as
  [AN-010](an-010-bne-decomposition.md) and
  [AN-011](an-011-welfare-arithmetic.md), applied to the pharma cell.
- **Specification**: sensitivity to (i) how the post-policy SME pool is
  modeled, (ii) within-class compositional churn pre vs post, (iii)
  pharma-specific licensing and product-mix structure.
- **Outcomes**: per-cell $S_1$, $S_2$, $S_3$, welfare loss; sensitivity
  to specification choices.

## Results

> *Pending — the pharma decomposition is computed but not yet
> documented here. Per paper §5, the pharma welfare loss at $\lambda=0.30$
> is `\welfLossPctLthirtyPh` = **44.8%** of the open-regime price; the
> exclusion magnitudes are larger in levels than in non-pharma. The
> reading that pharma is a boundary case rests on (i) the thinner
> protected pool (fewer SME firms qualify for pharma procurement under
> SME revenue thresholds), and (ii) larger composition changes in the
> active SME pool under the policy.*

## Interpretation

> *Pending. The most-informative comparison is whether the welfare
> *ranking* between $V_0$ and $S_1$ is stable across specification
> choices. In non-pharma it is; in pharma the ranking is sensitive to
> how the post-policy SME pool is modeled — this is the reason for the
> boundary-case treatment.*

Confidence: **pending.**

## Follow-ups

- Strict-invariance specification
  ([AN-017](an-017-strict-invariance.md)) applied to pharma: holding
  the SME pool fixed in composition should reduce the model
  sensitivity. If the welfare ranking survives strict invariance, the
  boundary-case treatment may be relaxed.
- Pharma protected-pool decomposition: split the
  protected-pool offset $S_3 - S_2$ into participation vs composition
  channels to isolate which margin is driving the pharma fragility.
- Cross-modality validation in pharma: a GPV recovery from
  pharmaceutical Convite bids would provide an independent check on
  the pharma cost-distribution recovery.
