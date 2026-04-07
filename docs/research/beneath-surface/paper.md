---
paper: beneath-surface
---

# Manuscript

How we detect anti-competitive signals in public procurement using close-margin auctions and a regression discontinuity design.

!!! info "Version note --- v1.1 extension in progress"
    The page below describes the version of the paper currently under review at *International Journal of Industrial Organization* and accepted for presentation at [**SIOE 2026**](https://www.sioe.org/conference/2026) (INSEAD Fontainebleau, July 13–15). Ahead of the conference, the paper is being extended with a **worker-flow network screen** evaluated against a CADE cartel ground-truth database. See the [changelog](changelog.md) for the new headline results and methodological updates.

---

## Contribution

The paper makes three contributions to the empirical literature on collusion detection in procurement:

1. **RDD applied to a large developing-country procurement system.** Following Kawai et al. (2023, *ReStud*), we apply a regression discontinuity design to **3.8 million sealed-bid auctions** in Sao Paulo, Brazil---the largest application of this method to a developing-country setting. By focusing on auctions decided by narrow margins, we identify systematic patterns inconsistent with competitive bidding.

2. **Incumbency advantage at the threshold.** Narrowly winning firms are **1.8 pp** more likely to be incumbents (previous winners in the same market). This holds with and without year and market fixed effects, and is robust across bandwidths, donut-hole specifications, and placebo cutoffs.

3. **Strategic bid timing.** Narrowly winning firms are **6.4 pp** more likely to have submitted the final bid. This points toward information leakage or coordinated timing---practices consistent with anti-competitive schemes.

!!! note "What we do not claim"
    The RDD design identifies **discontinuities** at the threshold, not the mechanism behind them. The patterns are consistent with firm-level collusion (bid rotation), official-level corruption (bid leakage, favoritism), or a combination. Our contribution is the empirical evidence that non-competitive forces systematically influence close-margin auctions in a major procurement system.

---

## Institutional Background

### BEC Platform

The **Bolsa Eletronica de Compras (BEC)** is Sao Paulo state's centralized electronic procurement platform, mandatory since 2007 for all Public Buyer Units (PBUs) acquiring common goods and services.

| Metric | Value |
|:-------|:------|
| Annual procurement value (2018) | ~US$ 1.7 billion |
| Cumulative procurement (SES/SP, 2009+) | R$ 7.4 billion |
| Purchase offers issued | ~55,000 |
| Distinct catalog items | ~6,350 |
| Cost of a failed tender | US$ 500--5,200 |

### Auction Formats

| Format | Name | Price Limit | Mechanism |
|:-------|:-----|:------------|:----------|
| Sealed bid | *Convite* | R$ 176,000 (~US$ 35,000) | Single-shot: firms submit confidential bids by deadline, lowest wins |
| Descending auction | *Pregao* | No limit | Multi-round: sealed proposals, then open descending phase (20 min + extensions) |

Our analysis focuses on **sealed-bid auctions** (*convite*), where the single-shot nature creates clean conditions for the RDD design---there is no iterative bidding, no real-time information, and the outcome is determined entirely at bid opening.

---

## Methodology

### Running Variable

We define the **margin of victory** $\Delta_{i,t}$ as the percentage difference between firm $i$'s bid and the lowest competing bid in auction $t$:

$$\Delta_{i,t} = \frac{b_{\text{runner-up}} - b_{\text{win}}}{b_{\text{win}}}$$

- $\Delta_{i,t} < 0$: firm wins (its bid is lower)
- $\Delta_{i,t} > 0$: firm loses
- $\Delta_{i,t} = 0$: threshold

### Identification

Under competitive bidding, firms just above and below the threshold should be **statistically indistinguishable** in pre-determined characteristics. Any systematic jump at $\Delta = 0$ reveals non-competitive forces:

$$\beta = \lim_{\epsilon \to 0^+} \mathbb{E}[x_{i,t} \mid \Delta_{i,t} = \epsilon] - \lim_{\epsilon \to 0^-} \mathbb{E}[x_{i,t} \mid \Delta_{i,t} = \epsilon]$$

### Outcome Variables

| Variable | Definition |
|:---------|:-----------|
| **Incumbent** | $= 1$ if the firm won the last auction in the same market |
| **Last Bid** | $= 1$ if the firm submitted the final bid in the auction |
| **Backlog** | Standardized cumulative contract value in prior 90/120 days |
| **Share Won** | Fraction of auctions won in the same market over prior 90 days |

### Market Definition

Two firms belong to the same **market** if they participated at least once in the same auction for the same type of good. This transitive classification yields **7,581 distinct markets**.

---

## Literature

The paper builds on four strands of the post-2000 literature:

### Theoretical Foundations
- **Bid rotation in repeated auctions:** Cartels can allocate wins intertemporally without side payments (Porter & Zona, 1993)
- **Auction format and collusion:** Uniform-price formats relax competitive pressure more than pay-as-bid (Pesendorfer, 2000)

### Empirical Collusion Detection
- **Structural screens:** Bid-level tests for exchangeability under competition (Bajari & Ye, 2003)
- **RDD for close-margin auctions:** Near-tie auctions as a natural experiment (Kawai et al., 2023, *ReStud*)
- **ML and big-data screening:** Imhof, Musolff & Titl (2018)

### Developing-Country Procurement
- **Institutional context:** OECD (2015); Bosio, Djankov, Glaeser & Shleifer (2022, *AER*)

### Incumbency in Procurement
- **Switching costs and incumbency:** Cabral & Greenstein (1990); Greenstein (1993)
- **Entrant vs. incumbent bidding:** De Silva, Dunne & Kosmopoulou (2003)
