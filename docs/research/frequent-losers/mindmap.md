---
paper: frequent-losers
---

# Mind Map

Interactive overview of the paper's logical structure. Click and drag to explore.

```mermaid
mindmap
  root((Cheap Signals,<br/>Costly Proof:<br/>Award-Layer<br/>Evidence Triage))
    **Institutional Setting**
      Two observability layers
        Award layer cheap and routine
        Bid layer costly forensic-recoverable
      BEC Platform
        Sao Paulo state
        2009-2019
      1.65M analysis tender-items
      41K unique firms
      Modalities Convite and Pregao
      Lei 14.133/2021
        Consolidates pregao default
    **Frequent-Loser Screen**
      Always-losers
        win rate = 0%
        16,843 firms
      IQR threshold
        median + 1.5 x IQR ~ 14
      2,735 FL firms
        Treatment: tender has >= 1 FL
      Primitive
        log(1+tenders_count)
        Binary flag is its coarsening
    **Validation Target**
      Cobidders adjudication-anchored
        193 firms with CADE defendants
      NOT direct defendants
        Loser-side scope by design
    **Discrimination**
      Firm-level AUC
        0.924 in-sample
        0.864 temporal holdout
      Direct-CADE AUC ~ 0.49
        Predicted null = scope signature
      Audits
        Sham permutation 32 sigma
        Leakage 0.995 to 0.891 to 0.864
        Strict ex ante timing
        Exposure-adjusted opportunity sets
    **Architecture (headline)**
      Award triage then bid forensics
      Gatekeeping
        83% bid-microdata reduction
        131 of 193 recovered
        8% recall cost
      Complementarity
        FL + Imhof AUC 0.962
        FL increment +0.035 DeLong p=0.014
    **Price (scope, descriptive)**
      Broad +3.6 to 7.7%
      Sign reversal
        Overlap-cell ATT -0.097
        Q4 only positive +0.041
      Decomposition
        Selection dQ5-Q1 +5.58 log-points
        Mechanism bidder inflation 66%
      Buyer-size gradient
        Q1 +21.4% to Q4 +1.7%
      Not a damages estimate
    **Modal Scope**
      Pregao AUC 0.952
      Convite AUC 0.816
      Scope info not institutional test
    **Enforcement Pathway**
      Screen
        Award records only
        SQL query or spreadsheet
      Triage
        Award-layer survivor pool
      Investigate
        Bid-level forensics on survivors
```
