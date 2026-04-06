---
paper: beneath-the-surface
---

# Manuscript

How we detect anti-competitive signals in public procurement using close-margin auctions.

---

## Contribution

The paper makes three contributions:

1. **RDD applied to procurement collusion detection.** Following Kawai et al. (2023), we apply a regression discontinuity design to 3.8 million sealed-bid auctions in Sao Paulo, Brazil. By focusing on auctions decided by narrow margins, we identify systematic patterns inconsistent with competitive bidding.

2. **Incumbency advantage.** Narrowly winning firms are 1.8 pp more likely to be incumbents (previous winners in the same market). This holds with and without year and market fixed effects, suggesting that certain firms enjoy systematic advantages at the margin of winning.

3. **Strategic bid timing.** Narrowly winning firms are 6.4 pp more likely to have submitted the last bid. This points toward bid leakage or coordinated timing---practices consistent with anti-competitive schemes.

**What we do not claim.** The RDD design identifies discontinuities at the threshold, not the mechanism behind them. The patterns are consistent with both collusion and corruption-driven favoritism. Our contribution is the empirical evidence that non-competitive forces systematically influence close-margin auctions in a major developing-country procurement system.

---

## Institutional Background

### BEC Platform

The **Bolsa Eletronica de Compras (BEC)** is Sao Paulo state's centralized electronic procurement platform. Since 2007, its use has been mandatory for Public Buyer Units (PBUs) acquiring common goods and services. In 2018 alone, approximately US$1.7 billion worth of goods and services were procured via BEC.

### Auction Formats

| Format | Name | Price Limit | Mechanism |
|:-------|:-----|:------------|:----------|
| Sealed bid | *Convite* | R$176,000 (~US$35,000) | Single-shot, lowest bid wins |
| Descending auction | *Pregao* | No limit | Multi-round, open bidding phase |

Our analysis focuses on **sealed-bid auctions** (*convite*), where the single-shot nature creates cleaner conditions for the RDD design.

---

## Methodology

We implement the RDD centered on the **margin of victory** ($\Delta_{i,t}$): the difference between firm $i$'s bid and the lowest competing bid in auction $t$.

- $\Delta_{i,t} < 0$: firm wins (bid is lower)
- $\Delta_{i,t} > 0$: firm loses
- $\Delta_{i,t} = 0$: threshold

Under competitive bidding, firms just above and below the threshold should be statistically indistinguishable. Systematic jumps at $\Delta = 0$ indicate non-competitive forces.

### Outcomes

| Variable | Definition |
|:---------|:-----------|
| **Incumbent** | = 1 if the firm won the last auction in the same market |
| **Last Bid** | = 1 if the firm submitted the final bid in the auction |

---

## Literature

The paper builds on the post-2000 literature on collusion detection in procurement:

- **Theoretical foundations:** Porter & Zona (1993), Pesendorfer (2000), Bajari & Ye (2003)
- **RDD for collusion detection:** Kawai, Nakabayashi, Ortner & Chassang (2023, *ReStud*)
- **Screening methods:** Conley & Decarolis (2016), Imhof, Musolff & Titl (2018)
- **Institutional context:** OECD (2015), Bosio, Djankov, Glaeser & Shleifer (2022, *AER*)
