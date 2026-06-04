---
paper: frequent-losers
---

# Paper DAG

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
    V1["Validation target: 193 <b>cobidders</b><br/>(adjudication-anchored exposure,<br/><i>not</i> cartel members)"]:::target
    V2["Direct CADE defendants =<br/>legal anchors (win-heavy)"]:::target
    C2 --> V1
    V2 -. anchors .-> V1

    %% ---------- Decomposition: the method ----------
    subgraph DEC["Decomposition — the contribution"]
      direction TB
      D1["Hold procurement <b>opportunity</b> fixed<br/>exposure-only AUC 0.946 &rarr; within-stratum 0.7715<br/><b>genuine increment +0.042</b> (DeLong p&approx;2e-6)"]:::method
      D2["<b>Timing</b>: orders firms retrospectively<br/>among incumbents; full-universe ROC &approx; 0.55;<br/>sequential strict-timing infeasible"]:::limit
      D3["<b>Single-case</b>: leave-largest-case-out<br/>PR-AUC 0.126 &rarr; 0.036 (&minus;71%);<br/>one case &approx; 55% of positives"]:::limit
      D4["<b>Scope</b>: AUC &approx; 0.49 vs direct defendants<br/>&mdash; by design (loser-side screen)"]:::limit
    end
    V1 --> D1
    D1 --> D2
    D1 --> D3
    V1 --> D4
    V2 --> D4

    %% ---------- Architecture ----------
    subgraph ARC["Division of labor between layers"]
      direction TB
      A1["Award ranks <b>where to look</b>;<br/>bid evaluates <b>what is found</b>"]:::arch
      A2["Bid benchmark: Imhof 0.888 / FL 0.921 /<br/>combined 0.962 (full-observability upper bound)<br/>&mdash; complementarity, not dominance"]:::arch
      A3["Cost-recall frontier: at K1=2000,<br/>firm pool &minus;88% but bid-row footprint &minus;33%;<br/><i>one operating point, not an optimum</i>"]:::arch
      A1 --> A2 --> A3
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
```

!!! note "How to read it"
    The green node is the paper's methodological core — the **opportunity
    decomposition** that separates a genuine ranking signal (+0.042) from the
    mechanical exposure arithmetic (0.946) that inflates the raw pooled AUC. The
    brown nodes are the **limits** that the same decomposition exposes
    (retrospective ordering, single-case dependence, the direct-defendant scope
    boundary). The contribution is not a deployable cartel detector — it is the
    method that draws this boundary, and the map of where cheap administrative
    records can, and cannot, order forensic priority.
