---
hide:
  - navigation
paper: sme-public
---

<div class="hero-section" markdown>

# The Price of Exclusion

<p class="subtitle">SME Set-Asides in Public Procurement</p>
<p class="authors">Darcio Genicolo-Martins</p>
<p class="affiliation">Insper Institute of Education and Research, Sao Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">28.9%</span>
<span class="label">static welfare loss from the full SME set-aside in standardized non-pharmaceutical procurement, at &lambda;=0.30 &mdash; with exclusion of non-SMEs accounting for ~72% of the absolute price decomposition. A 10% SME price preference preserves the price-forming pool at near-zero static welfare cost.</span>
</div>

## Abstract

Set-asides expand SME access to public procurement by removing rival bidders from the auction. This paper shows that, when the excluded bidders are the price-forming ones, the policy replaces competition with eligibility at high static cost. I study São Paulo's centralized electronic procurement platform, where a legal reinterpretation expanded SME-only tendering into medical and hospital supplies. The platform's reverse auctions record drop-out prices that, under the maintained independent-private-values clock interpretation, reveal type-specific willingness to supply. I use these exits to decompose the set-aside price effect into lost competitive discipline from excluding non-SMEs and a protected-pool offset from the post-policy SME pool. In standardized non-pharmaceutical procurement, the protected pool responds but does not replace the excluded discipline: the full set-aside generates a static welfare loss of *28.9 percent* of the open-regime price at &lambda;=0.30. Pharmaceutical procurement exhibits larger but more model-sensitive losses. A *10 percent SME price preference*, simulated as a static design benchmark, keeps non-SMEs in the auction at near-zero price cost in standardized markets, but delivers less redistribution than full exclusion. The relevant frontier is therefore not SME support versus no support; it runs between exclusionary redistribution and support that preserves the price-forming bidder pool.

[:material-file-pdf-box: Download manuscript (PDF)](assets/sme_public_procurement.pdf){ .md-button .md-button--primary } &nbsp;
[:material-book-open-variant: Online appendix](assets/sme_public_online_appendix.pdf){ .md-button } &nbsp;
[:material-star-outline: Highlights](assets/sme_public_highlights.pdf){ .md-button } &nbsp;
[:material-email-outline: Cover letter](assets/sme_public_cover_letter.pdf){ .md-button }

*JPubE submission &mdash; May 2026.*

**JEL Classification:**
<span class="badge">H32</span>
<span class="badge">H57</span>
<span class="badge">L26</span>
<span class="badge">L53</span>
<span class="badge">D44</span>

**Keywords:**
<span class="badge badge-kw">public procurement</span>
<span class="badge badge-kw">SME set-asides</span>
<span class="badge badge-kw">auctions</span>
<span class="badge badge-kw">welfare</span>

---

## Headline magnitudes

| | **Non-pharma** | **Pharma (boundary case)** |
|---|:---:|:---:|
| DiD on log p<sup>final</sup>, 18m | &minus;0.113 | &minus;0.113 |
| Simulated p<sub>S<sub>3</sub></sub> &minus; p<sub>S<sub>1</sub></sub>, units of p<sup>ref</sup> | +0.227 | +0.309 |
| Exclusion component (S<sub>2</sub>&minus;S<sub>1</sub>) | +0.371 | +0.565 |
| Protected-pool offset (S<sub>3</sub>&minus;S<sub>2</sub>) | &minus;0.144 | &minus;0.256 |
| Exclusion share (absolute, main) | 72.0% | 68.8% |
| Exclusion share, Turnbull NPMLE | 74.0% | 82.0% |
| Exclusion share, strict invariance | 85.0% | 79.0% |
| Exclusion share, empirical bidder counts | 69.4% | 63.1% |
| Welfare cost (% of p<sub>S<sub>1</sub></sub>, &lambda;=0.30) | 28.9% | 44.8% |
| w<sup>SME</sup><sub>&star;</sub> to prefer full exclusion to 10% preference | 2.42 | 2.61 |
| w<sup>SME</sup><sub>&star;</sub>, strict invariance | &gt; 1 | 0.7 |

*DiD against 76 never-treated product groups, 18-month symmetric window around March 2018, used only as timing/sign/scale validation. Structural magnitudes are counterfactual price-formation objects under the maintained IPV clock interpretation and observed equilibrium entry.*

---

## Key Findings

!!! success "Exclusion dominates the price decomposition"
    Removing non-SMEs while holding the pre-policy SME pool fixed (the &Delta;<sup>excl</sup> channel) accounts for **~72% of the price decomposition in absolute magnitude** in standardized non-pharmaceutical procurement. The post-policy protected pool responds (SME participation roughly doubles) but does not recreate the price discipline supplied by the excluded non-SMEs. The exclusion-dominant ranking survives Turnbull winner-censoring (74%), strict-invariance of the post-policy SME distribution (85%), and replacing the Poisson bidder-count process with the empirical class-period-type count distribution (69%).

!!! danger "Static welfare cost of full set-aside: 28.9% in standardized markets"
    At a marginal cost of public funds of &lambda;=0.30, the full SME-only regime generates a **static welfare loss of 28.9% of the open-regime price** in standardized non-pharmaceutical procurement. Pharmaceuticals exhibit larger but more composition-sensitive losses (44.8%), reported as a boundary case rather than a second headline.

!!! info "A 10% price preference preserves the price-forming pool at near-zero static cost"
    Simulated as a static design benchmark, a **10 percent SME price preference** keeps non-SMEs inside the auction and delivers positive SME-favoring redistribution at near-zero static welfare cost in standardized markets. The implied welfare weight required for a planner to prefer the full set-aside is **2.42 in non-pharmaceuticals**. Pharmaceuticals require 2.61 under the main specification and 0.7 under strict invariance &mdash; a bifurcation that pins down where the modeling treatment of the protected pool is first-order.

!!! warning "Pharmaceutical procurement is a boundary case"
    The protected pool is thinner, composition changes more under the policy, and the welfare ranking becomes sensitive to how the post-policy SME pool is modeled. The non-pharmaceutical ranking is stable across the main and strict-invariance specifications; the pharmaceutical ranking is not. Pharmaceuticals are reported as a scope condition, not as a second headline result.

!!! note "Three magnitudes that should not be confused"
    The DiD coefficient on log winning prices ($-$0.113 at 18m) is the average reduced-form effect, used as timing/sign/scale validation only. The structural counterfactual ($+$0.227 NP, $+$0.309 PH in $p^\mathrm{ref}$ units) is the simulated mean of the second-order statistic under each counterfactual bidder pool. The welfare cost (28.9% / 44.8% of $p_{S_1}$ at &lambda;=0.30) adds the marginal-cost-of-public-funds distortion on top of the allocative wedge.

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Manuscript description and methodology](paper.md)

[**Results** <br> Main tables, event studies, and trends](results.md)

[**Robustness** <br> Placebo tests, alternative clustering, permutation inference](robustness.md)

[**Replication** <br> Code, data, and software requirements](replication.md)

</div>
