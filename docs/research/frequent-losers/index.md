---
hide:
  - navigation
paper: frequent-losers
---

<div class="hero-section" markdown>

# Frequent Losers

<p class="subtitle">A Cover-Bidder Screen Without Bid Microdata</p>
<p class="authors">Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Paulo Furquim de Azevedo</p>
<p class="affiliation">Insper Institute of Education and Research, São Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">AUC 0.864</span>
<span class="label">Firm-level discrimination of CADE cobidders inside the always-loser stratum under temporal holdout (train 2009&ndash;2016, test 2017&ndash;2019)</span>
</div>

## Abstract

Can a cartel-detection screen built on the contract-award
envelope identify cartel-adjacent firms when per-bidder bid
amounts are not routinely observable? A separating-equilibrium
argument with cover bidders identifies endogenous loser-side
participation as a sufficient ranking statistic given
award-record data, and a binary *frequent-loser* flag makes the
statistic operational. On São Paulo's BEC platform
(2009&ndash;2019), the flag discriminates 193 adjudicated
cobidders inside the always-loser stratum at AUC 0.864 under
temporal holdout. Compared with the seven-feature
Imhof&ndash;Wallimann pipeline trained on bid microdata, it
matches AUC on a thinner envelope and adds non-redundant signal
in combination (+0.096 AUC, DeLong p&lt;10&minus;25). A
sequential rule that uses the flag to filter the bid-microdata
interrogation down to 2,000 of 11,676 firms still recovers 131
of 193 cobidders, an 83% footprint reduction whose recall
robustness survives the temporal-holdout audit. Cobidders bid
plausibly close to winners with elevated within-firm dispersion,
the signature of credible cover bidding rather than the textbook
deliberately-uncompetitive form. The implication is
architectural. Screening and forensic stages belong in sequence,
not in competition: the screen runs on the layer audit courts
already query, and the forensic stage inherits a much smaller
pool to interrogate.

[:material-file-pdf-box: Download manuscript (PDF)](assets/paper_v17.pdf){ .md-button .md-button--primary }
[:material-file-document-outline: Online appendix](assets/paper_v17_online_appendix.pdf){ .md-button }

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
<span class="badge badge-kw">participation-based statistics</span>

---

## Key Findings

!!! success "+3.6 to +7.7% conditional price gap across five estimators"
    Frequent-loser-present tenders are associated with a higher
    log negotiated unit price across full-sample OLS (+6.8%),
    within-PBU OLS (+6.4%), IPW (+5.5%), CEM matching (+7.7%),
    and cross-fit (+3.6%). The cross-fit decomposition isolates
    the structural component (+3.6%) from within-sample
    classification noise (~+2.8 percentage points), and we adopt
    the resulting +3.6 to +7.7% range as the headline reference.

!!! success "12.6&times; oversight gradient across procuring-unit size"
    The price gap collapses monotonically as buyers grow: +21.4%
    in the smallest procuring-unit-size quartile, +9.8% in the
    second, +4.5% in the third, and +1.7% in the largest. The
    12.6&times; ratio between the extreme quartiles is the
    strongest source of heterogeneity in the data, larger than
    the pregão&ndash;convite gap or any cross-sector spread, and
    consistent with the framework's comparative static
    &part;m*/&part;&theta;<sub>k</sub> < 0&mdash;cover bidders
    deploy more aggressively where oversight is thinner.

!!! info "Validation against CADE adjudications: bounded 0.748&ndash;0.924"
    Inside the always-loser stratum, the construct discriminates
    193 adjudicated CADE-cobidder firms at firm-level AUC 0.924
    (in-sample) and 0.864 (temporal holdout, train 2009&ndash;2016
    / test 2017&ndash;2019). Restricted to four cases adjudicated
    pre-2020, the contemporaneous lower bound is AUC 0.748. The
    construct flags cover bidders, not cartel ringleaders: against
    47 direct CADE defendants in the broader BEC firm universe,
    AUC is 0.49 by design.

!!! warning "Comparable accuracy at lower data cost than bid-distribution detectors"
    The construct reaches AUC 0.903 on the full always-loser pool,
    comparable to the full Imhof&ndash;Wallimann pipeline (AUC
    0.888) which requires per-bid offer values. Combined, the
    classifiers reach AUC 0.955&ndash;0.962, with the gain
    indicating non-redundant signal in the participation-only and
    bid-distribution dimensions. We do not claim dominance; we
    claim informational complementarity.

!!! info "Three-stage administrative pathway"
    *Screen* computes log(1+tenders_count) on award records and
    flags top-*k* environments. *Triage* cross-references flagged
    firms with adjudication records (CADE, CGU, TCE) and the
    operational priors of the oversight body. *Forensic* deploys
    bid-distribution methods where bid microdata are available.
    The construct narrows the case-load that reaches the forensic
    stage at near-zero marginal data cost.

---

## Quick Links

<div class="quick-links" markdown>

[**Video** <br> Narrated animated overview of the paper (English)](video.md)

[**Paper** <br> Contribution, institutional setting, and empirical strategy](paper.md)

[**Results** <br> Within-item price gap, oversight gradient, and CADE validation](results.md)

[**Robustness** <br> Threshold sensitivity, identification audits, operational metrics](robustness.md)

[**Replication** <br> Code, data, and pipeline](replication.md)

</div>
