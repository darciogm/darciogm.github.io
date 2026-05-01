---
paper: frequent-losers
---

# Mind Map

Interactive overview of the paper's logical structure. Click and drag to explore.

```mermaid
mindmap
  root((Frequent Losers<br/>as a Cartel Screen))
    **Institutional Setting**
      BEC Platform
        Sao Paulo state
        2009-2019
      4.5M tender-items
      41K unique firms
      Two modalities
        Convite sealed bid
          3-bidder rule context
          Price imprint 3.8%
        Pregao e-auction
          No bidder minimum
          Price imprint 9.3%
      Lei 14.133/2021
        Consolidates pregao
        Favorable to portability
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
      Three formal results
        Lemma wins=0
          Equilibrium choice of cover bidders
        Prop log(1+t) sufficient
          Ranking statistic for type C
        Prop dm*/dtheta_k less than 0
          Comparative static
      Cover bidders + genuine entrants
        Separating equilibrium
        Organizing device, not identification
    **Within-Item Price Gap**
      Headline range +3.6 to +7.7%
        Cross-fit 3.6%
        IPW 5.5%
        OLS within-PBU 6.4%
        CEM 7.7%
      Modal split
        Pregao 9.3%
        Convite 3.8%
        Ratio 2.5x
      IV diagnostic
        0.194 F=396
        OLS conservative
      Strict overlap
        ATT -9.7%
        PS-trimmed -30.7%
        Different angle, same population
    **Oversight Gradient**
      12.6x ratio Q1 to Q4
        Q1 +21.4%
        Q2 +9.8%
        Q3 +4.5%
        Q4 +1.7%
      Strongest heterogeneity in data
        Larger than modal gap
        Larger than cross-sector
      Framework prediction match
        dm*/dtheta_k less than 0
    **CADE Validation**
      12 cases 65 defendants
        47 BEC-active
        193 cobidders
      Market proximity 3.5x
        Permutation stratified
      Within-firm 2.6x
        3 named firms flagged
      Discrimination bounds
        Lower 0.748 contemporaneous
        Upper 0.924 in-sample
        Upper 0.864 temporal holdout
      Direct CADE 47 firms
        AUC 0.49 by design
      Robustness to enforcement
        Drop CADE tenders
        beta 0.062 vs 0.064
    **Mechanisms**
      Continuous dominates binary
        AUC 0.939 vs 0.911
        DeLong p=2e-5
      Modal asymmetry
        Pregao deeper than convite
        Scope, not institutional ID
      What data dont support
        Cell-heterogeneity scope
        First-time-FL compresses
    **Robustness**
      Threshold sensitivity
        Five multipliers all significant
      Identification audits
        Cinelli RV 17.5%
        Oster delta 261.6
        Strict overlap reversal
        Leakage audit 0.864
        Placebo IV
      Operational metrics
        In-sample 0.132 at 500
        Holdout 0.070 retention 53%
        AUC holdout 0.864
      Imhof comparison
        Comparable at lower data cost
        Combined +0.096 AUC
        Complementarity not dominance
      Staggered designs
        RDD null at caps
        DiD pre-trends fail
    **Three-Stage Pathway**
      Screen
        Award records only
        log(1+tenders_count)
      Triage
        Cross-ref CADE CGU TCE
        Operational priors
      Forensic
        Imhof Wallimann methods
        Where bid microdata available
```
