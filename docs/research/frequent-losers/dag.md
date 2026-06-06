---
paper: frequent-losers
---

# Paper DAG

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

The directed acyclic graph of the paper's argument: how the institutional
premise flows through the award-layer construct, the **decomposition** that
disciplines it, and the **reach-and-limits** map that is the contribution.
Each node is a claim or object; each arrow is "supports / leads to."

```mermaid
flowchart TD
    %% ---------- Premise ----------
    P0["Cartel enforcement must allocate costly<br/>proof-producing effort <b>before</b> proof exists"]:::premise
    P1["Two observability layers:<br/><b>award</b> (cheap, routine) vs<br/><b>bid</b> (costly LANCES recovery)"]:::premise
    P0 --> P1

    %% ---------- Construct ----------
    subgraph CON["Award-layer construct"]
      direction TB
      C1["Always-losers (win-rate = 0)<br/>16,843 firms"]:::obj
      C2["Frequent-loser score<br/>s = log(1 + T), T = tender-item participations"]:::obj
      C3["FL14 = T &ge; 14 (median + 1.5&middot;IQR)<br/><i>administrative implementation, not structural</i>"]:::obj
      C1 --> C2 --> C3
    end
    P1 --> C1

    %% ---------- Validation target ----------
    V1["Validation target: 651 <b>cobidders</b><br/>(adjudication-anchored exposure,<br/>non-circular label, <i>not</i> cartel members)"]:::target
    V2["Direct CADE defendants =<br/>legal anchors (win-heavy)"]:::target
    C2 --> V1
    V2 -. anchors .-> V1

    %% ---------- Decomposition: the method ----------
    subgraph DEC["Decomposition — the contribution"]
      direction TB
      D1["Hold procurement <b>opportunity</b> fixed<br/>raw ROC 0.761; label-blind opportunity 0.553 &rarr; within-stratum 0.471 (&approx;chance)<br/><b>fragile increment +0.010</b> (p=0.013, not robust)"]:::method
      D2["<b>Timing</b>: orders firms retrospectively<br/>among incumbents; full-universe ROC &approx; 0.474 (below chance);<br/>sequential strict-timing infeasible"]:::limit
      D3["<b>Single-case</b>: leave-largest-case-out<br/>PR-AUC 0.143 &rarr; 0.090 (&minus;37%);<br/>one case &approx; 32% of positives"]:::limit
      D4["<b>Scope</b>: binary AUC &approx; 0.49 vs direct defendants<br/>&mdash; by design (continuous score 0.66&ndash;0.70)"]:::limit
      D5["<b>Armor battery</b> (anchor-agnostic):<br/>label-blind opportunity 0.553; positive control 0.953;<br/>perm power 0.97 @ 0.55; label-frozen timing 0.713"]:::method
      D6["<b>Over-crediting bias as an estimable object</b> (Prop., App. C):<br/>&Delta; = AUC_raw &minus; AUC_opp-adj is a size-bias gap;<br/>SIGNS only &mdash; &uarr; in CV(T), &darr; in base rate (no closed form);<br/>CV(T) is a pre-bid-file <i>diagnostic</i>, not a fix"]:::model
    end
    V1 --> D1
    D1 --> D2
    D1 --> D3
    V1 --> D4
    V2 --> D4
    D1 --> D5
    D1 --> D6

    %% ---------- Architecture ----------
    subgraph ARC["Division of labor between layers"]
      direction TB
      A1["Award ranks <b>where to look</b>;<br/>bid evaluates <b>what is found</b>"]:::arch
      A2["Bid benchmark: bid RF 0.717 / award 0.760 /<br/>combined PR 0.188 random-CV but 0.103 case-grouped<br/>&mdash; conditional complementarity, case-fragile"]:::arch
      A3["Cost-recall frontier: at K1=2000,<br/>firm pool &minus;88% but bid-row footprint &minus;33%;<br/>K1=1000 beats K1=2000 &mdash; no optimal cutoff"]:::arch
      A4["<b>Enforcer optimal-stopping rule</b> (Prop., App. B):<br/>descend ranking until V&middot;&rho;(K)=c&middot;&phi;(K) &hArr; &rho;/&phi;=c/V;<br/>sweep c/V &rarr; locus of optima.<br/><i>&lsquo;No optimal cutoff&rsquo; is a RESULT; the frontier is its image</i>"]:::model
      A1 --> A2 --> A3
      A4 -. image .-> A3
    end
    D1 --> A1
    C3 --> A3

    %% ---------- Price (scope) ----------
    PR1["Price = <b>scope</b>, not damages:<br/>broad +0.064 &rarr; overlap-cell ATT &minus;0.097 &rarr;<br/>Q4 +0.041 only; mechanism <b>not identified</b>"]:::scope
    D4 --> PR1

    %% ---------- Conclusion ----------
    Z1["<b>Map of reach and limits</b>:<br/>cheap records order forensic priority<br/>within a bounded, retrospective, incumbent reach"]:::concl
    Z2["Liability remains in the<br/>richer bid-level record"]:::concl
    D1 --> Z1
    D2 --> Z1
    D3 --> Z1
    D5 --> Z1
    A3 --> Z1
    PR1 --> Z1
    Z1 --> Z2

    classDef premise fill:#1f2a44,stroke:#3b4a6b,color:#fff;
    classDef obj fill:#27384f,stroke:#3e5c79,color:#eaf2fb;
    classDef target fill:#34425a,stroke:#5b6f93,color:#eaf2fb;
    classDef method fill:#1f4d3a,stroke:#2e7d5b,color:#eafaf0;
    classDef limit fill:#5a3a2a,stroke:#9a5b3b,color:#fbeee6;
    classDef arch fill:#2d3f5c,stroke:#4a679a,color:#eaf2fb;
    classDef scope fill:#4a3a5c,stroke:#6f4a9a,color:#f2eafb;
    classDef concl fill:#143b4a,stroke:#1f6f8b,color:#eafaf8;
    classDef model fill:#13313a,stroke:#2a7d8b,color:#e6fbfa;
```

