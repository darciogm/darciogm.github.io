---
paper: bitter-pills
hide:
  - navigation
---

# Mind Map

The diagram below traces the paper's argument from the court mandate to the policy margin. A court mandate creates legal urgency, which admits two interpretations of higher procurement costs — a same-firm markup or fragmented sourcing. Three tests separate them. The finding is that, in deep repeated urgent markets, there is no broad same-firm markup; the cost margin is fragmented sourcing (lost scale plus supplier-set reallocation), while a residual within-firm gap persists in the earlier period (the quantity dimension reflecting scale, not same-firm pricing). The policy margin follows directly: preserve delivery while restoring aggregation under legal urgency.

```mermaid
flowchart TD
    A["Court mandate<br/>(right-to-health litigation)"] --> B["Legal urgency<br/>one-sided sanctions on the state"]

    B --> C{"Two interpretations<br/>of higher cost"}
    C --> D["Same-firm markup<br/>incumbent charges more"]
    C --> E["Fragmented sourcing<br/>scale and supplier set change"]

    D --> F["Tests"]
    E --> F

    F --> F1["Lee bounds<br/>selection in admin channel"]
    F --> F2["Within firm-buyer-item<br/>same-firm pricing test"]
    F --> F3["Winner switching<br/>who actually wins"]

    F1 --> G["Finding"]
    F2 --> G
    F3 --> G

    G --> G1["No broad same-firm markup<br/>in deep repeated urgent markets<br/>(β̂ = 0.035, SE 0.041)"]
    G --> G2["Fragmented sourcing is the margin<br/>3.3x scale loss · modal winner differs 70.2%"]
    G --> G3["Earlier period:<br/>residual within-firm gap<br/>(quantity dimension = scale)"]

    G1 --> H["Policy margin"]
    G2 --> H
    G3 --> H
    H --> H1["Preserve delivery"]
    H --> H2["Restore aggregation<br/>under legal urgency"]
```

> Court mandates do not merely affect how much the state pays; they change how the state is forced to buy. The administrative urgent channel is the closest feasible comparison — selected and larger, not random or clean — so the design combines Lee selection bounds, within firm-buyer-item pricing, and direct winner-switching evidence rather than relying on any single contrast.
