---
paper: sme-public
---

# Manuscript

## Download

- [Main paper (v5, JPubE format) — PDF](assets/sme_public_procurement.pdf)
- [Online appendix — PDF](assets/sme_public_online_appendix.pdf)
- [Highlights — PDF](assets/sme_public_highlights.pdf)
- [Video — *The Cost of Inclusion* (17 min, MP4)](assets/cost_of_inclusion.mp4)

Submission-ready version, April 2026.

---

## Contribution

The paper makes three contributions to the literature on procurement-preference rules.

1. **Methodology — within-auction structural decomposition from a clean legal trigger.** The paper combines five conditions rare in the procurement-preference literature: a total-exclusion legal trigger (clean separation of regimes), a Pregao drop-out auction format (point-identification of cost distributions following Haile and Tamer 2003), an auction-level unobserved-heterogeneity correction (Krasnokutskaya 2011), an observed-equilibrium-entry treatment in the spirit of Athey, Coey, and Levin (2013) and Athey and Seira (2011), and a Saez and Stantcheva (2016) welfare-weight identity. Each component is established; the combination delivers a within-auction decomposition of an SME procurement preference where the partial-preference structural literature identifies the two margins jointly with cross-equation constraints rather than from a single legal trigger.

2. **Endogenous SME entry as a welfare object, not a side issue.** A fixed-pool counterfactual — the standard reduced-form shortcut — misstates the realized policy cost by roughly 50--60%. The participation response is the government's partial offset to a larger latent within-auction shock, not the source of the markup.

3. **A market-design statement, not a universal ranking.** A 10% price preference welfare-dominates the set-aside in thick, standardized markets across both the main and the strict-invariance specifications. In thin, heterogeneous markets the comparison depends on how entry selection is modeled. The bifurcation identifies precisely where equilibrium-selection vs. primitive-invariance treatment of the protected pool is first-order, and converts a sensitivity check into a substantive claim about where bidder exclusion delivers proportional returns and where it does not.

---

## Institutional Background

Brazil's federal SME statute (Complementary Law 123/2006, amended 2014) defines micro- and small enterprises by annual gross revenue (R\$360,000 and R\$4,800,000 ceilings, respectively) and mandates exclusive SME tenders for items valued at R\$80,000 or less. Public buyer units (PBUs) can avoid the SME-only default only by formally justifying the departure to the audit courts — a costly and scrutinized process. State-level adherence to SME-only tendering for eligible items rose from roughly 13% to nearly 70% in the years following the 2014 amendment.

Since 2005, all public procurement in Sao Paulo passes through **Bolsa Eletronica de Compras (BEC)**, a centralized electronic reverse-auction platform that handled approximately R\$13 billion (US\$3.7 billion) in 2019 alone and has cumulatively moved more than R\$105 billion (US\$30 billion) since implementation, spanning 860,000 purchase offers and 4.8 million item-level transactions.

**Group 65** (medical, dental, and hospital supplies) was a singular exception to the 2014 rule. Between August 2014 and February 2018, the state government and the Tribunal de Contas (TCE-SP) operated under a joint interpretation that medical supplies were strategic goods requiring open competition. In November 2017, the Procuradoria-Geral do Estado (PGE-SP) issued a legal opinion reversing the exception on isonomy grounds, arguing that no substantive feature of medical supplies justified procedural distinctions from other product groups. **Effective March 2018**, opt-out costs extended to Group 65.

| Groups | Before March 2018 | After March 2018 |
|--------|-------------------|-------------------|
| Group 65 (switched) | Opt-out costs = 0 | Opt-out costs > 0 |
| Others (always treated) | Opt-out costs > 0 | Opt-out costs > 0 |

The change was triggered by a legalistic reinterpretation of the isonomy principle inside PGE-SP, not by anything happening in the Group-65 procurement market. Public documentation turns up no sign that the decision was a response to price levels, competition patterns, or supplier complaints specific to Group 65 in 2017.

---

## Data and Sample

| Feature | Detail |
|---------|--------|
| **Source** | BEC administrative records (Sefaz-SP) |
| **Coverage** | All standardized goods procurement in Sao Paulo state |
| **Window (full)** | January 2016 -- December 2019 |
| **Window (structural)** | September 2016 -- August 2019 (18 months on each side of the March 2018 cutoff) |
| **Treated group** | Group 65 (medical/hospital supplies, ~27% of transactions) |
| **Control set (DiD)** | 76 never-treated product groups |
| **Auction format (structural)** | Pregao only (descending-clock electronic English-reverse) |
| **Structural sample** | 297,967 firm-auction observations, 97,993 distinct auctions |
| **Pre vs Post** | 48,740 vs 49,253 auctions (balanced) |
| **Bid filter** | c<sub>ε</sub> = b/p<sup>ref</sup> ∈ (0, 3]; n ≥ 2 firms per auction |
| **Type flag** | SME / non-SME from BEC registry, validated against historical bidding |
| **Pharma flag** | CADMAT classes 6531, 6532, 6536, 6581 (CMED-regulated pharmaceuticals and biologicals) |