!!! note "How to read it"
    The green nodes are the paper's methodological core — the **opportunity
    decomposition** that strips mechanical co-participation exposure from the raw
    award-layer score (0.761) and finds that almost nothing survives: genuine
    label-blind opportunity ranks the label at only 0.553, the within-stratum AUC
    is ≈ chance (0.471), and the only positive is a fragile +0.010 increment that
    is not robust across designs. The **armor battery** (anchor-agnostic) decides
    the deflationary verdict: a planted positive control recovers 0.953
    (falsifiability), the permutation test has power 0.97 at within-AUC 0.55, and
    label-frozen timing (0.713) shows generic contact forecasting, not
    cartel-specific prediction. The ranking by *observed* contact (0.905) is
    mechanical label encoding, not a winning model. The brown nodes are the
    **limits** the same decomposition exposes (below-chance out-of-time ordering,
    single-case dependence, the direct-defendant scope boundary). The two teal
    nodes are the v24 reframe's **positive modeled objects**: the **enforcer
    optimal-stopping rule** (whose image is the cost-recall frontier — "no
    optimal cutoff" is a *result*, the frontier is the locus of budget-dependent
    optima) and the **over-crediting bias** $\Delta$ (a size-bias
    characterization of the deflation, stated as *signs only* — increasing in
    $\mathrm{CV}(T)$, decreasing in the base rate, no closed form, with
    $\mathrm{CV}(T)$ a pre-bid-file diagnostic). The contributions are these two
    modeled objects plus a **disciplined audit protocol** — not a deployable
    cartel detector.

!!! abstract "Second platform: the same DAG re-run on federal ComprasNet (§5)"
    The entire decomposition branch above (raw award score → label-blind
    opportunity → within-stratum residual → armor battery) was re-run
    **unchanged** on the federal **ComprasNet** platform (2013–2019, pure
    Pregão) against the same family of CADE anchors, and **reaches the same
    verdict**: the deflation replicates. Federally the raw award-layer ROC is
    0.744, label-blind opportunity ranks the label at 0.611, the within-stratum
    residual falls to ≈ chance (**0.462**), the nested increment is null
    (**+0.005, $p = 0.191$**), and the negative controls return the surviving
    order to generic opportunity/volume geometry. The strict full-universe
    prospective collapse carries too (ROC 0.489 federal / 0.474 BEC). The
    construct **ports and deflates; it does not break.** This is a
    second-platform demonstration of the protocol, **provisional** —
    **partially overlapping legal anchors** (the 7 federal cases are the same
    cartels as the BEC portfolio, establishment-anchored), not a promotion to
    "Confirmed." Full battery in §5 and Appendix G; see the
    [Changelog](changelog.md) v23 entry.
