---
hide:
  - navigation
paper: frequent-losers
---

<div class="hero-section" markdown>

# Frequent Losers as a Cartel Screen

<p class="subtitle">Detecting Cover Bidding Without Bid Microdata</p>
<p class="authors">Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Paulo Furquim de Azevedo</p>
<p class="affiliation">Insper Institute of Education and Research, São Paulo, Brazil</p>

</div>

<div class="key-result" markdown>
<span class="number">+3.6 to +7.7%</span>
<span class="label">Conditional within-item price gap associated with frequent-loser presence, across five estimators</span>
</div>

## Abstract

Can we screen for bid-rigging cartels in jurisdictions where bid
microdata are not centrally collected? We document a peculiar
pattern in public-procurement records from the State of São
Paulo, Brazil (2009&ndash;2019), that suggests we can. Of 16,843
firms that bid without ever winning, 2,735 participated in 14 or
more tender-items&mdash;a population we call *frequent losers*.
Their behavior is hard to square with expected-profit competition
and reads naturally as the cover-bidder side of bid-rigging
arrangements. Within-item, within-year, within-procuring-unit
comparisons across 1,654,401 items associate frequent-loser
presence with a +3.6 to +7.7% higher negotiated unit price across
estimators. The price gap shrinks as buyers grow&mdash;from +21.4%
in the smallest procuring-unit-size quartile to +1.7% in the
largest&mdash;a 12.6&times; ratio that is the strongest source of
heterogeneity, larger than the pregão&ndash;convite gap. We read
the pattern through a separating-equilibrium framework with cover
bidders and genuine entrants. Against CADE's adjudicated cartel
portfolio, the construct discriminates cobidder firms at AUC 0.864
under temporal holdout. Identification is descriptive by design.
Built from contract-award records, the construct translates into a
three-stage administrative pathway&mdash;Screen, Triage,
Forensic&mdash;deployable where bid microdata are absent.

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
<span class="badge badge-kw">frequent losers</span>
<span class="badge badge-kw">cartel screen</span>
<span class="badge badge-kw">cover bidding</span>
<span class="badge badge-kw">public procurement</span>
<span class="badge badge-kw">bid rigging</span>
<span class="badge badge-kw">separating equilibrium</span>

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
