---
paper: sme-public
id: h8
slug: static-welfare-loss-large
title: "The full SME-only set-aside generates a static welfare loss of ~28.9% of the open-regime price in non-pharma"
cluster: C
paper_section: "§5"
status: partial
last_updated: 2026-05-21
---

# H:static-welfare-loss-large — The full SME-only set-aside generates a static welfare loss of ~28.9% of the open-regime price in non-pharma

The set-aside raises government payments and reassigns the contract to a
higher-cost supplier. The static welfare cost combines real allocative
waste (DWL$_{\mathrm{alloc}} = c_{(1)}^{V_0} - c_{(1)}^{S_1}$) with the
fiscal distortion from raising the additional public funds at the
marginal cost of public funds &lambda;. The headline magnitude in
standardized non-pharma is large — ~28.9% of the open-regime price at
&lambda;=0.30. The implied annualized welfare cost on Group 65 alone
spans R$55–128M per year (US$16–37M).

> **Evidence strength: Partial (strongly supported).**
> [AN-011](../analyses/an-011-welfare-arithmetic.md) reports
> 28.9% non-pharma / 44.8% pharma at λ=0.30.
> [AN-024](../analyses/an-024-lambda-welfare-ci.md) extends this with:
> (i) **λ sensitivity** — loss runs 24.0% → 33.3% across λ ∈ [0.15, 0.45]
> in non-pharma, 38.4% → 52.5% in pharma; (ii) **bootstrap CI at λ=0.30**
> = [20.5, 34.8] non-pharma / [34.9, 55.9] pharma; (iii) **welfare
> ranking $V_3 \succ V_0$** stable across the entire λ range in
> non-pharma (under both main and strict-invariance specs); pharma
> ranking determined by main vs strict-invariance, *not by λ*.
> [AN-025](../analyses/an-025-adherence-sensitivity.md) translates to
> **R$38–128M/yr (US$11–37M) annualized** on Group 65 alone across
> adherence rates 30%–100%; empirical baseline 43% → **R$55M/yr (US$16M)**.

## Theory

The static per-auction welfare loss combines the allocative wedge
$\mathrm{DWL}_{\mathrm{alloc}} = c_{(1)}^{V_0} - c_{(1)}^{S_1}$ with an
MCPF distortion $\lambda \cdot (p^{V_0} - p^{S_1})$
\citep{ballard1985, hendren2020, finkelstein2020}. The first term is
real allocative waste; the second is the fiscal distortion. The
remainder of the payment increase is a transfer to the protected winner
and enters welfare only weighted by the planner's SME welfare weight
(see [H:implied-welfare-weight-large](implied-welfare-weight-large.md)).

## Prediction

In standardized non-pharma, the welfare loss as a share of the
open-regime price $p^{S_1}$ should be large — paper headline ~28.9% at
&lambda;=0.30. The bootstrap lower endpoint should remain economically
meaningful (~20%+). Pharma should show a *larger* point estimate but
*wider* model sensitivity.

## Competing prediction

**The transfer-to-SMEs is welfare-positive at conventional weights.**
A utilitarian planner with no SME-specific weight (weight = 1) would
count the additional SME producer surplus dollar-for-dollar against the
fiscal+allocative cost. The welfare arithmetic in the paper deliberately
*excludes* this transfer from the social-cost accounting — the loss
number is the *non-transfer* component. A planner who counts the
transfer at full weight would still face the allocative + MCPF cost
calculated here, but the implied welfare weight required for a
preference reversal would be different
(see [H:implied-welfare-weight-large](implied-welfare-weight-large.md)).

## Setting evidence

Group 65 (medical/hospital supplies) accounts for ~27% of BEC volume.
São Paulo's BEC platform handles ~R$13B/year in standardized goods
procurement. The R$55–128M/year welfare cost is therefore on a single
product group of a single state's procurement platform.

## Empirical test

- *Outcome variables*: $\Delta_{\mathrm{gov}}$ (payment increase),
  DWL$_{\mathrm{alloc}}$ (allocative waste), MCPF distortion, total
  Loss / $p^{S_1}$. All in reference-price units.
- *Variation*: counterfactual policy regime $V_0$ (full SME-only) vs
  $S_1$ (open).
- *Specification*: BNE simulation with recovered type-specific cost
  distributions, $\lambda = 0.30$ baseline (Ballard-Shoven-Whalley
  benchmark); bootstrap CIs from
  `v7-jpube-tight/scripts/56_welfare_bootstrap.R`.
- *Sample*: structural cells (non-pharma standardized; pharma boundary
  case).

## Data requirements and limitations

The welfare arithmetic depends on (i) the IPV-clock interpretation
holding ([H:ipv-clock-admissible](ipv-clock-admissible.md)); (ii) the
&lambda; benchmark — &lambda;=0.30 is the Ballard-Shoven-Whalley
midpoint; sensitivity to &lambda; is reported in §5 of the paper;
(iii) the SME-pool composition under the policy
([H:protected-pool-responds](protected-pool-responds.md)).

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-011](../analyses/an-011-welfare-arithmetic.md) | Supports | Non-pharma welfare loss = 28.9% of open-regime price at &lambda;=0.30; pharma 44.8% but boundary case. |
| [AN-016](../analyses/an-016-pharma-boundary.md) | Mixed | Pharma magnitudes larger but more model-sensitive; reported as boundary case, not headline. |
| [AN-017](../analyses/an-017-strict-invariance.md) | Supports | Strict invariance preserves non-pharma dominance ordering; exclusion share rises to 85% (NP) / 79% (PH). Welfare ranking $V_3 \succ V_0$ in NP under both specs. |
| [AN-024](../analyses/an-024-lambda-welfare-ci.md) | Supports | Bootstrap 95% CI at λ=0.30: [20.5, 34.8] NP / [34.9, 55.9] PH. Loss > 18% even at λ=0.20 lower-CI endpoint. Ranking stable across λ ∈ [0.15, 0.45]. |
| [AN-025](../analyses/an-025-adherence-sensitivity.md) | Supports | Annualized fiscal cost R$38–128M/yr across adherence 30%–100%; baseline 43% → **R$55M/yr (US$16M)** on Group 65 alone. |

## Open tests

### Adherence-rate sensitivity

`v7-jpube-tight/scripts/57_welfare_adherence_sensitivity.R` varies the
SME-eligible adherence rate to bound the realized fiscal cost. The
R$55–128M annual range comes from this; documenting it as an AN page
would expose the calibration explicitly.

### Optimal preference comparison

[AN-012](../analyses/an-012-preference-benchmark.md) compares the full
set-aside ($V_0$) against a 10% SME price preference ($V_3$). The
welfare-cost gap between $V_0$ and $V_3$ is the magnitude of the
"exclusion premium" relative to a non-exclusionary alternative; the
headline reading is in
[H:preference-near-zero-cost](preference-near-zero-cost.md).
