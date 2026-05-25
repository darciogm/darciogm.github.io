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

**Caveat.** The preference benchmark holds entry fixed at the
pre-policy level by construction. If non-SMEs would systematically exit
when preferred against (because they cannot expect to win), the
preference behaves like a soft set-aside and the static-cost result
collapses. The simulation does not test entry elasticity; an
entry-elastic version would be a separate exercise. The 10% margin is
the cleanest benchmark; the diminishing-returns curve and the
preference level at which non-SMEs start dropping out is in the
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
