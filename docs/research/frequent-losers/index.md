---
paper: frequent-losers
hide:
  - navigation
---

<div class="hero-section" markdown>

# Cheap Signals, Costly Proof

<p class="subtitle">The Reach and Limits of Award-Layer Screening in Cartel Enforcement</p>
<p class="authors">Darcio Genicolo-Martins &nbsp;&middot;&nbsp; Paulo Furquim de Azevedo</p>
<p class="affiliation">Insper Institute of Education and Research, Sao Paulo, Brazil</p>

<p class="downloads" markdown>
[Download paper (PDF)](paper.pdf){ .md-button .md-button--primary } &nbsp;
[Online appendix](online_appendix.pdf){ .md-button }
</p>

<p class="version-tag"><em>JLEO submission version &mdash; June 2026 (canonical-target re-estimation, 2026-06-04).</em></p>

</div>

<div class="key-result" markdown>
<span class="number">&approx; 0.50</span>
<span class="label">Within-opportunity AUC of the award-layer score against a reproducible, non-circular validation target — once procurement opportunity is held fixed, the cheap signal's apparent reach is opportunity arithmetic, not screening signal</span>
</div>

## Abstract

Cartel enforcement must allocate costly proof-producing effort
before legal proof exists. Using São Paulo's BEC procurement
platform and CADE adjudications, we ask how far routine award
records can rank where bid-level forensics should begin. We study
a minimal award-layer construct—persistent zero-win
participation—and validate it against a reproducibly constructed,
adjudication-anchored cobidder label that never uses the screen
itself. The decomposition is deliberately deflationary: the cheap
signal's apparent reach mostly reflects procurement opportunity
and case concentration; within comparable opportunity sets the
residual ordering is marginal at best, strict prospective ranking
fails outside incumbent pools, and exposure concentrates in a few
adjudicated cases. The transferable contribution is the audit
framework—label construction, opportunity adjustment, timing
discipline, case-composition and cost-recall accounting—that
shows where cheap screens stop and what bid-layer follow-up
costs. Liability remains in the richer evidentiary record.

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">D73</span>
<span class="badge">H57</span>
<span class="badge">K21</span>
<span class="badge">K42</span>
<span class="badge">L41</span>

**Keywords:**
<span class="badge badge-kw">cartel screening</span>
<span class="badge badge-kw">award-layer data</span>
<span class="badge badge-kw">enforcement triage</span>
<span class="badge badge-kw">incomplete observability</span>
<span class="badge badge-kw">opportunity decomposition</span>

---

## Key Findings

!!! success "A reproducible, non-circular validation target"
    The validation label is built from current scripts: **651 unique always-loser cobidders** — zero-win firms sharing at least one tender-item with a BEC-active adjudicated CADE defendant (defendants excluded). The frequent-loser flag is never used to construct the label: 341 positives are frequent losers, **310 are not**. Every downstream table is estimated against this label.

!!! warning "The deflationary core result"
    Raw discrimination looks respectable (ROC-AUC **0.761**, lift 5.6&times; at the top 500) — but an opportunity-only model with no score reaches **0.905**, and within comparable opportunity sets the score ranks at **&approx; chance (0.47–0.51)**. Permutation tests do not reject the opportunity-only null (p = 0.13–0.39), and the result is robust to intensity-restricted labels (contact &geq; 2 strengthens it). The cheap signal's apparent reach is opportunity arithmetic.

!!! note "Reach and limits — timing and case concentration"
    Strict prospective ranking fails outside incumbent pools (full-universe ROC 0.47; zero true positives in the top 500 in every rolling-origin year; 23.5% of positives are unrankable entrants). One adjudicated case (rail/metro) supplies **32% of positives** and 45% of top-500 true positives — dropping it cuts PR-AUC by 37%. The estimated ranking is not a portable cartel score.

!!! info "What transfers: the audit framework"
    The contribution is the decomposition an enforcement agency can run **before** opening costly bid records: label construction, opportunity adjustment, timing discipline, case-composition audit, bid-layer comparison, and cost-recall accounting (firm-count savings of 88% shrink to 33% in bid rows — denominators matter). It shows where cheap screens stop. Liability remains in the richer evidentiary record.

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Manuscript description and methodology](paper.md)

[**Results** <br> Main tables, classification, and diagnostics](results.md)

[**Robustness** <br> Threshold sensitivity, holdouts, and scope checks](robustness.md)

[**Replication** <br> Code, data, and software requirements](replication.md)

</div>
