---
paper: frequent-losers
---

# Mind Map

Interactive overview of the paper's logical structure. Click and drag to explore.

```mermaid
mindmap
  root((Frequent Losers<br/>A Cover-Bidder Screen<br/>Without Bid Microdata))
    **Two Observability Layers**
      Operational layer
        Award envelope
        Audit-court queryable in minutes
        Winner + participants + item + price
      Forensic-recoverable layer
        Per-bidder bid amounts
        Bid timestamps and sequences
        Administrative request weeks of latency
      Asymmetry is structural
        Not Brazil-specific
        FPDS-NG TED UK Contracts Finder
    **FL Definition**
      Always-losers
        win rate = 0
        16,843 firms
      IQR threshold
        median + 1.5 x IQR
        threshold ~ 14 tenders
      2,735 FL firms
        Treatment: tender has >= 1 FL
    **Conceptual Framework**
      Four formal results
        Lemma wins=0 separating equilibrium
        Prop log(1+t) sufficient ranking statistic
        Prop dm*/dtheta_k less than 0
        Prop beta vs beta-ov different objects
      R1 vs R2 cover bidding
        R1 textbook visibly uncompetitive
        R2 credible phantom competition
        Bid-level evidence adopts R2
    **Discrimination Against CADE**
      Cobidders 193 in always-loser stratum
      Conservative AUC 0.748 pre-2020
      Prospective AUC 0.864 temporal holdout
      Direct defendants AUC 0.491 by design
        Loser-side recovery not winner-side
      Within-stratum bridge
        Firm-level d up to 1.0
        Bid-level median gap d -0.28
        Multivariate logit p less than 1e-3
    **Architectural Test**
      Same target different envelopes
        FL alone AUC 0.881
        Imhof full AUC 0.846
        Comparable on thinner envelope
      Non-redundant signal
        Combined AUC 0.942
        Delta +0.096 DeLong p 1e-26
      Sequential gatekeeper
        K1=2000 catches 131 of 193
        Bid-microdata footprint -83%
        Recall cost only -8%
      Temporal-holdout robustness
        Sequential matches joint scoring
        Out-of-time TP at 1000 114 vs 111
    **Pricing Imprint**
      Headline range +3.6 to +7.7%
        Cross-fit 3.6%
        IPW 5.5%
        OLS within-PBU 6.4%
        CEM 7.7%
      Segment decomposition
        Q1-Q3 negative robust to specs
        Q4 positive robust to specs
        Aggregate is volume-weighted average
      Trim sensitivity
        Trim top decile -0.118
        Negative is structural not few-cell
      Modal asymmetry
        Pregao 9.3% Convite 3.8%
        Quorum-filler reading falsified
    **Heterogeneity**
      Oversight gradient 12.6x
        Q1 +21.4% Q4 +1.7%
      Modal contrast
        Pregao deeper than convite
        Active vs passive cover bidding
      What data do not support
        Cell-heterogeneity grid
        First-time-FL compresses
    **Robustness**
      Threshold sensitivity
        Five multipliers all significant
      Identification audits
        Cinelli RV 0.207
        Oster delta 261.6
        Anti-leakage AUC 0.864 holdout
      Operational metrics
        In-sample inflates 50% at 500
        Holdout the deployable column
      Adversarial adaptation
        Resilient to rotation and wins
        Vulnerable to threshold capping
        Combined attack AUC 0.81
      Staggered designs
        RDD null at caps no bunching
        DiD pre-trends fail
```
