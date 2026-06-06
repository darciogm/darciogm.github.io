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

<p class="version-tag"><em>JLEO version v24 &mdash; positive-contribution reframe (enforcer stopping rule + over-crediting bias), two platforms (BEC + ComprasNet), June 2026.</em></p>

</div>

<div class="key-result" markdown>
<span class="number">c / V</span>
<span class="label">The award-to-bid decision is an <strong>optimal-stopping problem</strong>: an agency descends a cheap award ranking until the marginal adjudicable case recovered per forensic dollar meets its cost–value ratio. Its empirical image is the <strong>cost–recall frontier</strong> — so "there is no optimal cutoff" is a <em>result</em> (the optimum is budget-dependent), not a confession. The companion object: the over-crediting of raw award screens is itself <strong>estimable</strong>, bounded by the coefficient of variation of participation counts — a diagnostic computable before any bid file is opened.</span>
</div>

## Abstract

Enforcement agencies must allocate proof-producing effort before
proof exists, because the records close to evidence are costly to
open. We formalize the award-to-bid decision as an optimal-stopping
problem whose solution is not a cutoff but a budget-dependent
cost–recall frontier: the agency descends a cheap ranking until the
marginal case recovered per forensic dollar meets its cost–value
ratio. We apply this to a minimal award-layer screen—persistent
zero-win participation—validated against a non-circular,
adjudication-anchored label. The audit shows the raw screen's reach
is mostly an over-crediting bias we characterize: a size-bias whose
magnitude is governed by participation-volume dispersion, summarized
by a sufficient statistic computable before any bid file is opened.
Stress-tested on a second platform with partially overlapping
anchors, both objects hold. Liability stays in the richer record.

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
<span class="badge badge-kw">bid rigging</span>

---

## Key Findings

The paper leads with **two positive analytical objects the screening literature has not written down**, plus the reproducible audit protocol that produces both.

!!! success "Object 1 — the enforcer's evidence-acquisition problem, solved"
    The award-to-bid recovery decision is an **optimal-stopping problem**. An agency with per-record forensic cost $c$ and per-case recovery payoff $V$ descends a cheap award ranking until the marginal adjudicable case recovered per forensic dollar meets the cost–value ratio $c/V$. The **cost–recall frontier** we report is the empirical image of this solved stopping rule — not a descriptive scatter. So **"there is no optimal cutoff" is a result, not a confession**: the optimum is *budget-dependent*, so the object an enforcement designer reports is the locus of budget-dependent optima — the frontier itself. Each operating point (e.g. the top-2,000-firm pool, where firm-count footprint falls &approx; 88% but bid-row footprint only &approx; 33%) is the tangency for an agency at one implied $c/V$.

!!! success "Object 2 — the over-crediting bias as an estimable object"
    Validating an administrative screen against adjudicated cases without adjusting for procurement opportunity does not merely *risk* inflation — it inflates by an amount we **characterize**. Because a contact-defined label and a participation-based score both load on the same volume, the raw area is a **size-bias gap that grows with the dispersion of participation volume and shrinks with the adjudicated base rate** (signs proven analytically; magnitude read from simulation overlaid with the two platforms — no closed form). The practitioner deliverable is a **sufficient statistic — the coefficient of variation of participation counts — computable from award data before any bid file is opened**, that bounds how much of a raw screening number is mechanical.

!!! success "Object 3 — a reproducible, non-circular audit protocol"
    The validation label is built end-to-end from current scripts: **651 unique always-loser cobidders** — zero-win firms sharing at least one tender-item with a BEC-active adjudicated CADE defendant (defendants excluded). The frequent-loser flag is **never** used to construct the label: 341 positives are frequent losers, **310 are not**. The protocol sequences label construction, opportunity-cell adjustment, rolling-origin timing, leave-one-case-out tests, a bid-layer benchmark, and cost–recall accounting — components individually familiar, but sequenced for the award-to-bid decision in a way that is, to our knowledge, new.

!!! note "What the framework correctly catches — the deflation, stated precisely"
    The raw award-layer score concentrates cobidders (ROC-AUC **0.761**, lift 5.6&times; at the top 500). The framework then catches that this concentration is **mostly opportunity, not conduct**: genuine **label-blind** opportunity structure already ranks the label at **0.553**, and within comparable opportunity sets the residual ordering is **&approx; chance (0.47–0.51)**, with matched-stratum permutation and enrichment tests unable to reject the opportunity-only null. This deflation is exactly what Object 2 predicts — not a screen that "fails", but a framework that correctly prices the over-crediting. The audit is **armored**: a positive-control score recovers AUC **0.953** in the very same strata (the within-stratum test is not dead by construction), the permutation test rejects with probability **0.97** at true within-AUC 0.55 (non-rejections genuinely bound any residual), and a fully **label-frozen** timing design ranks *new* 2017–2019 defendant contact at 0.713 among 13,051 incumbents — generic contact forecasting, not a cartel-specific signal.

!!! info "Reach and limits — the estimated ranking is not a portable cartel score"
    Strict prospective ranking fails outside incumbent pools (full-universe ROC 0.47; zero true positives in the top 500 in every rolling-origin year; 23.5% of positives are unrankable entrants). One adjudicated case (rail/metro) supplies **32% of positives** and 45% of top-500 true positives — dropping it cuts PR-AUC by 37%. The estimated ranking is therefore not a portable cartel score — *that is the object the evidence denies*. What carries to other settings is the **stopping rule, the inflation characterization, and the protocol** — not a deployable score. Liability remains in the richer evidentiary record.

!!! abstract "The two platforms are two points on one inflation curve"
    The identical audit battery is re-run on a second, institutionally distinct procurement
    platform — federal **ComprasNet** (2013–2019, pure Pregão) — against the same family of
    CADE cartel anchors, integrated into the manuscript as §5 (*The Audit on a Second Platform*)
    and Appendix G. The two platforms are **not the same null twice — they are two points on the
    one inflation curve** of Object 2: the federal system's *rarer* target is exactly why its
    opportunity-only model edges past the raw score there (exposure-only ROC **0.754** &ge; raw
    **0.744**), precisely as the over-crediting characterization predicts. The within-stratum
    residual collapses to chance (**0.462**), the matched permutation does not reject, and the
    negative controls reproduce the order. The construct **ports and deflates; it does not break.**
    This is a *provisional* robustness leg, not a promotion to "Confirmed": the federal CADE
    anchors **partially overlap** the São Paulo portfolio (same cartels, establishment-anchored),
    and the federal positive base is more case-concentrated (top-two cases ≈ 64% of positives). See
    [AN-043](analyses/an-043-federal-opportunity-adjusted-validation.md).

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Manuscript description and methodology](paper.md)

[**Results** <br> Main tables, classification, and diagnostics](results.md)

[**Robustness** <br> Threshold sensitivity, holdouts, and scope checks](robustness.md)

[**Replication** <br> Code, data, and software requirements](replication.md)

</div>
