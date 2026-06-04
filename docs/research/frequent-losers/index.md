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

<p class="version-tag"><em>JLEO submission version &mdash; June 2026.</em></p>

</div>

<div class="key-result" markdown>
<span class="number">+0.042</span>
<span class="label">Genuine ranking signal that survives once procurement opportunity is held fixed (within-stratum AUC 0.7715; DeLong p &approx; 2e-6) — most raw concentration is opportunity, not signal</span>
</div>

## Abstract

Cartel enforcement must allocate costly proof-producing effort
before legal proof exists, drawing first on administrative
records that are cheap but legally thin. How far can such records
screen? Using São Paulo's BEC procurement platform (2009–2019)
and CADE adjudications, we build a minimal award-layer
construct—persistent zero-win participation among always-loser
firms, the *frequent losers*—and subject it to a decomposition
that most screening studies omit. The construct concentrates
adjudication-anchored exposure to adjudicated cartel
environments; the decomposition then draws a sharp boundary. Much
of its apparent power reflects procurement opportunity and a
single adjudicated case, and it orders firms retrospectively among
incumbents rather than prospectively across the platform. Our
contribution is a transferable method for separating genuine
screening signal from exposure arithmetic and case concentration,
and a map of where cheap administrative records can, and cannot,
order forensic priority. Liability remains in the richer bid-level
record.

**JEL Classification:**
<span class="badge">D44</span>
<span class="badge">D73</span>
<span class="badge">H57</span>
<span class="badge">K21</span>
<span class="badge">L41</span>

**Keywords:**
<span class="badge badge-kw">screening under incomplete observability</span>
<span class="badge badge-kw">evidence allocation</span>
<span class="badge badge-kw">opportunity decomposition</span>
<span class="badge badge-kw">award-layer enforcement</span>
<span class="badge badge-kw">forensic priority</span>

---

## Key Findings

!!! success "A limited but genuine ranking signal survives the decomposition"
    Raw concentration against adjudication-anchored cobidders looks high (pooled/exposure-only AUC **0.946**), but most of it is procurement opportunity. Holding opportunity fixed, the within-stratum AUC is **0.7715**, a genuine increment of **+0.042** over mechanical exposure (DeLong $p \approx 2\times10^{-6}$). The honest discrimination headline is the **+0.04 increment**, not the pooled figure.

!!! warning "Scope boundary, by design"
    Against direct CADE defendants the score is at chance (AUC $\approx$ **0.49**). A loser-side screen is built to miss win-heavy defendants — this is a scope signature, not a failure. The validation target is adjudication-anchored cobidders, always-loser firms that bid alongside direct CADE defendants. The score orders forensic priority; it does not prove conduct, liability, or damages.

!!! info "Evidence allocation under costly observability"
    Award records (who participates, wins, keeps losing) are cheap and routinely observed; bid-level records are richer but costly to recover. The paper reframes procurement-cartel screening as an evidence-allocation problem: cheap administrative records can order *where* to look, not *what* coordination occurred.

!!! note "Reach and limits — what the decomposition exposes"
    The score orders firms **retrospectively** among incumbents (strict 2009–16 → 2017–19 timing survives only in the always-loser pool, $\approx 0.77$; across the full platform ROC $\approx 0.55$). One adjudicated case (rail/metro) supplies $\approx 55\%$ of positives: leave-largest-case-out collapses PR-AUC from 0.126 to 0.036. The transferable contribution is the method that separates signal from exposure arithmetic and case concentration.

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Manuscript description and methodology](paper.md)

[**Results** <br> Main tables, classification, and diagnostics](results.md)

[**Robustness** <br> Threshold sensitivity, holdouts, and scope checks](robustness.md)

[**Replication** <br> Code, data, and software requirements](replication.md)

</div>
