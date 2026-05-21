---
paper: sme-public
---

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

**Caveat.** The reason pharma is more model-sensitive is twofold:
(i) the protected SME pool is thinner (fewer SME firms eligible for
pharmaceutical procurement under SME revenue thresholds), so
counterfactual entry-response simulations are noisier; (ii) composition
of the active SME pool changes more under the policy (drug-specific
sourcing rotates more), so the
[H:protected-pool-responds](../hypotheses/protected-pool-responds.md)
participation-vs-composition decomposition is fragile in pharma. The
strict-invariance specification ([AN-017](../analyses/an-017-strict-invariance.md))
should pin down the composition margin if it is the driver.

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
