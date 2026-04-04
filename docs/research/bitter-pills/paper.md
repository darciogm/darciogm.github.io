---
paper: bitter-pills
---

# The Paper

## Bitter Pills to Swallow: The Enforcement Costs of Health Litigation

**Authors:** Darcio Genicolo-Martins and Paulo Furquim de Azevedo
**Affiliation:** Insper Institute of Education and Research, Sao Paulo, Brazil
**Version:** April 2026 (v6, Journal of Public Economics short paper)

!!! abstract "Download"
    The latest version of the paper is available as a PDF in the manuscript directory of the replication package.

---

## Contribution

This paper makes three main contributions to the literature on public procurement, judicial enforcement, and health policy:

1. **Quantifying the fiscal costs of judicial intervention in public procurement.** While a growing literature studies health litigation in Brazil and other countries, the existing evidence focuses primarily on the legal and medical dimensions. This paper provides the first systematic estimate of how court-mandated purchases affect procurement prices, competition, and outcomes.

2. **Identifying the "under the gun" mechanism.** By exploiting the institutional distinction between litigated and administrative urgent purchases---both of which bypass standard procurement timelines, but only the former expose officials to judicial sanctions---we isolate the causal effect of enforcement pressure on procurement costs. This "under the gun" effect accounts for the bulk of the observed price premium.

3. **Informing the design of judicial remedies.** The findings suggest that courts should consider the procurement-side costs of their mandates and that institutional reforms reducing the sanction channel---such as expanding the administrative request mechanism to other states and removing the court-order signal from tender notices---could substantially lower the fiscal burden of health litigation.

### New in v6

Two additional empirical exercises strengthen the causal interpretation:

- **Placebo test (items never litigated):** Running the preferred specification on items with zero litigated purchases yields a coefficient of $-0.020$ (SE = 0.032, n.s.), confirming the premium is absent where judicial pressure plays no role.
- **Supplier fixed effects (2,202 firms):** Adding firm FE attenuates the urgency coefficient by 52% (from 0.051 to 0.025), decomposing the premium into roughly equal demand-side and supply-side components. With both firm FE and quantity controls, the residual falls to 0.011 (n.s.).

---

## Institutional Background

Brazil's universal public health system (SUS) provides free access to pharmaceuticals listed in official formularies. When patients cannot obtain medications through regular channels, they may file lawsuits compelling the government to purchase and deliver specific drugs. These court orders create a distinct procurement channel---**litigated purchases**---that operates under tight judicial deadlines and the threat of sanctions (fines, contempt proceedings) against procurement officials.

The Sao Paulo state government conducts pharmaceutical procurement through its electronic platform (BEC), which records all transactions at the bid level. Purchases are classified into three types:

- **Ordinary purchases:** Planned procurement following standard timelines and competitive bidding rules.
- **Administrative urgent purchases:** Expedited procurement authorized by the administration itself (e.g., due to supply disruptions or inventory shortfalls), which may use simplified procedures but are not subject to judicial sanctions.
- **Litigated purchases:** Procurement compelled by court orders, subject to judicial deadlines and sanctions for non-compliance.

---

## Data and Sample

The analysis uses the **BEC-G65-WORK1** dataset, a bid-level panel covering all pharmaceutical procurement transactions by the Sao Paulo State Department of Health (SES/SP) from January 2009 through December 2019.

| Feature | Description |
|---------|-------------|
| **Source** | Bolsa Eletronica de Compras (BEC), Sao Paulo state |
| **Coverage** | All bids for Group 65 (medical, dental, and hospital supplies) |
| **Period** | January 2009 -- December 2019 |
| **Observations** | 479,330 bids (full sample); 226,000 (items with both litigated and ordinary) |
| **Unit of observation** | Bid (firm x item x procurement event) |
| **Key outcomes** | Reference price, negotiated price, quantity, number of bidders, tender success |
| **Treatment** | Purchase type: Ordinary (0), Administrative (1), Litigated (2) |

---

## Empirical Strategy

The identification strategy relies on comparing procurement outcomes across purchase types within narrowly defined cells. The preferred specification includes:

$$
Y_{ijpt} = \alpha + \beta \cdot \text{Litigated}_{ijpt} + \mathbf{X}_{ijpt}'\gamma + \mu_i + \delta_t + \phi_p + \varepsilon_{ijpt}
$$

where:

- $Y_{ijpt}$ is the outcome (log price, log number of firms, or tender success) for item $i$, buyer $p$, at time $t$
- $\text{Litigated}_{ijpt}$ is an indicator for court-mandated procurement
- $\mu_i$ are **item fixed effects** (comparing the same product)
- $\delta_t$ are **year fixed effects** (absorbing time trends)
- $\phi_p$ are **public buyer unit (PBU) fixed effects** (comparing within the same procurement office)
- Standard errors are clustered at the PBU level

### Four Fixed-Effects Specifications

| Spec | Fixed Effects | Purpose |
|------|--------------|---------|
| (1) | Item | Baseline: within-product comparison |
| (2) | Item + Year | Controls for aggregate time trends |
| (3) | Item + Year + PBU | **Preferred:** controls for buyer heterogeneity |
| (4) | Item + Year-Month + PBU | Most saturated: monthly time effects |

### The "Under the Gun" Design

To isolate the effect of judicial sanctions from general urgency, we restrict the sample to urgent purchases only (administrative + litigated) and estimate:

$$
Y_{ijpt} = \alpha + \beta \cdot \text{Administrative}_{ijpt} + \mu_i + \delta_t + \phi_p + \varepsilon_{ijpt}
$$

A negative coefficient on the administrative indicator means that **litigated purchases are more expensive**, isolating the sanction channel.

---

## Software and Estimation

- **Primary analysis (v4):** R 4.5 with `fixest` package (equivalent to Stata's `reghdfe`)
- **Legacy analysis (v2/v3):** Stata/SE with `reghdfe` and `ftools`
- **Winsorization:** 1st/99th percentiles (baseline); robustness at 0% and 5th/95th
- **Clustering:** PBU (primary); item and two-way PBU x Item (robustness)
