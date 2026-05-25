---
paper: sme-public
id: an-011
hypothesis: static-welfare-loss-large
type: descriptive
question: What is the per-auction static welfare loss of the full SME-only set-aside, decomposed into allocative DWL and MCPF distortion at λ=0.30?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Per-auction static welfare loss of the full SME-only set-aside is 28.9% of the open-regime price in standardized non-pharma at λ=0.30 (DWL_alloc + λ · MCPF); pharma analog is 44.8% but model-sensitive. Implied SME welfare weight required for indifference: 2.42 (non-pharma). Annualized cost on Group 65 alone: R$38–89M (US$11–25M) across the 30–70% adherence range."
created: 2026-05-21
script: v7-jpube-tight/scripts/55_welfare.R
target: v8-jpube/output/values.tex
tags: ["H:static-welfare-loss-large", "H:implied-welfare-weight-large", welfare, mcpf, dwl, saez-stantcheva]
design:
  sample: "Structural cells (non-pharma standardized; pharma boundary)"
  specification: "Loss(V_0) = DWL_alloc + λ · (p^V_0 − p^S_1); DWL_alloc = c_(1)^V_0 − c_(1)^S_1; λ=0.30 baseline (Ballard-Shoven-Whalley)"
  notes: "Implied SME welfare weight ω solves ω · transfer = DWL_alloc + λ · Δ_gov"
---

# AN-011: Static welfare arithmetic

!!! abstract "Intuition (plain-language)"
    Translate the price effect into welfare: the waste from a higher-cost supplier winning, plus the extra cost of raising public funds to pay the bill. At λ=0.30 that is about 29% of the open price in ordinary goods — and a planner would need to value SME profits at 2.42× ordinary money to call it worth it. On Group 65 alone, R$38–89M a year.

## Question

What is the per-auction static welfare cost of the full SME-only
set-aside, decomposed into real allocative waste and fiscal distortion?
And what SME welfare weight would a planner need to apply to be
indifferent between the set-aside and the open regime?

## Design

- **Sample**: structural cells from
  [AN-010](an-010-bne-decomposition.md) — non-pharma standardized;
  pharma boundary case.
- **Variation**: counterfactual policy regime $V_0$ (full SME-only)
  vs $S_1$ (open).
- **Specification**: Loss($V_0$) = DWL$_{\mathrm{alloc}}$ +
  $\lambda \cdot (p^{V_0} - p^{S_1})$, where DWL$_{\mathrm{alloc}} =
  c_{(1)}^{V_0} - c_{(1)}^{S_1}$. The first term is real allocative
  waste (the winner has a higher production cost under the set-aside);
  the second is the fiscal distortion at the marginal cost of public
  funds $\lambda = 0.30$ baseline.
  - Implied SME welfare weight $\omega$ solves
    $\omega \cdot \text{transfer} = \text{DWL}_{\mathrm{alloc}} + \lambda \cdot \Delta_{\mathrm{gov}}$.
  - Bootstrap CIs from
    `v7-jpube-tight/scripts/56_welfare_bootstrap.R`.
- **Outcomes**: $\Delta_{\mathrm{gov}}$, DWL$_{\mathrm{alloc}}$,
  $\lambda \cdot$ MCPF, total Loss / $p^{S_1}$, implied weight $\omega$.

## Results

From `v8-jpube/output/values.tex`. All shares of reference price
$p^{S_1}$; $\lambda = 0.30$ baseline (Ballard-Shoven-Whalley).

| | Non-pharma | Pharma (boundary) |
|---|---:|---:|
| $\Delta_{\mathrm{gov}}$ (payment increase) | 0.247 | 0.298 |
| DWL$_{\mathrm{alloc}}$ (allocative waste) | 0.148 | 0.207 |
| $\lambda \cdot \Delta_{\mathrm{gov}}$ (MCPF distortion) | 0.074 | 0.089 |
| **Total loss / $p^{S_1}$** | **28.9%** | **44.8%** |
| Bootstrap lower endpoint | 20.5% | 34.9% |
| **Implied SME welfare weight $\omega$** | **2.42** | **2.61** |

Pharma magnitudes are larger but inherit additional model sensitivity —
treated as a boundary case ([AN-016](an-016-pharma-boundary.md)).

Annualized on Group 65 alone: **R$38–89M per year (US$11–25M)** across
the 30–70% adherence range
(`v7-jpube-tight/scripts/57_welfare_adherence_sensitivity.R`).

Output: macros in `v8-jpube/output/values.tex`; paper table
`tab_welfare_policy_v8` in §5.

## Interpretation

The set-aside is costly on *both* welfare margins: the contract is
assigned to a higher-cost supplier (real allocative waste) *and* the
government pays more (fiscal distortion at $\lambda$). The implied
welfare weight of 2.42 means a planner must value SME producer surplus
at $2.42 of welfare to find the full set-aside optimal — a number that
should be benchmarked against the *other* welfare weights implied
elsewhere in the planner's revealed preferences.

The R$38–89M annual range comes from the SME-eligible adherence-rate
sensitivity across the **30–70%** range reported in the paper, against a
Group-65 annual reference outlay of ~R$345M (non-pharma) and ~R$363M
(pharma). The headline is meaningful because it is one product group of
a single state's R$13B procurement platform.

Confidence: **yellow.** The welfare arithmetic inherits the structural
decomposition's restrictions
([H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)) and
the $\lambda=0.30$ benchmark (Ballard-Shoven-Whalley). Sensitivity to
$\lambda$ is reported in paper §5. The non-pharma reading is the
load-bearing claim; pharma is boundary.

## Follow-ups

- $\lambda$ sweep: report welfare loss at $\lambda \in \{0.10, 0.20, 0.30, 0.50\}$
  as a sensitivity table.
- Distributional incidence of the set-aside redistribution:
  `v7-jpube-tight/scripts/60_distributional_incidence.R` shows the
  SME-side gain distribution; documenting it as a standalone AN would
  expose the within-SME concentration of the transfer.
- Comparison to literature welfare weights from corporate tax or SME
  subsidy programs (e.g., Hendren 2020 MVPF benchmarks): the implied
  weight of 2.42 is only meaningful relative to the planner's other
  revealed weights.
