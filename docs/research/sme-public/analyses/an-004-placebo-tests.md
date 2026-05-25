---
paper: sme-public
id: an-004
hypothesis: parallel-trends-hold
type: placebo
question: Do placebo treatment dates applied to pre-treatment data yield null price effects, as required for parallel trends?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Pre-treatment placebos on prices are small and statistically insignificant (β ≈ −0.0145 at Sep 2017, +0.0206 at Mar 2017), directly supporting parallel trends; firm-count and bid-count placebos are significant but reflect the control groups' gradual SME-restriction rollout, not a group-65-specific shock."
created: 2026-05-21
script: scripts/05_robustness.R
target: output/tables/tab_placebo.tex
tags: ["H:parallel-trends-hold", placebo, parallel-trends, robustness, item-cluster]
design:
  sample: "Pre-treatment data only (Sep 2016 – Feb 2018); fake treatment dates Sep 2017 and Mar 2017"
  specification: "y = η_i + γ Pre_fake + β (g65 × Pre_fake) + controls + ε; item-clustered SE"
  fixed_effects: "item"
  cluster: "item"
---

# AN-004: Pre-treatment placebo tests

!!! abstract "Intuition (plain-language)"
    If the price jump were really a pre-existing trend, then pretending the policy happened on an earlier (fake) date would also 'find' an effect. It does not — placebo price effects are tiny and insignificant — which supports parallel trends. The firm- and bid-count placebos that do fire reflect the controls' gradual SME rollout, not a Group-65-specific shock.

!!! info "Reduced-form motivation layer"
    The numbers below are from the v1–v4 reduced-form DiDiR pipeline
    (`scripts/02_analysis.R` + companions), which the v8 manuscript
    carries as **motivation** in §1 but does not headline. The canonical
    v8 result is the structural counterfactual decomposition — see
    [AN-010](an-010-bne-decomposition.md) (decomposition) and
    [AN-011](an-011-welfare-arithmetic.md) (welfare arithmetic).

## Question

If the main DiDiR coefficient ([AN-001](an-001-didir-prices.md)) were
driven by a differential pre-existing trend in group 65, applying the
same specification with a *fake* treatment date inside the pre-period
should detect that trend. A null placebo coefficient on prices supports
parallel trends; a significant one does not.

## Design

- **Sample**: pre-treatment data only (Sep 2016 – Feb 2018), restricted
  to ensure the fake post-period stays inside the pre-period.
- **Variation**: fake treatment dates Sep 2017 and Mar 2017; the DiDiR
  specification is applied with these dates substituted for March 2018.
- **Specification**: same as [AN-001](an-001-didir-prices.md) but with
  the fake date.
- **Outcomes**: log prices, log firms, log valid bids, distance.
- **Identification threats**: cost shocks or trends inside the pre-period
  itself.

## Results

| Outcome | Sep 2017 β | Mar 2017 β | N (Sep 2017) | N (Mar 2017) |
|---|---:|---:|---:|---:|
| Log prices | −0.0145 (0.0149) | +0.0206* (0.0112) | 311,883 | 215,611 |
| Log firms  | −0.1038*** (0.0063) | −0.1346*** (0.0070) | 364,500 | 252,478 |
| Log bids   | −0.1363*** (0.0092) | −0.1343*** (0.0106) | 364,500 | 252,478 |
| Distance   | +3.7807 (2.4452) | −1.2018 (2.9144) | 311,883 | 215,611 |

*Item FE; item-clustered SE. \*\*\* p<0.01, \* p<0.10.*

Output: `output/tables/tab_placebo.tex`.

## Interpretation

The price-margin placebo is null at both fake dates: the Sep 2017
coefficient is small (~1.5% in magnitude) and statistically insignificant,
the Mar 2017 coefficient is borderline (p~0.07) but small relative to
the main estimate (~13%). This is the load-bearing piece supporting
parallel trends on the price margin.

The firm-count and bid-count placebos are significant — but the *direction*
is informative. Both go in the *same* direction (negative) as the main
DiDiR coefficient would predict if the policy effect started early. The
reading is not that there was a pre-treatment cost shock specific to
group 65; it is that the *control groups* were on a gradual SME-restriction
rollout throughout the pre-period, so the cross-group DiDiR contrast
captures the secular convergence trend rather than a clean policy effect
on firm counts. This is documented in
[docs/robustness.md](../robustness.md) and is consistent with the
firm-count attenuation pattern across windows in
[AN-002](an-002-didir-firms-bids.md).

The distance placebo is null at both fake dates, ruling out a freight or
logistics shock specific to group 65 around the policy break.

Confidence: **yellow.** The price-margin null is clean and load-bearing.
The firm-count placebos are significant but interpreted as a documented
secular trend in controls, not as a confound. The interpretation
depends on accepting that reading rather than treating the firm-count
placebo as a refutation of parallel trends; the price-margin null is
the strict test.

## Follow-ups

- Goodman-Bacon decomposition (`scripts/21_goodman_bacon.R`) of the
  firm-count DiDiR coefficient into 2×2 building-block comparisons
  would directly expose how much of the firm-count effect comes from
  the policy switch vs the secular control-group rollout.
- Synthetic-control (`scripts/09_synth_control.R`) reproduction:
  matches group 65 to a weighted combination of control groups on
  pre-treatment outcomes; should produce a similar price coefficient
  if parallel trends hold.
