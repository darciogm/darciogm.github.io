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

Since 2005, all public buyer units (PBUs) in São Paulo state procure common goods and services through **Bolsa Eletrônica de Compras (BEC)**, the centralized electronic platform. Brazil's federal SME statute (LC 123/2006) requires exclusive SME tenders for items valued at **R\$80,000 or less**, and LC 147/2014 made the SME-only rule mandatory. For most goods on BEC, that rule already operated before the period studied here.

**Group 65** (medical, dental, and hospital equipment and supplies) was different for a *legal* reason, not a market one. The prevailing interpretation applied the R\$80,000 threshold to the **total value of the purchase notice**, not to each item. Because medical-supply notices bundle many individually small items inside large purchase orders, the total-notice reading kept many individually eligible items *outside* the SME-only default. A sequence of administrative acts moved them in: BEC enabled SME-only functionality (COMUNICADO BEC 02/2017, July 2017), and **PGE-SP Parecer 151/2017** (December 2017) held that the R\$80,000 threshold applies **item-by-item** regardless of the total notice value. The operational cutoff is **March 2018**, when Group&nbsp;65 buyer units began mass take-up of the functionality; TCE-SP ratified the new reading in May 2018, after the cutoff. The trigger was legal and administrative — not a medical-supply policy, a price intervention, or a technology shock.

| Group | Before March 2018 | After March 2018 |
|---|---|---|
| Group 65 (switched) | Open competition (threshold applied to total notice) | SME-only default (threshold applied item-by-item) |
| Other groups (always treated) | SME-only default | SME-only default |

---

## Data and Sample

| Feature | Detail |
|---------|--------|
| **Source** | BEC administrative records (SEFAZ/SP) |
| **Coverage** | All standardized goods procurement in São Paulo state |
| **Period** | 18-month structural window **Sep 2016 – Aug 2019** (each side of the March 2018 cutoff); broader reduced-form panel spans 2016–2019 |
| **Raw extract** | 3.7M bid-level observations; 1,344 PBUs; 82,569 items; 832,984 purchase orders |
| **Treatment group** | Group 65 (medical/hospital supplies, ~27% of platform transactions) |
| **Controls** | 76 never-treated product groups (reduced-form benchmark) |
| **Structural sample** | 297,967 firm-auction obs across 97,993 Group 65 Pregão auctions (48,740 pre / 49,253 post) |
| **Treatment date** | March 2018 (operational mass take-up) |

---

## Empirical Strategy

The argument rests on **three pieces of evidence that carry separate
identifying weight**. A weakness in one does not mechanically overturn the
others; it changes which interpretation the evidence can support.

### 1. Reduced-form benchmark (timing, sign, scale)

A difference-in-differences compares Group&nbsp;65 to 76 never-treated product
groups around March 2018, written in a *DiD-in-reverse* convention (a negative
pre-period coefficient is the open-regime discount that disappears under the
SME-only extension):

$$y_{pigt} = \eta_i + \gamma\,\text{Pre}_t + \beta\,(g65_{pgt} \times \text{Pre}_t) + x\,\delta + \varepsilon_{pigt}$$

where $\eta_i$ are item fixed effects, $\text{Pre}_t = 1$ before March 2018,
$g65$ marks Group&nbsp;65, $x$ includes log quantity and tender format, and
errors are item-clustered. The 18-month coefficient is **−0.113** (a 10–11%
price movement), stable across 6-, 12-, and 18-month windows. This benchmark is
**not** asked to carry the structural magnitude — it verifies that the
institutional episode left the predicted footprint in timing and sign.

### 2. Structural price-formation decomposition (the mechanism)

The core of the paper. In the Pregão (English-reverse auction), losing bidders'
drop-out prices reveal type-specific willingness to supply under the maintained
IPV-clock interpretation. Recovering type-specific cost distributions (with a
Krasnokutskaya-style auction-level heterogeneity correction) and using observed
equilibrium entry, the set-aside price effect is simulated under three
counterfactual bidder pools and decomposed:

$$\underbrace{p_{S_3}-p_{S_1}}_{\text{net set-aside effect}} = \underbrace{p_{S_2}-p_{S_1}}_{\Delta^{\text{excl}}\ \text{lost discipline}} + \underbrace{p_{S_3}-p_{S_2}}_{\Delta^{\text{pool}}\ \text{protected-pool offset}}$$

This conditions on within-period type-specific primitives and equilibrium bidder
counts, so it requires **neither** cross-group balance **nor** the DiD
magnitude. See [Results](results.md) for the decomposition.

### 3. Static welfare comparison (the policy)

Mapping the recovered primitives into allocative deadweight loss, the MCPF
distortion ($\lambda = 0.30$), and SME producer surplus (Saez–Stantcheva
weights), the full set-aside $V_0$ is compared to a static **10% price
preference** $V_3$ that preserves the non-SME price-forming pool.

**Time windows:** 6 months (Sep 2017–Aug 2018), 12 months (Mar 2017–Feb 2019),
and 18 months (Sep 2016–Aug 2019).

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
