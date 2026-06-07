---
paper: sme-public
---

# A 10% SME price preference delivers redistribution at near-zero static price cost

!!! abstract "Intuition (plain-language)"
    There is a cheaper way to favor SMEs than locking everyone else out. Give SMEs
    a 10% price handicap but keep non-SMEs in the room: the disciplining bidders
    stay, the government still pays the real winning bid, and SMEs win more often.
    The static price cost relative to open bidding is essentially zero. It buys
    less redistribution than the full set-aside — but the real policy choice is not
    "support SMEs or not," it is "exclude rivals" versus "tilt the allocation while
    keeping the price-forming pool intact."

🟡 A static 10% SME price preference simulated under the recovered
cost primitives keeps non-SME bidders eligible and disciplining the
price-forming order statistic. The resulting price shift relative to
the open benchmark $S_1$ is essentially zero in standardized non-pharma,
while the SME win-rate rises by a meaningful margin
([AN-012](../analyses/an-012-preference-benchmark.md)). The preference
is not a *free* version of the set-aside — it delivers less
redistribution (the SME win-rate rise is smaller than under the full
SME-only regime) — but it shifts the static welfare frontier in a way
that the exclusionary regime cannot match: the price-forming pool
remains intact, the government pays the actual winning bid, and the
implicit transfer to SMEs is delivered through allocation tilt rather
than through bidder elimination.

The headline reading is that **the relevant policy frontier is not SME
support versus no support — it runs between exclusionary redistribution
and support that preserves the price-forming bidder pool**. The 10%
preference is a *static design benchmark* of the second branch, not a
forecast of a legal preference regime.

**Entry-response bound.** The preference benchmark holds entry fixed at
the pre-policy level by construction. Because the legal shock does not
identify entry costs, the paper does not solve a free-entry
counterfactual — it *bounds* the welfare ranking instead. Scaling
non-SME participation under the preference down from its open-auction
rate (the worst case, since the preference handicaps non-SMEs), and
holding SME entry conservatively at its pre-policy rate, the
preference-beats-set-aside ranking ($V_3 \succ V_0$) survives until the
preference drives out **~90% of non-SME entrants in non-pharma**
(participation collapsing from 2.68 to about a quarter of a bidder per
auction) and survives **complete removal of non-SME entry in
pharmaceuticals** (the full set-aside is so costly there). Letting SME
entry respond — which a real preference would induce — only *widens*
the preference's margin in both classes. This is a bound, not a
free-entry counterfactual; entry costs are not identified
([AN-012](../analyses/an-012-preference-benchmark.md); paper §6.4 and
Online Appendix OA-E, Table OA-3). So the near-zero static cost result
does not hinge on the fixed-entry assumption: non-SMEs would have to be
driven out almost entirely before the ranking could flip.

The 10% margin is the cleanest benchmark; the diminishing-returns curve
and the preference level at which non-SMEs start dropping out is in the
optimal-preference search (`v7-jpube-tight/scripts/61_optimal_preference.R`,
not yet a standalone AN).

**Sources.**

- *Own analysis*: [AN-012](../analyses/an-012-preference-benchmark.md)
  (preference benchmark simulation);
  [AN-011](../analyses/an-011-welfare-arithmetic.md) (welfare arithmetic
  it is compared against).
- *Reports*: none direct.
- *News anchors*: none direct.
- *Cross-refs*: [H:preference-near-zero-cost](../hypotheses/preference-near-zero-cost.md);
  [H:static-welfare-loss-large](../hypotheses/static-welfare-loss-large.md);
  paper §5 (Set-aside versus preference).
- *Validation*: `v7-jpube-tight/scripts/61_optimal_preference.R` and
  `60_distributional_incidence.R` for the optimal-preference search and
  the within-SME distribution of the win-rate gain.
