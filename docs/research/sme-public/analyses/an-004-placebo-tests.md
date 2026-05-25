---
paper: sme-public
id: an-004
hypothesis: parallel-trends-hold
type: placebo
question: Do placebo treatment dates applied to pre-treatment data yield null price effects, as required for parallel trends?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Pre-reform price placebos are small relative to the real cutoff: the v8 benchmark reports −0.013 (Sep 2017), −0.030 (Mar 2017), and −0.034 (Jun 2017), all far below the −0.108 to −0.142 real-cutoff range, supporting parallel trends on the price margin. Firm- and bid-count placebos fire but reflect the control groups' gradual SME-restriction rollout, not a Group-65-specific shock."
created: 2026-05-21
script: scripts/05_robustness.R
target: output/tables/tab_placebo.tex
tags: ["H:parallel-trends-hold", placebo, parallel-trends, robustness, item-cluster]
design:
  sample: "Pre-treatment data only; placebo cutoffs Sep 2017, Mar 2017, and Jun 2017"
  specification: "y = η_i + γ Pre_fake + β (g65 × Pre_fake) + controls + ε; item-clustered SE"
  fixed_effects: "item"
  cluster: "item"
---

# AN-004: Pre-treatment placebo tests

!!! abstract "Intuition (plain-language)"
    If the price jump were really a pre-existing trend, then pretending the policy happened on an earlier (fake) date would also 'find' an effect. It does not — placebo price effects are tiny and insignificant — which supports parallel trends. The firm- and bid-count placebos that do fire reflect the controls' gradual SME rollout, not a Group-65-specific shock.

!!! info "Reduced-form benchmark layer"
    The price placebos below are the v8 canonical numbers reported in §5.1
    (reduced-form robustness), which the manuscript uses to discipline the
    timing-and-sign benchmark — not the headline. The canonical policy result
    is the structural counterfactual decomposition — see
    [AN-010](an-010-bne-decomposition.md) (decomposition) and
    [AN-011](an-011-welfare-arithmetic.md) (welfare arithmetic).

## Question

If the reduced-form price benchmark ([AN-001](an-001-didir-prices.md)) were
driven by a differential pre-existing trend in group 65, applying the
same specification with a *fake* treatment date inside the pre-period
should detect that trend. A small placebo coefficient on prices supports
parallel trends; a large one does not.

## Design

- **Sample**: pre-treatment data only, restricted to ensure the fake
  post-period stays inside the pre-period.
- **Variation**: placebo cutoffs Sep 2017, Mar 2017, and Jun 2017,
  substituted for the real March 2018 cutoff.
- **Specification**: the reduced-form DiD on $\log p^{\mathrm{final}}$.
- **Outcomes**: log prices (primary); log firms, log valid bids, distance
  reported in the broader reduced-form battery below.
- **Identification threats**: cost shocks or trends inside the pre-period
  itself.

## Results

Canonical v8 price placebos (§5.1), in the same DiD-in-reverse sign
convention as the real cutoff:

| Placebo cutoff | $g65 \times Pre$ on $\log p^{\mathrm{final}}$ |
|---|---:|
| Sep 2017 | −0.013 |
| Mar 2017 | −0.030 |
| Jun 2017 | −0.034 |
| **Real cutoff (Mar 2018)** | **−0.108 to −0.142** |

*The placebo coefficients are far smaller in magnitude than the real-cutoff
range, supporting parallel trends on the price margin.*

!!! note "Earlier reduced-form pipeline (fuller battery)"
    The v1–v4 pipeline (`scripts/05_robustness.R` → `tab_placebo.tex`) ran a
    two-date × four-outcome placebo battery. Its price placebos were −0.0145
    (Sep 2017) and +0.0206 (Mar 2017) — slightly different point estimates
    from the v8 spec but the same qualitative conclusion (small, near-zero on
    the price margin). The firm- and bid-count placebos were significant and
    negative (e.g. log firms −0.104/−0.135; log bids −0.136/−0.134 at
    Sep/Mar 2017), and the distance placebo was null (+3.8 / −1.2 km).

## Interpretation

The price-margin placebos are small relative to the real cutoff: all three
pre-reform dates (−0.013, −0.030, −0.034) sit far below the −0.108 to −0.142
real-cutoff range (~10–11% movement). This is the load-bearing piece
supporting parallel trends on the price margin.

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
