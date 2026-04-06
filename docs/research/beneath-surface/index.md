---
hide:
  - navigation
paper: beneath-surface
---

<div class="hero-section" markdown>

# Beneath the Surface

<p class="subtitle">Investigating Anti-Competitive Signals in Brazilian Public Procurement</p>
<p class="authors">Sergio Galletta &nbsp;&middot;&nbsp; Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Tommaso Giommoni</p>
<p class="affiliation">ETH Zurich &nbsp;&middot;&nbsp; Insper &nbsp;&middot;&nbsp; University of Amsterdam</p>

</div>

<div class="key-result" markdown>
<span class="number">1.8 pp</span>
<span class="label">Incumbency advantage for narrowly winning firms --- RDD at the bid-margin threshold in 3.8 million sealed-bid auctions</span>
</div>

## Abstract

This study employs a Regression Discontinuity design inspired by Kawai, Nakabayashi, Ortner & Chassang (2023, *Review of Economic Studies*) to examine anti-competitive behaviors in 3.8 million public procurement auctions conducted in Sao Paulo, Brazil (2009--2019). By comparing narrowly winning and losing bids in sealed-bid tenders, we identify significant incumbency advantages and irregularities in bid timing. Specifically, narrowly winning firms are 1.8 percentage points more likely to be incumbents and 6.4 percentage points more likely to have submitted the final bid. These patterns are robust to year and market fixed effects, and are consistent with bid rotation, strategic timing, or favoritism by procurement officials. Our findings highlight that in developing countries, anti-competitive behaviors---even when unrelated to explicit corruption---can adversely affect the efficiency of public procurement systems.

[:material-file-pdf-box: Download manuscript (PDF)](assets/paper_beneath.pdf){ .md-button .md-button--primary }

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">D73</span>
<span class="badge">H57</span>
<span class="badge">K21</span>
<span class="badge">L41</span>

**Keywords:**
<span class="badge badge-kw">bid rigging</span>
<span class="badge badge-kw">incumbency advantage</span>
<span class="badge badge-kw">regression discontinuity</span>
<span class="badge badge-kw">public procurement</span>
<span class="badge badge-kw">anti-competitive behavior</span>
<span class="badge badge-kw">Brazil</span>

---

## Key Findings

!!! success "1.8 pp incumbency advantage at the threshold"
    Firms narrowly winning auctions are **1.8 percentage points** more likely to be incumbents---firms that previously secured similar contracts within the same market---compared to narrowly losing bidders. This holds with and without year and market fixed effects ($t \approx 3.6$), ruling out time trends and market-specific confounders.

!!! warning "6.4 pp last-bid effect"
    Narrowly winning firms are **6.4 percentage points** more likely to have submitted the auction's final bid ($t \approx 8.0$). This indicates possible strategic timing of bids, consistent with bid leakage or collusive behavior aimed at suppressing genuine competition.

!!! info "Identification via close-margin auctions"
    When two firms bid nearly identical prices, the winner's edge should be effectively random under genuine competition. Any systematic jump in firm characteristics at the winning threshold reveals non-competitive forces shaping the outcome. Our RDD exploits this intuition with **280,000 observations** within the optimal bandwidth.

!!! danger "Developing-country procurement at risk"
    The discontinuities we document are consistent with both **firm-level collusion** (bid rotation, coordinated timing) and **official-level favoritism** (selective information leakage, preferential treatment of incumbents). Either interpretation implies substantial efficiency losses in a procurement system handling billions of dollars annually.

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Contribution, methodology, and institutional background](paper.md)

[**Results** <br> Main RDD estimates and graphical evidence](results.md)

[**Robustness** <br> Density tests, placebo cutoffs, donut-hole, balance](robustness.md)

[**Replication** <br> Code, data access, and software requirements](replication.md)

</div>

---

## Data at a Glance

| Feature | Value |
|:--------|:------|
| **Platform** | Bolsa Eletronica de Compras (BEC), Sao Paulo state |
| **Period** | January 2009 -- December 2019 |
| **Bidding transactions** | 3,866,407 |
| **Unique firms** | 19,007 |
| **Unique procurement items** | 169,607 |
| **Public buying units (PBUs)** | 1,344 |
| **Auction format** | Sealed-bid (*convite*) |
| **Analysis sample (BW = 0.02)** | 280,436 winner-loser pairs |
| **Supplementary data** | RAIS Identificada (employer-employee matched panel, 2009--2017) |
