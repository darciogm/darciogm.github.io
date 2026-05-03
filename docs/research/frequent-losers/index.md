---
hide:
  - navigation
---

<div class="hero-section" markdown>

# Cheap Signals, Costly Proof

<p class="subtitle">Award-Layer Triage for Cartel Enforcement</p>
<p class="authors">Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Paulo Furquim de Azevedo</p>
<p class="affiliation">Insper Institute of Education and Research, Sao Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">83%</span>
<span class="label">Reduction in the bid-microdata pool the forensic stage must work on, while still recovering 131 of 193 adjudicated cobidders</span>
</div>

## Abstract

How should an enforcement agency sequence information acquisition
when the cheap operational layer is coarser than the layer where
collusion can be adjudicated? Cartel-detection screens require
bid-distribution microdata, but audit courts and oversight bodies
routinely observe only the contract-award envelope. We propose an
enforcement architecture in which an award-layer screening stage
triages firms and environments before a costly bid-layer forensic
stage interrogates them, and instantiate it with a *frequent-loser*
flag built from São Paulo's BEC contract-award records (2009--2019).
Routing forensic interrogation through the flag reduces the
bid-microdata pool by 83% (1,985 of 11,676 firms) while still
recovering 131 of 193 adjudicated cobidders. The screen is a
triage device, not an adjudication device: it ranks loser-side
firms for costly bid-layer interrogation, not cartel members for
legal sanction. Discrimination accuracy against the cobidder
population (AUC 0.864 under temporal holdout) makes the
architecture feasible; complementarity with bid-distribution
screens (+0.035 AUC over the Imhof--Wallimann pipeline, DeLong
$p = 0.014$) makes the sequencing well-defined. A simple
separating-equilibrium argument motivates endogenous loser-side
participation as the ranking primitive on the award layer. The
conceptual content travels: wherever the award layer is exposed
routinely while per-bidder bid amounts are forensic-recoverable,
screening should be sequenced before forensics.

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">D73</span>
<span class="badge">H57</span>
<span class="badge">K21</span>
<span class="badge">L41</span>

**Keywords:**
<span class="badge badge-kw">screening under incomplete observability</span>
<span class="badge badge-kw">cover bidding</span>
<span class="badge badge-kw">cartel adjacency</span>
<span class="badge badge-kw">award-layer enforcement</span>
<span class="badge badge-kw">separating equilibrium</span>

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
