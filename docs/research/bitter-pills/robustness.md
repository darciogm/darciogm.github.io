---
paper: bitter-pills
---

# Robustness

The robustness layer treats every exercise below as a diagnostic or sensitivity check on the main claims, not as a stand-alone identification design. The main claims rest on the Lee selection bounds, the within firm-buyer-item pricing test, and the sourcing evidence. These checks ask whether those claims survive plausible alternatives.

---

## Placebo on never-litigated items

If the main urgent-price pattern reflected generic procurement-platform dynamics or broad time trends, then administrative urgency among items **never observed in litigation** should reproduce it. It does not.

| Check | Coefficient | SE | Reading |
|---|:---:|:---:|---|
| Negotiated-price placebo (never-litigated) | **−0.020** | (0.032) | Null |

This is a falsification check against that specific alternative explanation, not a stand-alone identification design. The placebo coefficient is small and statistically indistinguishable from zero.

!!! econ "Economic intuition"
    This check isolates one rival explanation: that the urgent-price pattern is just a platform or calendar artifact. If it were, items *never* touched by litigation should reproduce it under administrative urgency. They do not — so the pattern tracks the litigation margin, not generic urgency-platform mechanics.

Detail: [AN-008 — Placebo on never-litigated items](analyses/an-008-placebo-never-litigated.md).

---

## Wild-cluster bootstrap inference

The main specifications cluster standard errors by purchasing unit (PBU). Because PBU clusters are few and uneven, the under-the-gun contrast is re-tested with Rademacher wild-cluster bootstrap inference.

| Specification | *p*-value |
|---|:---:|
| Preferred | **0.0080** |
| Item-by-year-month (tighter) | **0.0390** |

Both specifications reject a zero gap. The bootstrap addresses few-cluster inference; it does not remove the selection concern handled by the bounds.

!!! econ "Economic intuition"
    With few and uneven PBU clusters, conventional standard errors over-reject — they make weak results look significant. The wild bootstrap is the conservative honesty check on *inference*, and the gap still rejects zero. Note the division of labor: the bootstrap defends *confidence* in the number; selection is a separate problem, handled by the bounds.

Detail: [AN-007 — Wild-cluster bootstrap](analyses/an-007-wild-cluster-bootstrap.md).

---

## Lee bounds under alternative strata

The bounded under-the-gun gap is sensitive to the trimming strata. The analysis reports trimming rates, alternative trimming strata, and the non-informative parametric selection diagnostic. The interval **[15.9%, 21.1%]** is the disciplined object across the reported strata; it bounds selection under a monotonicity restriction rather than eliminating it.

!!! econ "Economic intuition"
    The width of the interval is a feature, not noise: it is the price of refusing to assume selection away. That the bracket survives reasonable changes in trimming strata is what licenses quoting the *interval* — not the naïve cross-sectional gap — as the object the reader should anchor on.

Detail: [AN-002 — Lee bounds](analyses/an-002-lee-bounds.md).

---

## Within-firm pricing: alternative clustering and market depth

The within firm-buyer-item null (β̂ = 0.035, SE 0.041) is examined under alternative clustering and across market-depth subsamples. The coefficient stays near zero where demand is deeper (above-median quantity, SUS-formulary), and turns positive where it is thinner (below-median quantity, earlier period). The deep-market null and the thin-market leverage caveat are both features of the data, framed as sensitivity rather than overclaim.

!!! econ "Economic intuition"
    Two facts coexist, and both are honest: no same-firm markup where demand is deep, and a positive within-firm gap where it is thin or early. That is what bargaining theory expects — outside options discipline a recurring supplier but thin out in shallow markets. Reporting both, rather than the convenient null alone, is what keeps the deep-market claim from becoming an overclaim.

Detail: [AN-003 — Within-firm pricing](analyses/an-003-within-firm-pricing.md) · [AN-004 — Market-depth heterogeneity](analyses/an-004-market-depth-heterogeneity.md).

---

*The dynamic event-study and Honest-DiD sensitivity machinery is reported as a diagnostic, not as primary identification — see [Advanced Methods](advanced.md).*
