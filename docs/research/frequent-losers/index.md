---
hide:
  - navigation
paper: frequent-losers
---

<div class="hero-section" markdown>

# Screening Under Incomplete Observability

<p class="subtitle">Equilibrium Loser-Side Participation as an Award-Layer Signal of Cartel Activity</p>
<p class="authors">Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Paulo Furquim de Azevedo</p>
<p class="affiliation">Insper Institute of Education and Research, São Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">+3.6 to +7.7%</span>
<span class="label">Broad-sample conditional within-item price gap associated with frequent-loser presence, across four estimators</span>
</div>

## Abstract

Cartel-screening methods in the empirical literature presuppose
bid-level observability. In many enforcement environments only
the contract-award layer survives, and the question of what
collusion-relevant information remains under that coarsening is
open. We study the screening value of endogenous loser-side
participation. A separating-equilibrium framework identifies
log(1+tenders_count) together with the wins=0 filter as a
sufficient ranking statistic for cover-bidder type given
award-record data; the median+1.5&times;IQR binary rule is its
information-coarsening. In São Paulo's Bolsa Eletrônica de
Compras (2009&ndash;2019), 2,735 of 16,843 persistent zero-win
firms cross this rule. Their presence associates with a
+3.6 to +7.7% higher conditional log negotiated unit price
across estimators. Forcing overlap on observables reverses the
sign (overlap-cell ATT &minus;9.72%; propensity-score-trimmed
&minus;30.67%). We read the reversal as the signature of a
screening-value object rather than a treatment-effect object:
overlap restrictions strip the endogenous sorting that generates
the screen's economic content. Against CADE's cartel records the
construct reaches AUC 0.748 on a contemporaneous benchmark
restricted to four pre-2020 cases and 0.864 under temporal
holdout against cobidder labels; against direct defendants in
the broader BEC firm universe AUC is 0.491. The exercise locates
the construct as cartel-adjacency evidence under coarsened
observability, separates an award-layer screening stage from a
bid-layer forensic stage, and frames the heterogeneity across
buyer size as variation in the detection regime rather than as
identification of an institutional channel.

[:material-file-pdf-box: Download manuscript (PDF)](assets/paper_v15.pdf){ .md-button .md-button--primary }
[:material-file-document-outline: Online appendix](assets/paper_v15_online_appendix.pdf){ .md-button }
[:material-format-list-bulleted: Highlights](assets/paper_v15_highlights.pdf){ .md-button }

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
