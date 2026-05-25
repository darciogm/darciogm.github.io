---
paper: sme-public
id: h10
slug: implied-welfare-weight-large
title: "A planner needs SME welfare weight ~2.42 to prefer the full set-aside over open auctions in non-pharma"
cluster: C
paper_section: "§5"
status: partial
last_updated: 2026-05-21
---

# H:implied-welfare-weight-large — A planner needs SME welfare weight ~2.42 to prefer the full set-aside over open auctions in non-pharma

The static welfare arithmetic produces a Saez-Stantcheva-style
*implied-weight* statistic: the marginal welfare weight on SME producer
surplus that a utilitarian planner would need to apply to be indifferent
between the full set-aside and the open auction. In standardized
non-pharma, the implied weight is ~2.42 — i.e., the planner must value
a dollar of SME producer surplus at $2.42 of welfare to find the
exclusionary regime optimal.

!!! abstract "Intuition (plain-language)"
    Rather than assert the set-aside is bad, the paper asks: how much would a government have to favor SME profits — above ordinary citizens' money — to make full exclusion worth it? In non-pharma the answer is 2.42: the planner must value a dollar of SME producer surplus at $2.42 of social welfare. That is a high bar, and it makes the policy's cost transparent in welfare-weight terms rather than just reais.

> **Evidence strength: Partial (strongly supported).**
> [AN-011](../analyses/an-011-welfare-arithmetic.md) reports the implied
> weight $\omega = 2.42$ in non-pharma, 2.61 in pharma.
> [AN-024](../analyses/an-024-lambda-welfare-ci.md) confirms the
> qualitative "substantially-above-unity" claim is stable across the
> λ grid [0.15, 0.45]: the implied $\omega$ scales linearly with the
> welfare loss; even at λ=0.15 (the most conservative MCPF benchmark),
> $\omega$ remains > 1.5. The welfare ranking $V_3 \succ V_0$ stable
> across λ in non-pharma means *no λ choice* rescues the set-aside
> under utilitarian weighting.

## Theory

The Saez-Stantcheva (2016) framework expresses social preferences as a
weighted sum of agents' marginal welfare contributions, where the
weights are recovered from policy choices. Applied to the SME set-aside,
the implied weight on SME producer surplus is the welfare weight that
rationalizes the full set-aside as optimal given the realized welfare
loss. A weight > 1 indicates the set-aside is justified only by
treating SME surplus as more socially valuable than dollar-for-dollar;
a weight = 1 implies the set-aside is dominated by less-exclusionary
designs at the planner's revealed preferences; a weight < 1 implies the
set-aside is *anti-redistributive* under the revealed preferences.

## Prediction

In standardized non-pharma, the implied SME welfare weight required for
indifference between the full set-aside ($V_0$) and the open auction
($S_1$) should be substantially greater than 1 — paper headline ~2.42.
In pharma, the implied weight should be even larger (paper §5 reports
the corresponding pharma number).

## Competing prediction

**Conventional weighting justifies the set-aside.** If standard
distributional weights (e.g., Hendren 2020 MVPF benchmarks) routinely
exceed 2 for low-income or small-firm beneficiaries, the implied weight
of 2.42 is not out of the ordinary. The interpretation of "large" is
therefore relative — the number is only meaningful by comparison to
the planner's *other* implied weights revealed elsewhere in tax or
transfer policy.

## Setting evidence

The implied-weight statistic is a *welfare-arithmetic output*, not a
revealed-preference recovery. It does not say what the São Paulo
planner *actually* values; it says what they *would have to value* to
make the policy optimal. The number is a comparison device, not a
preference attribution.

## Empirical test

- *Outcome variable*: implied SME welfare weight $\omega$ such that
  $\omega \cdot \text{SME transfer} = \text{DWL}_{\mathrm{alloc}} +
  \lambda \cdot \Delta_{\mathrm{gov}}$.
- *Variation*: solve for $\omega$ at the recovered welfare-loss
  magnitudes from [AN-011](../analyses/an-011-welfare-arithmetic.md);
  &lambda; = 0.30 baseline.
- *Specification*: closed-form inversion of the welfare-arithmetic
  identity; bootstrap CI from the welfare bootstrap.
- *Sample*: structural cells (non-pharma standardized; pharma boundary).

## Data requirements and limitations

Inherits all the welfare arithmetic's limitations. The implied weight
is calibration-sensitive to &lambda; (a higher &lambda; *reduces* the
required weight by inflating the fiscal-distortion side of the ledger).
The reading is *non-comparative* across studies unless the &lambda;
benchmark is aligned.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-011](../analyses/an-011-welfare-arithmetic.md) | Supports | Implied weight = 2.42 in non-pharma at &lambda;=0.30; corresponding pharma number larger but model-sensitive. |
| [AN-012](../analyses/an-012-preference-benchmark.md) | Supports (indirectly) | Under the 10% preference benchmark, the implied weight required for indifference is smaller — quantifies the welfare gain from non-exclusionary design. |
| [AN-024](../analyses/an-024-lambda-welfare-ci.md) | Supports | λ sensitivity: welfare ranking $V_3 \succ V_0$ stable across λ ∈ [0.15, 0.45] in non-pharma; implied $\omega$ > 1.5 even at λ=0.15. λ choice does not rescue the set-aside. |

## Open tests

### &lambda; sensitivity

The implied weight scales with the &lambda; baseline. A sweep over
&lambda; in {0.10, 0.20, 0.30, 0.50} would expose the calibration
sensitivity. Partly done in paper §5; would benefit from an explicit
AN page.

### Comparison to literature welfare weights

Comparing the implied weight to those revealed in (i) corporate tax
preferences, (ii) SME subsidy programs, or (iii) Saez-Stantcheva
analyses of comparable redistribution would provide a calibration
benchmark. Currently a discussion-section observation; a structured
comparison would strengthen the policy interpretation.
