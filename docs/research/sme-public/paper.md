---
paper: sme-public
---

# Manuscript

## Download

- [Main paper &mdash; PDF](assets/paper/paper.pdf)
- [Online appendix &mdash; PDF](assets/paper/online_appendix.pdf)
- [Highlights &mdash; PDF](assets/paper/highlights.pdf)
- [Cover letter &mdash; PDF](assets/paper/cover_letter.pdf)

JPubE submission, May 2026.

## Title

**The Price of Exclusion: SME Set-Asides in Public Procurement**

## Contribution

The paper makes three contributions:

1. **A price-formation decomposition.** I decompose the price effect of an SME set-aside into a **lost-discipline component** (non-SMEs removed from the price-forming pool, SME pool held fixed) and a **protected-pool offset** (post-policy SME pool replacing the pre-policy one). The decomposition turns the set-aside price effect into a design question: how much is mechanical exclusion of rival bidders, and how much is the protected pool's response?

2. **Implementation via a reverse-auction setting.** In São Paulo's *Pregão* (electronic English-reverse auction), losing bidders' drop-out prices reveal type-specific willingness to supply under the maintained independent-private-values clock interpretation (Vickrey 1961; Milgrom and Weber 1982; Haile and Tamer 2003; Athey and Haile 2002). I use the recovered primitives, an auction-level heterogeneity correction in the spirit of Krasnokutskaya (2011), and observed equilibrium entry to simulate counterfactual price-formation objects under three pools.

3. **Recast of policy design.** The relevant policy frontier is not SME support versus no support, but **exclusionary redistribution versus support that preserves the price-forming bidder pool**. A 10 percent SME price preference enters as a static design benchmark: it preserves the non-SME bidders that discipline the price-forming order statistic but delivers less redistribution than full exclusion.

In **standardized non-pharmaceutical** procurement, the protected pool responds (SME participation roughly doubles) but does not replace the excluded discipline: the full set-aside generates a **static welfare loss of 28.9% of the open-regime price** at &lambda;=0.30, with the exclusion component accounting for ~72% of the decomposition. The implied SME welfare weight required for a planner to prefer full exclusion is **2.42**. **Pharmaceutical** procurement is reported as a **boundary case**, not as a second headline: there the protected pool is thinner, composition changes more under the policy, and the welfare ranking becomes sensitive to how the post-policy SME pool is modeled.

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
