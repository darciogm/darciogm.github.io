# Manuscript

## Contribution

This paper makes three main contributions:

1. **Cost estimation of SME set-asides:** Provides credible causal estimates of the procurement costs imposed by restricting public tenders to SMEs, using a quasi-experimental variation in Sao Paulo, Brazil.

2. **Heterogeneity analysis:** Demonstrates that the costs of restricting competition are not uniform---they are approximately 40% larger for high-value items, offering guidance for differentiated policy design.

3. **Competition mechanism:** Documents the full causal chain from restricted tenders to reduced competition (fewer firms and bids) to higher prices, with supporting evidence from winner composition and procurement efficiency analyses.

---

## Institutional Background

Since 2005, all public buyer units (PBUs) in the state of Sao Paulo have been required to purchase common goods and services through **Bolsa Eletronica de Compras (BEC)**, an electronic procurement platform. In 2014, the federal SME law made it mandatory to execute exclusive public tenders for SMEs for items valued at R\$80,000 or less.

However, between 2014 and 2018, the state of Sao Paulo exempted **group 65** (medical, dental, and hospital supplies) from this requirement, based on a joint agreement that health items were strategic goods warranting open competition. In **March 2018**, a legal opinion from PGE-SP reversed this interpretation, subjecting group 65 to the same SME-favoring rules as all other product groups.

| Groups | Before March 2018 | After March 2018 |
|--------|-------------------|-------------------|
| Group 65 (switched) | Opt-out costs = 0 | Opt-out costs > 0 |
| Others (always treated) | Opt-out costs > 0 | Opt-out costs > 0 |

---

## Data and Sample

| Feature | Detail |
|---------|--------|
| **Source** | BEC administrative records (SEFAZ/SP) |
| **Coverage** | All standardized goods procurement in Sao Paulo state |
| **Period** | January 2016 -- December 2019 |
| **PBUs** | 1,344 public buyer units |
| **Items** | 82,569 distinct items across 76 groups |
| **Transactions** | 832,984 successful transactions |
| **Treatment group** | Group 65 (medical/hospital supplies, ~27% of purchases) |
| **Treatment date** | March 2018 |

---

## Empirical Strategy

The identification strategy exploits the timing of the policy change (March 2018) that affected only group 65, using a **difference-in-differences in reverse (DiDiR)** design. DiDiR identifies pre-switch-period effects by comparing the switched group (group 65) with the always-treated group (all other groups).

The main specification is:

$$y_{pigt} = \eta_i + \gamma\,\text{Pre}_t + \beta\,(g65_{pgt} \times \text{Pre}_t) + x\,\delta + \varepsilon_{pigt}$$

where:

- $y$ is the outcome (log price, log firms, log bids, or distance)
- $\eta_i$ are item fixed effects
- $\text{Pre}_t = 1$ if month < March 2018
- $g65_{pgt} = 1$ if item belongs to group 65
- $x$ includes log quantity and tender type (sealed bid/auction)
- $\varepsilon_{pigt}$ is clustered at the item level

The coefficient $\beta$ captures the pre-switch-period effect of the SME policy on group 65 outcomes.

**Time windows:** 6 months (Sep 2017--Aug 2018), 12 months (Mar 2017--Feb 2019), and 18 months (Sep 2016--Aug 2019).

---

## Software and Estimation

| Component | Detail |
|-----------|--------|
| **Language** | R 4.5 |
| **Fixed effects** | `fixest::feols()` with lean estimation |
| **Data handling** | `data.table` + `arrow` (parquet cache) |
| **Clustering** | Item-level (main), group-level (event study) |
| **Figures** | `ggplot2` with `cairo_pdf`, grayscale theme |
| **Threads** | 16 (fixest and data.table) |
