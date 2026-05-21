# Pharmaceutical procurement is a boundary case, not a second headline

🟡 The structural decomposition and welfare arithmetic in pharmaceutical
procurement produce *larger* point estimates than in standardized
non-pharma — exclusion magnitudes higher, welfare loss ~44.8% of the
open-regime price at &lambda;=0.30
([AN-011](../analyses/an-011-welfare-arithmetic.md)). But the pharma
estimates inherit additional model sensitivity that the non-pharma
estimates do not, and the welfare *ranking* between the full set-aside
and the open auction is sensitive to how the post-policy SME pool is
modeled ([AN-016](../analyses/an-016-pharma-boundary.md)). The
non-pharma ranking is stable across the main and strict-invariance
specifications; the pharma ranking is not. Pharma is therefore reported
in the paper as a **boundary case**, not as a second headline.

The pharma reading is held to a different evidentiary standard: it is
useful as *qualitative confirmation* (the dominance ordering points the
same way) but not as *quantitative claim* (the headline magnitudes are
not load-bearing). Anyone citing the pharma magnitudes should note the
scope conditions of paper §4 (sec:pharma\_scope).

**Caveat.** [AN-016](../analyses/an-016-pharma-boundary.md) now
documents the four-margin diagnosis of why pharma is fragile:
(i) **thinner pre-policy SME pool** (0.55 Pregão bidders/auction vs
0.94 in non-pharma); (ii) **heavier turnover** — 61.9% of post-policy
pharma SME *firms* are new entrants (vs 23% in non-pharma);
(iii) **primitive-invariance failure** — KS distance 0.141 after UH
correction (vs passing in non-pharma); (iv) **strict-invariance
ranking flip** — implied SME welfare weight drops to **0.7** (below
unity) under strict invariance, flipping $V_3 \succ V_0$ to
$V_0 \succ V_3$ in pharma but not non-pharma. Pharma is a
qualitative confirmation of direction, not a headline-citable
magnitude.

**Sources.**

- *Own analysis*: [AN-016](../analyses/an-016-pharma-boundary.md)
  (pharma decomposition + sensitivity);
  [AN-011](../analyses/an-011-welfare-arithmetic.md) (pharma welfare
  arithmetic table); [AN-017](../analyses/an-017-strict-invariance.md)
  (strict-invariance sensitivity).
- *Reports*: none direct.
- *News anchors*: none direct.
- *Cross-refs*: [H:static-welfare-loss-large](../hypotheses/static-welfare-loss-large.md);
  paper §4.5 (Pharma scope statement); paper §5 (Welfare ranking
  stability).
- *Validation*: `v7-jpube-tight/scripts/24_pharma.R` and
  `33_pharma_flag.R` for the pharma cell definition;
  `57_strict_invariance.R` for the strict-invariance sensitivity.
