---
paper: sme-public
---

# Static welfare cost of full set-aside is ~28.9% of open-regime price (non-pharma)

!!! abstract "Intuition (plain-language)"
    The set-aside costs society in two ways at once. The contract goes to a
    higher-cost supplier (real resource waste), and the taxpayer foots a larger
    bill financed through distortionary taxes. Together the static loss is about
    29% of what the item would cost under open bidding — roughly R$38–89 million a
    year on this one product group. For the policy to still be worth it, a planner
    would have to value a real of SME producer surplus at about 2.42 reais of
    ordinary public money.

🟡 The full SME-only set-aside generates a static welfare loss of
**~28.9% of the open-regime price $p^{S_1}$** in standardized
non-pharmaceutical procurement at &lambda;=0.30
([AN-011](../analyses/an-011-welfare-arithmetic.md)). The loss
combines real allocative waste (DWL$_{\mathrm{alloc}}$ — the contract is
assigned to a higher-cost supplier) with the fiscal distortion from
financing the increased payment ($\lambda \cdot \Delta_{\mathrm{gov}}$
at the Ballard-Shoven-Whalley benchmark). Translated to public-finance
units on Group 65 alone, the welfare cost spans
**R$38–89 million per year** (US$11–25M) across the **30–70%** SME-eligible
adherence range, against a Group-65 annual reference outlay of ~R$345M
(non-pharma). This is one product group of São Paulo's R$13 billion
procurement platform.

The implied SME welfare weight required for a planner to prefer the
full set-aside over open auctions is ~2.42 in non-pharma — a planner
must value SME producer surplus at $2.42 of welfare for the
exclusionary regime to be rationalized as optimal
(see [Implied welfare weight](../hypotheses/implied-welfare-weight-large.md)).

**Caveat.** The welfare arithmetic inherits the maintained IPV-clock
restriction
([H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)). The
loss number is *static* — it holds entry and recovered willingness-to-supply
primitives fixed; it does not solve a counterfactual legal regime in
equilibrium. The pharma analog is 44.8% but more model-sensitive
([AN-016](../analyses/an-016-pharma-boundary.md)); pharma is treated as
a boundary case, not a second headline. The &lambda;=0.30 baseline is
the Ballard-Shoven-Whalley convention; the implied weight scales
inversely with &lambda;.

**Sources.**

- *Own analysis*: [AN-011](../analyses/an-011-welfare-arithmetic.md)
  (welfare arithmetic table); supporting
  [AN-016](../analyses/an-016-pharma-boundary.md) (pharma boundary),
  [AN-012](../analyses/an-012-preference-benchmark.md) (preference
  benchmark comparison).
- *Reports*: none direct.
- *News anchors*: none direct.
- *Cross-refs*: [H:static-welfare-loss-large](../hypotheses/static-welfare-loss-large.md);
  [H:implied-welfare-weight-large](../hypotheses/implied-welfare-weight-large.md);
  paper §5 (Static welfare and policy design); [docs/extensions.md](../extensions.md)
  Welfare cost panel.
- *Validation*: `v7-jpube-tight/scripts/55_welfare.R` and
  `56_welfare_bootstrap.R` produce the welfare-loss arithmetic;
  `57_welfare_adherence_sensitivity.R` produces the R$38–89M annual
  range.
