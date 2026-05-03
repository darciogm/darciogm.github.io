---
hide:
  - navigation
paper: sme-public
---

<div class="hero-section" markdown>

# The Cost of Inclusion

<p class="subtitle">Decomposing Bidder Exclusion in Public Procurement</p>
<p class="authors">Darcio Genicolo-Martins</p>
<p class="affiliation">Insper Institute of Education and Research, Sao Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">R&#36;55&ndash;128M / yr</span>
<span class="label">(US&#36;16&ndash;37M) annual welfare loss imposed by the SME-only set-aside on a single product group of S&atilde;o Paulo's R&#36;13 billion procurement platform &mdash; roughly three-quarters of it attributable to sheltered bidding rather than to entry response. A 10% SME price preference welfare-dominates the set-aside on the same metric in standardized markets, at essentially zero fiscal cost.</span>
</div>

## Abstract

SME set-asides are a default procurement-preference instrument worldwide. Their welfare turns on whether the price cost flows through the change in admissible bidders or through how each remaining bidder bids — a question price regressions cannot answer. I exploit a March 2018 administrative reversal that extended an SME-only rule to medical supplies on Sao Paulo's centralized R\$13 billion procurement platform. A difference-in-differences against 76 never-treated product groups estimates a 10--11 percent rise in absolute winning prices, with SME participation roughly doubling. An asymmetric IPV model identified from Pregao drop-out bids decomposes the price response under observed equilibrium entry: the within-auction component accounts for 74 percent of the simulated effect in non-pharmaceuticals and 66 percent in pharmaceuticals; endogenous SME entry attenuates a 59 percent larger latent shock in non-pharmaceuticals and an 81 percent larger one in pharmaceuticals. The structural counterfactual on its own normalization is three to four times the DiD coefficient because the two objects average over related but distinct primitives. A 10 percent SME price preference welfare-dominates the set-aside in thick standardized markets at near-zero fiscal cost; the comparison reverses in thin pharmaceutical markets under strict primitive invariance. The conditional ranking is itself the policy-design statement.

[:material-file-pdf-box: Download manuscript (PDF)](assets/sme_public_procurement.pdf){ .md-button .md-button--primary } &nbsp;
[:material-book-open-variant: Online appendix](assets/sme_public_online_appendix.pdf){ .md-button } &nbsp;
[:material-star-outline: Highlights](assets/sme_public_highlights.pdf){ .md-button }

*Submission-ready version (v5, JPubE format) — April 2026.*

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">H32</span>
<span class="badge">H57</span>
<span class="badge">L26</span>
<span class="badge">L53</span>

**Keywords:**
<span class="badge badge-kw">public procurement</span>
<span class="badge badge-kw">SME set-asides</span>
<span class="badge badge-kw">asymmetric auctions</span>
<span class="badge badge-kw">structural estimation</span>
<span class="badge badge-kw">welfare</span>
<span class="badge badge-kw">marginal cost of public funds</span>

---

## Headline magnitudes

| | **Non-pharma** | **Pharma** |
|---|:---:|:---:|
| DiD on log p<sup>final</sup> (absolute) | +0.10 to +0.11 | +0.10 to +0.11 |
| DiD on p<sup>final</sup> / p<sup>ref</sup> | +0.06 | +0.06 |
| Simulated p<sub>S<sub>3</sub></sub> − p<sub>S<sub>1</sub></sub>, units of p<sup>ref</sup> | +0.259 | +0.308 |
| Within-auction share, main spec | 74.5% | 73.3% |
| Within-auction share, Turnbull NPMLE | 74.0% | 82.0% |
| Within-auction share, strict invariance | 85.0% | 79.0% |
| Welfare cost (% of p<sub>S<sub>1</sub></sub>, λ = 0.30) | 28.7% | 47.0% |
| w<sup>SME</sup><sub>★</sub> to prefer set-aside, main spec | 2.42 | 2.61 |
| w<sup>SME</sup><sub>★</sub>, strict invariance | > 1 | 0.7 |

*DiD against 76 never-treated product groups, 18-month symmetric window around March 2018. Structural magnitudes from the asymmetric IPV counterfactual under observed equilibrium entry.*

---

## Key Findings

!!! success "The price effect is mostly within the auction"
    The within-auction component — *sheltered bidding* — is **74.0% of the simulated total effect in non-pharma** and 66.1% in pharma. The share stays in the **66--85% range** across cost-distribution estimators (Turnbull NPMLE: 74, 82) and across the two specifications of the post-policy SME pool (strict invariance: 85, 79). The set-aside's price cost is mostly a property of how the surviving pool bids, not of how many firms it contains.

!!! warning "Endogenous SME entry attenuates a 59% larger latent shock in non-pharma, 81% in pharma"
    Holding the SME pool at its pre-policy size raises the simulated price effect to **159% of the realized one in non-pharma** and 181% in pharma. Without endogenous entry, the set-aside would cost 59% more in price and welfare in non-pharma (81% in pharma). Participation is the government's partial offset, not the source of the markup.

!!! danger "A 10% price preference welfare-dominates the set-aside in non-pharma"
    In thick standardized markets the preference shifts simulated prices by **+0.010 against +0.244** under the set-aside, at essentially zero fiscal cost. The preference dominates under both the main equilibrium-selection specification and the strict-invariance benchmark.

!!! info "The pharmaceutical comparison bifurcates — and the bifurcation is the diagnostic"
    In thin heterogeneous pharma markets the preference dominates under the main specification, but the ranking flips under strict invariance, with the implicit welfare weight required to prefer the set-aside falling to **0.7** (vs. 2.61 under the main specification). The bifurcation pins down where the modeling treatment of the protected pool is first-order.

!!! note "Three magnitudes that should not be confused"
    The DiD coefficient (10--11%) is the average effect on observed log winning prices. The structural counterfactual (+0.259/+0.308 of p<sup>ref</sup>) is the simulated mean of the second-order statistic under each counterfactual entry profile, three to four times the DiD coefficient on the structural normalization. The welfare cost (28.7% of p<sub>S<sub>1</sub></sub> in non-pharma, 47.0% in pharma at λ = 0.30) adds the marginal-cost-of-public-funds distortion on top of the allocative wedge.

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Manuscript description and methodology](paper.md)

[**Results** <br> Structural decomposition, entry response, policy comparison](results.md)

[**Robustness** <br> Strict invariance, F<sub>c</sub> regime, window, sample filter](robustness.md)

[**Extensions** <br> Welfare arithmetic, MCPF sensitivity, furosemida vignette](extensions.md)

[**Advanced Methods** <br> Asymmetric IPV, drop-out point ID, UH cleaning, BNE simulation](advanced.md)

[**Replication** <br> Code, data, software requirements](replication.md)

</div>
