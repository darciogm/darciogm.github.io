---
hide:
  - navigation
paper: beneath-surface
---

<div class="hero-section" markdown>

# Beneath the Surface

<p class="subtitle">Catching Cartels in the Act in Brazilian Procurement</p>
<p class="authors">Sergio Galletta &nbsp;&middot;&nbsp; Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Tommaso Giommoni</p>
<p class="affiliation">ETH Zurich &nbsp;&middot;&nbsp; Insper &nbsp;&middot;&nbsp; University of Amsterdam</p>

</div>

<div class="key-result" markdown>
<span class="number">AUC 0.75</span>
<span class="label">Worker-flow network screen detects CADE-convicted cartels on ~2,300 close-margin auctions --- while canonical variance screens fire in the predicted direction but are statistically indistinguishable from chance (AUC 0.46--0.48)</span>
</div>

## Abstract

Brazil's antitrust authority has secured administrative convictions against 35 firms in seven distinct procurement cartels operating in the state of São Paulo between 2009 and 2019. We match these firms and the product markets and time windows delineated in the administrative case files to 3.8 million bids placed on the state's electronic procurement platform and to the universe of matched employer–employee records, assembling the first conviction-anchored benchmark that combines auction behavior, labor microdata, and antitrust rulings.

On the benchmark sample of roughly 2,300 close-margin auctions in which at least one convicted firm participated during the active period of its cartel, the canonical variance-based screens of Porter and Zona (1993) and Bajari and Ye (2003) fire in the direction predicted by the classical bid-rotation model — bid dispersion, the coefficient of variation of bids, and the number of active bidders are compressed at cartel-tainted auctions — yet their areas under the ROC curve lie between 0.46 and 0.48, statistically indistinguishable from chance as discriminators between cartel and non-cartel auctions. A close-margin regression discontinuity in the spirit of Kawai et al. (2023) likewise detects no discontinuity at the cutoff.

By contrast, a single alternative screen, constructed from inter-firm worker flows in the matched employer–employee data, achieves an area under the ROC curve of **0.75** on the same benchmark; the signal survives conditioning on sector and on co-bidding intensity. A specialization placebo restricted to non-cartel firm pairs bidding on the same BEC item code in the same year as each cartel-active auction absorbs approximately half of the worker-flow signal, leaving a statistically robust cartel-specific residual — consistent with a view in which cartels both inherit and reinforce the personnel flows natural to thin specialized-labor markets. We rationalize these findings through a simple model in which the cheapest coordination technology available to cartel members depends on institutional primitives: in markets with thin specialized-labor pools, collusion leaves traces in personnel flows rather than in bid patterns.

[:material-file-pdf-box: Download manuscript (PDF)](assets/paper_beneath.pdf){ .md-button .md-button--primary }

!!! info ":material-trophy: SIOE 2026 — v2 conviction-anchored benchmark"
    **Accepted for presentation at [SIOE 2026](https://www.sioe.org/conference/2026)** (INSEAD Fontainebleau, July 13–15). The SIOE version pivots to a **conviction-anchored detection benchmark**: we match 35 firms convicted by CADE in 7 São Paulo procurement cartels to the BEC auction universe and to the RAIS employer–employee panel. The headline finding is that canonical variance-based screens are directionally consistent with theory but operationally useless (AUCs near chance), while worker-flow network screens built from matched labor microdata recover an AUC of 0.75 on the same benchmark. See the [changelog](changelog.md) for details.

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">D73</span>
<span class="badge">H57</span>
<span class="badge">K21</span>
<span class="badge">L41</span>

**Keywords:**
<span class="badge badge-kw">cartel detection</span>
<span class="badge badge-kw">bid rigging</span>
<span class="badge badge-kw">worker-flow networks</span>
<span class="badge badge-kw">employer–employee matched data</span>
<span class="badge badge-kw">public procurement</span>
<span class="badge badge-kw">CADE</span>
<span class="badge badge-kw">Brazil</span>

---

## Key Findings

!!! success "Worker-flow network screen: AUC 0.75"
    A single alternative screen, constructed from inter-firm worker flows in the RAIS matched employer–employee panel, achieves an **AUC of 0.75** on the cartel-active benchmark of ~2,300 close-margin auctions. To our knowledge, this is the first matched-employer screen evaluated against formal criminal ground truth for procurement cartels.

!!! warning "Canonical variance screens are near-chance"
    Classical bid-variance screens (Porter and Zona, 1993; Bajari and Ye, 2003) fire in the direction predicted by the bid-rotation model — compression of bid dispersion, coefficient of variation, and bidder count — but yield **AUCs between 0.46 and 0.48**, statistically indistinguishable from chance. A close-margin RD in the spirit of Kawai et al. (2023) likewise produces a null. Directionally consistent with theory, operationally useless as detectors in this setting.

!!! info "Specialization placebo: roughly half / half decomposition"
    A placebo restricted to non-cartel firm pairs bidding on the same BEC item in the same year as each cartel-active auction absorbs **approximately half** of the worker-flow signal. The remaining half is a cartel-specific residual — cartel pairs share workers at 57.9% of pairings, versus 31.1% for same-market placebo and 9.9% for global clean. Both components are predicted by our institutional-thinness mechanism.

!!! danger "Institutional thinness matters for enforcement design"
    Classical screens developed against cartels in thick-labor economies can misfire when redeployed to settings where coordination relies on alternative technologies. For competition authorities with access to employer–employee microdata, worker-flow screens offer a deployable complement to canonical bid-pattern tests.

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
| **Platform** | Bolsa Eletrônica de Compras (BEC), São Paulo state |
| **Period** | January 2009 – December 2019 |
| **Bidding transactions** | 3,866,407 |
| **Unique firms** | 19,007 |
| **Unique procurement items** | 169,607 |
| **Public buying units (PBUs)** | 1,344 |
| **Auction format** | Pregão eletrônico (primary); convite (supplementary) |
| **Cartel-active benchmark** | ~2,300 close-margin auctions (&#124;MV&#124; ≤ 0.10) |
| **CADE ground truth** | 35 firms convicted in 7 São Paulo procurement cartels |
| **Supplementary data** | RAIS Identificada (employer–employee matched panel, 2009–2017) |
