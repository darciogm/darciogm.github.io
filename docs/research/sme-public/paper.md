---
paper: sme-public
---

# Manuscript

## Download

- [Main paper &mdash; PDF](assets/sme_public_procurement.pdf)
- [Online appendix &mdash; PDF](assets/sme_public_online_appendix.pdf)
- [Highlights &mdash; PDF](assets/sme_public_highlights.pdf)
- [Cover letter &mdash; PDF](assets/sme_public_cover_letter.pdf)
- [Video &mdash; *The Cost of Inclusion* (17 min, MP4)](assets/cost_of_inclusion.mp4)

JPubE submission, May 2026.

---

## Contribution

The paper makes three contributions:

1. **A price-formation decomposition.** I decompose the price effect of an SME set-aside into a **lost-discipline component** (non-SMEs removed from the price-forming pool, SME pool held fixed) and a **protected-pool offset** (post-policy SME pool replacing the pre-policy one). The decomposition turns the set-aside price effect into a design question: how much is mechanical exclusion of rival bidders, and how much is the protected pool's response?

2. **Implementation via a reverse-auction setting.** In São Paulo's *Pregão* (electronic English-reverse auction), losing bidders' drop-out prices reveal type-specific willingness to supply under the maintained independent-private-values clock interpretation (Vickrey 1961; Milgrom and Weber 1982; Haile and Tamer 2003; Athey and Haile 2002). I use the recovered primitives, an auction-level heterogeneity correction in the spirit of Krasnokutskaya (2011), and observed equilibrium entry to simulate counterfactual price-formation objects under three pools.

3. **Recast of policy design.** The relevant policy frontier is not SME support versus no support, but **exclusionary redistribution versus support that preserves the price-forming bidder pool**. A 10 percent SME price preference enters as a static design benchmark: it preserves the non-SME bidders that discipline the price-forming order statistic but delivers less redistribution than full exclusion.

In **standardized non-pharmaceutical** procurement, the protected pool responds (SME participation roughly doubles) but does not replace the excluded discipline: the full set-aside generates a **static welfare loss of 28.9% of the open-regime price** at &lambda;=0.30, with the exclusion component accounting for ~72% of the absolute price decomposition. The implied SME welfare weight required for a planner to prefer full exclusion to the 10% preference is **2.42**. The exclusion-dominant ranking survives Turnbull winner-censoring (74%), strict-invariance of the post-policy SME distribution (85%), and replacement of the Poisson bidder-count process with the empirical class-period-type count distribution (69%).

**Pharmaceutical** procurement is reported as a **boundary case**, not as a second headline: there the protected pool is thinner, composition changes more under the policy, and the welfare ranking becomes sensitive to how the post-policy SME pool is modeled. The non-pharmaceutical ranking is stable across the main and strict-invariance specifications; the pharmaceutical ranking is not.

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
