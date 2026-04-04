---
hide:
  - navigation
paper: frequent-losers
---

<div class="hero-section" markdown>

# Screening for Bid Rigging with Frequent Losers

<p class="subtitle">A Participation-Based Screen for Public Procurement</p>
<p class="authors">Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Paulo Furquim de Azevedo</p>
<p class="affiliation">Insper Institute of Education and Research, Sao Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">3.6--7.7%</span>
<span class="label">Conditional price association with frequent-loser presence (cross-fit to CEM matching)</span>
</div>

## Abstract

Minimum-bidder rules in public procurement give cartels a reason to
deploy cover bidders---firms that show up repeatedly with no
intention of winning. We exploit this behavioral footprint to build
a participation-based screen: frequent losers (FL), firms
that never win yet bid abnormally often. The screen requires only
win/loss records, making it deployable in settings where bid
microdata are unavailable. In Sao Paulo's electronic procurement
(4.5 million tender-items, 2009--2019), it achieves
AUC = 0.94 against competition-authority co-participation
(0.54 within participation-count bands, confirming that volume
contributes substantially to the unconditional figure), complements
bid-level tools (correlation 0.06), and flags environments with
3.6--7.7% higher conditional prices. The price association is
concentrated in competitive markets and where cover bidding is
voluntary rather than forced by the minimum-bidder
constraint---suggesting strategic deployment, not mere rule
compliance. We propose a three-stage enforcement pathway (screen,
triage, investigate) that allocates investigative resources toward
the procurement environments where the association is strongest and
oversight weakest.

[:material-file-pdf-box: Download manuscript (PDF)](assets/paper_screening_v4_final.pdf){ .md-button .md-button--primary }

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">D73</span>
<span class="badge">H57</span>
<span class="badge">K21</span>
<span class="badge">L41</span>

**Keywords:**
<span class="badge badge-kw">bid rigging</span>
<span class="badge badge-kw">cover bidding</span>
<span class="badge badge-kw">public procurement</span>
<span class="badge badge-kw">cartel screening</span>
<span class="badge badge-kw">frequent losers</span>

---

## Key Findings

!!! success "3.6--7.7% conditional price association"
    FL-present tenders exhibit **3.6--7.7% higher conditional prices** across four estimation approaches: cross-fit (3.6%), IPW (5.5%), OLS with item + year + PBU FE (6.4%), and CEM matching (7.7%). The estimates cluster rather than scatter, indicating a stable association across designs.

!!! warning "AUC = 0.94 against CADE convictions"
    The FL screen achieves **AUC = 0.94** against competition-authority convictions, versus 0.79 for an Imhof-style bid-level proxy. FL firms co-participate with convicted cartelists at **3.5 times** the baseline rate ($p < 0.001$). The two screens capture largely non-overlapping information (correlation 0.06); naively combining them into a single score degrades detection to AUC = 0.61, confirming that they operate on different dimensions and are best deployed sequentially.

!!! danger "Coordinated cover bidding (Regime 2)"
    BIC strongly favors coordinated cover bidding ($\Delta$BIC = $-91{,}473$): FL bids are 28% **less** dispersed than non-FL bids ($\sigma_c / \sigma_g = 0.72$). The price association concentrates in **competitive markets** (0.126) and vanishes in concentrated ones ($-0.018$), consistent with strategic complementarity ($\hat{\gamma} = 0.69 > 0$).

!!! info "Three-stage enforcement pathway"
    The FL screen requires only **participation and outcome data** (no bid values). We propose a screen--triage--investigate pathway that exploits a **12.5x gradient** in the FL--price association across PBU size quartiles to direct investigative resources where oversight is weakest.

---

## Quick Links

<div class="quick-links" markdown>

[**Video** <br> Narrated animated overview of the paper (English)](video.md)

[**Paper** <br> Contribution, institutional setting, and empirical strategy](paper.md)

[**Results** <br> Classification, detection, price association, and diagnostics](results.md)

[**Robustness** <br> Threshold sensitivity, DiD, IV diagnostic, and extensions](robustness.md)

[**Replication** <br> Code, data, and pipeline](replication.md)

</div>
