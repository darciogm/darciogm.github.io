---
paper: bitter-pills
---

# Advanced Methods

This page documents the dynamic and identification machinery that supports the analysis. These methods are reported as **diagnostics**: they help with timing and sensitivity, but they are not the primary identification. The main claims rest on the Lee selection bounds, the within firm-buyer-item pricing test, and the sourcing evidence.

---

## 1. Dynamic event study (BJS) and Honest-DiD sensitivity

The dynamic evidence is useful for timing, not for the primary identification strategy. The BJS event-study estimator (Borusyak, Jaravel, and Spiess, 2024) traces the litigated-procurement price path around exposure; Honest-DiD (Rambachan and Roth, 2023) tests how robust the early estimate is to controlled deviations from parallel trends.

| Estimate | Coefficient | SE |
|---|:---:|:---:|
| BJS, first post-exposure period (t0) | **0.052** | (0.018) |
| BJS, five periods after exposure (t5) | **0.147** | (0.026) |

The first post-period estimate **does not survive Honest-DiD deviations at the observed maximum pre-period scale**. Because the dynamic design is sensitive to plausible deviations from parallel trends, it is used as diagnostic evidence rather than as a basis for the main claims.

!!! econ "Economic intuition"
    A rising event-study path is seductive but easy to over-read: it identifies a causal dynamic only if pre-trends would have stayed flat absent treatment. Honest-DiD asks how large a violation of that assumption it would take to overturn the early estimate — and here a violation no bigger than the observed pre-period scale suffices. So the dynamics are kept for *timing*, while identification rests on the bounds, the within-firm test, and the sourcing evidence instead.

Detail: [AN-010 — Dynamic BJS and Honest-DiD](analyses/an-010-dynamic-bjs-honestdid.md).

---

## 2. Lee trimming bounds

The price comparison conditions on a screened, overrepresented administrative channel. Lee (2009) trimming bounds discipline that selection within item-by-year-by-PBU strata, trimming the high and low tails of the administrative price distribution to produce lower and upper bounds for the litigated-over-administrative gap. The bounds discipline selection under a monotonicity restriction; they do not eliminate it or point-identify a counterfactual with sanctions removed. The selection-corrected interval is **[15.9%, 21.1%]**.

!!! econ "Economic intuition"
    When the comparison group is selected, a point estimate is a guess dressed as a fact. Lee bounds give up point identification on purpose: trimming the tails of the over-represented administrative group brackets the true gap under a single monotonicity restriction. Honest partial identification beats a fragile point estimate — the interval is the credible object.

Detail: [AN-002 — Lee bounds](analyses/an-002-lee-bounds.md).

---

## 3. Wild-cluster bootstrap

With few and uneven PBU clusters, conventional cluster-robust inference can be unreliable. Rademacher wild-cluster bootstrap inference re-tests the under-the-gun contrast: the preferred specification gives *p* = 0.0080, and the tighter item-by-year-month specification gives *p* = 0.0390. The bootstrap addresses few-cluster inference; it does not remove the selection concern handled by the bounds.

!!! econ "Economic intuition"
    Cluster-robust asymptotics assume *many* clusters; with few, the usual reference distribution is wrong and tests over-reject. The wild bootstrap rebuilds the null distribution by reweighting cluster residuals, so inference no longer leans on a large cluster count. It buys credible *p*-values — and says nothing about bias or selection, which are handled elsewhere.

Detail: [AN-007 — Wild-cluster bootstrap](analyses/an-007-wild-cluster-bootstrap.md).

---

These three methods support the analysis but are not its primary identification. They establish timing (BJS, as a diagnostic), discipline selection (Lee bounds), and stabilize inference (wild-cluster bootstrap) around claims that the main design already carries.
