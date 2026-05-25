---
paper: sme-public
---

# Static welfare cost of full set-aside is ~28.9% of open-regime price (non-pharma)

🟡 The full SME-only set-aside generates a static welfare loss of
**~28.9% of the open-regime price $p^{S_1}$** in standardized
non-pharmaceutical procurement at &lambda;=0.30
([AN-011](../analyses/an-011-welfare-arithmetic.md)). The loss
combines real allocative waste (DWL$_{\mathrm{alloc}}$ — the contract is
assigned to a higher-cost supplier) with the fiscal distortion from
financing the increased payment ($\lambda \cdot \Delta_{\mathrm{gov}}$
at the Ballard-Shoven-Whalley benchmark). Translated to public-finance
units on Group 65 alone, the welfare cost spans
**R$55–128 million per year** (US$16–37M), depending on the SME-eligible
adherence rate. This is one product group of São Paulo's R$13 billion
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
  Welfare Cost (v6) panel.
- *Validation*: `v7-jpube-tight/scripts/55_welfare.R` and
  `56_welfare_bootstrap.R` produce the welfare-loss arithmetic;
  `57_welfare_adherence_sensitivity.R` produces the R$55–128M annual
  range.
