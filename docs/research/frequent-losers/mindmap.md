# Mind Map

Interactive overview of the paper's logical structure. Click and drag to explore.

```mermaid
mindmap
  root((Screening for<br/>Bid Rigging with<br/>Frequent Losers))
    **Institutional Setting**
      BEC Platform
        Sao Paulo state
        2009-2019
      4.5M tender-items
      41K unique firms
      Two modalities
        Convite sealed bid
          3-bidder minimum
          Signal dilution 3.8%
        Pregao e-auction
          No bidder minimum
          Voluntary 9.3%
      Lei 14.133/2021
        Eliminates convite
        Testable predictions
    **FL Definition**
      Always-losers
        win rate = 0%
        16,843 firms
      IQR threshold
        median + 1.5 x IQR
        threshold ~ 14 tenders
      2,735 FL firms
        Treatment: tender has >= 1 FL
    **Conceptual Framework**
      Two regimes
        Regime 1 complementary
        Regime 2 coordinated
          BIC favors by 91,473
          sigma_c/sigma_g = 0.72
      Strategic complementarity
        gamma = 0.69 > 0
        More cover bidders in competitive markets
      Market selection
        FL concentrates in low HHI
    **Detection Performance**
      AUC = 0.94 vs CADE
      Youden J = 0.84 at 1.45x
      Horse-race
        Correlation 0.06 with CV
        FL rises to 0.084
      CADE validation
        3.5x overrepresentation
        193/2,735 co-participate
        3 convicted FL firms
    **Price Association**
      3.6-7.7% range
        Cross-fit 3.6%
        IPW 5.5%
        OLS 6.4%
        CEM 7.7%
      Network split
        Competitive 0.126
        Concentrated -0.018
      Bajari-Ye tests
        KS D = 0.15
        Pairwise product 4.28
        Tender FE reversal
      IV diagnostic
        0.194 F=396
        Lambda = 0.33
    **Diagnostics M1-M5**
      M1 No displacement
        +0.19 non-FL firms
      M2 Reference anchoring
        -4.1% to ref price
      M3 Reverse causality
        Elasticity ~ 0.002
      M4 Dyadic linkage
        4,696 pairs p<0.001
      M5 Exit hazard
        HR = 0.60
    **Robustness**
      Threshold sensitivity
        36 cells all significant
      Cinelli-Hazlett
        RV = 17.5%
      Oster delta
        Degenerate R2 gap ~ 0
      DiD pre-trends
        Non-causal framing
      Oversight heterogeneity
        12.5x gradient Q1 to Q4
    **Enforcement Pathway**
      Screen
        Participation records only
        SQL query or spreadsheet
      Triage
        Network metrics
        PBU size quartile
      Investigate
        Bid-level forensics
        On triaged subset
```
