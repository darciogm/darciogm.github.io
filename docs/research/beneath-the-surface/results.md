---
paper: beneath-the-surface
---

# Main Results

Significant discontinuities at the threshold of closely contested auctions suggest anti-competitive dynamics.

---

## RDD Estimates

| | Incumbent (1) | Incumbent (2) | Last Bid (3) | Last Bid (4) |
|:---|:---:|:---:|:---:|:---:|
| **Winning Auction** | **0.0182\*\*\*** | **0.0179\*\*\*** | **0.0636\*\*\*** | **0.0636\*\*\*** |
| | (0.005) | (0.005) | (0.008) | (0.008) |
| Observations | 261,370 | 260,985 | 156,418 | 156,418 |
| Optimal Bandwidth | 0.02 | 0.02 | 0.01 | 0.01 |
| Year FE | | :material-check: | | :material-check: |
| Market FE | | :material-check: | | :material-check: |

*Standard errors in parentheses. \*\*\* p < 0.01.*

---

## Graphical Evidence

### Incumbency

The probability that the winning firm was the incumbent shows a clear discontinuity at the threshold (bid margin = 0). Firms narrowly winning auctions exhibit a higher probability of incumbency compared to narrowly losing firms.

!!! success "1.8 pp incumbency gap"
    Consistent with incumbent firms benefiting disproportionately---potentially through strategic bidding or coordinated behaviors.

### Last Bid

The probability of being the final bidder also shows a sharp discontinuity. Narrowly winning firms have a substantially higher likelihood of submitting the auction's last bid.

!!! warning "6.4 pp last-bid gap"
    Indicates possible strategic timing of bids, hinting at practices consistent with bid leakage or collusive behavior.

---

## Interpretation

Two distinct anti-competitive signals emerge:

1. **Incumbency advantage (1.8 pp):** Certain firms systematically win close-margin auctions more often than their recent history would predict under competition. This is consistent with bid rotation or favoritism by procurement officials.

2. **Strategic bid timing (6.4 pp):** The last-bid advantage suggests information leakage---narrowly winning firms may have knowledge of competing bids, allowing them to time their submission strategically.

Both effects are robust to the inclusion of year and market fixed effects, ruling out time trends and market-specific confounders.

---

## Planned Additional Analyses

The following extensions are under development:

- **Heterogeneity by market:** Do the effects concentrate in specific product categories?
- **Correlation with predicted corruption:** Do high-corruption environments show larger discontinuities?
- **Firm outcomes:** Do narrowly winning firms accumulate market share over time?
