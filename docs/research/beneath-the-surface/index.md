---
hide:
  - navigation
paper: beneath-the-surface
---

<div class="hero-section" markdown>

# Beneath the Surface: Investigating Anti-Competitive Signals in Brazilian Public Procurement

<p class="subtitle">A Regression Discontinuity Approach to Detecting Incumbency Advantages and Strategic Bidding</p>
<p class="authors">Sergio Galletta &nbsp;&middot;&nbsp; Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Tommaso Giommoni</p>
<p class="affiliation">ETH Zurich &nbsp;&middot;&nbsp; Insper &nbsp;&middot;&nbsp; University of Amsterdam</p>

</div>

<div class="key-result" markdown>
<span class="number">1.8 pp</span>
<span class="label">Incumbency advantage for narrowly winning firms (RDD at bid-margin threshold)</span>
</div>

## Abstract

This study employs a Regression Discontinuity design inspired by Kawai et al. (2023, *Review of Economic Studies*) to examine anti-competitive behaviors in 3.8 million public procurement auctions conducted in Sao Paulo, Brazil. By comparing narrowly winning and losing bids, we identify significant incumbency advantages and irregularities in bid timing. Our findings highlight that in developing countries, anti-competitive behaviors---even when unrelated to explicit corruption---can adversely affect the efficiency of public procurement systems.

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

---

## Key Findings

!!! success "1.8 pp incumbency advantage"
    Firms narrowly winning auctions are **1.8 percentage points** more likely to be incumbents---firms that previously secured similar contracts---compared to narrowly losing bidders. This pattern suggests incumbents gain disproportionate advantages, potentially through strategic bidding or coordinated behaviors.

!!! warning "6.4 pp last-bid effect"
    Narrowly winning firms are **6.4 percentage points** more likely to have submitted the auction's final bid. This indicates possible strategic timing of bids, consistent with bid leakage or collusive behavior aimed at suppressing genuine competition.

!!! info "Robust to fixed effects"
    Both findings are robust after accounting for year and market fixed effects, strengthening the interpretation that observed discontinuities reflect deliberate anti-competitive strategies rather than random occurrences.

---

## Quick Links

| Section | Description |
|:--------|:------------|
| [Paper](paper.md) | Full manuscript discussion and contribution |
| [Results](results.md) | Main RDD estimates and graphical evidence |
| [Replication](replication.md) | Code, data access, and reproduction instructions |
| [Authors](authors.md) | About the authors |
| [Changelog](changelog.md) | Version history |

---

## Identification Strategy

The method hinges on the fact that when two firms bid nearly identical prices, the winner's edge should be effectively random if all bidders compete fairly. Under true competition, there is no systematic reason for a narrowly winning firm to differ from a narrowly losing firm in characteristics such as workload, cost structure, or frequency of recent wins. Hence, if we observe abrupt differences in these attributes exactly at the point where bids are nearly tied, we can infer that external factors---possibly collusion or corrupt favoritism---are shaping the outcome.

---

## Data

We utilize a rich administrative dataset of public procurement auctions conducted via the BEC platform (Bolsa Eletronica de Compras) in Sao Paulo state, covering January 2009 to December 2019: **3.8 million** bidding transactions submitted by **19,007** distinct firms across **169,607** unique procurement items.

---

<p class="footer-note" style="text-align:center; color:#999; font-size:0.85em; margin-top:3em;">
Working paper &middot; Submitted to the <em>International Journal of Industrial Organization</em>
</p>