The structural narrowing to Pregao is methodological: the descending-clock format admits point identification of cost distributions from drop-out bids (Haile and Tamer 2003), which the smaller-value Convite first-price sealed-bid format does not afford in the same form. Convite is reserved for a cross-modality consistency check via Guerre, Perrigne, and Vuong (2000) inversion.

### Entry response (Pregao)

| | **Non-pharma Pre** | **Non-pharma Post** | **Pharma Pre** | **Pharma Post** |
|---|:---:|:---:|:---:|:---:|
| SMEs per auction | 0.94 | **1.87** | 0.55 | **1.22** |
| Non-SMEs per auction | 2.68 | **1.50** | 2.61 | **1.66** |

SMEs roughly double in both classes; non-SMEs fall sharply. The set-aside changes both the admissible pool and the equilibrium participation response.

---

## Empirical Strategy

The structural model reads the BEC platform's Pregao auction as an **asymmetric independent-private-values (IPV)** environment. Bidders draw costs from type-specific distributions F<sub>c</sub><sup>SME</sup> and F<sub>c</sub><sup>¬</sup> and compete under a descending clock; under IPV the weakly dominant strategy is to exit when the running clock price reaches one's own cost (Haile and Tamer 2003). Drop-out prices of losers therefore **point-identify** F<sub>c</sub><sup>k</sup>, without inverting a bid function or imposing parametric structure on bidding.

Three substantive restrictions discipline the model:

- **Asymmetric IPV.** Costs are drawn independently across bidders; conditional on type, c<sub>i</sub> ~ F<sub>c</sub><sup>k</sup>. SME and non-SME distributions are not constrained to coincide.
- **Multiplicative auction-level heterogeneity.** Normalized log-bid decomposes as y<sub>it</sub> = a<sub>t</sub> + e<sub>it</sub>, with auction-level scale a<sub>t</sub> common to all bidders in auction t (Krasnokutskaya 2011). A best-linear-predictor shrinkage strips a<sub>t</sub> out of every log-bid; the cleaned residuals enter all downstream structural estimation.
- **Set-aside with equilibrium SME selection.** Under the open regime both types enter; under SME-only, only SMEs are admissible. Within a short window around the cutoff, the underlying technology of supply is stable, but the equilibrium distribution of active SMEs under the restricted regime may differ from its pre-regime counterpart (Athey and Seira 2011 reading).

A Turnbull NPMLE that treats the winner formally as left-censored at c<sub>(2)</sub> dispenses with the multiplicative-heterogeneity assumption altogether and corroborates the baseline numbers within 16% of the total effect across classes.

### The decomposition

Three counterfactual scenarios anchor the exercise:

- **S<sub>1</sub>** — open regime at the pre-period pool (baseline)
- **S<sub>2</sub>** — SME-only at the pre-period SME pool (within-auction component isolated)
- **S<sub>3</sub>** — SME-only at the observed post-period SME pool (full policy effect with endogenous entry)

The simulated total effect on the second-order statistic decomposes arithmetically as

$$\underbrace{p_{S_3} - p_{S_1}}_{\text{simulated total}} = \underbrace{(p_{S_2} - p_{S_1})}_{\text{within-auction (sheltered bidding)}} + \underbrace{(p_{S_3} - p_{S_2})}_{\text{participation-margin}}.$$

The within-auction component captures equilibrium price formation under reduced competition; under ascending-clock IPV, the dominant strategy is exit-at-cost regardless of pool composition, and the within-auction component is mechanically a property of which order statistic is realized at each pool composition. The decomposition is a counterfactual-simulation accounting under the modeling assumptions stated, not a separation of independently identified structural channels.

### What the model does *not* attempt

Five extensions are bracketed below or in robustness rather than imposed as the central exercise: (i) entry is taken as observed Poisson arrival rates, not solved jointly with bidding under a free-entry condition; (ii) implied κ<sup>k</sup> are zero-profit margins at the entry margin, not structurally identified fixed costs; (iii) procurement quantity is treated as inelastic; (iv) the 10% preference V3 is computed under Vickrey-equivalent translation, with the FPSB equivalent under Maskin and Riley (2000) bracketed; (v) asymmetric IPV is assumed.

---

## Software and Estimation

| Component | Detail |
|-----------|--------|
| **Language** | R 4.5 |
| **Reduced-form FE** | `fixest::feols()` with lean estimation |
| **Cost distributions** | All-bidders ECDF on UH-cleaned residuals; Turnbull NPMLE robustness |
| **UH correction** | Method-of-moments + best-linear-predictor shrinkage (Krasnokutskaya 2011) |
| **Cross-modality check** | GPV (2000) inversion on Convite first-price sealed-bid auctions |
| **BNE simulation** | Monte Carlo, B = 2,000 simulated auctions per scenario |
| **Standard errors** | Cluster bootstrap at the auction level, B<sub>bs</sub> = 500 |
| **Welfare arithmetic** | DWL<sub>alloc</sub> + λ · Δ<sub>gov</sub> with λ ∈ {0.20, 0.30, 0.40} |
| **Welfare weights** | Saez--Stantcheva (2016) generalized social-marginal-welfare-weight identity |
| **Data handling** | DuckDB / `data.table` / `arrow` (parquet cache) |
| **Figures** | `ggplot2` with `cairo_pdf`, grayscale theme |
