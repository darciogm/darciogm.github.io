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

<p class="version-tag"><em>JLEO version v25 &mdash; major revision: the over-crediting bias promoted to the lead contribution and into the main body; enforcer stopping rule stated modestly; three-document package (paper + online appendix + Online Supplement), two platforms (BEC + ComprasNet), June 2026.</em></p>

</div>

<div class="key-result" markdown>
<span class="number">CV(<em>T</em>)</span>
<span class="label">Validating a volume-loaded award screen against a contact-defined cartel label <strong>over-credits</strong> it — and that inflation is an <strong>estimable size-bias</strong>, governed by the dispersion of participation volume and summarized by a <strong>leading-order sufficient statistic — the coefficient of variation of participation counts — computable before any bid file opens</strong>. (Magnitude is a synthetic surface anchored at one empirical point per platform, not a fitted curve; only the signs and the leading-order statistic are claimed.) Companion organizational result: the award-to-bid decision is a budget-dependent <strong>cost–recall frontier</strong>, the image of an ordinary cost–benefit tangency — so "there is no fixed cutoff to defend" is a consequence, not a grand result.</span>
</div>

## Abstract

Cartel enforcement must allocate costly proof-producing effort
before legal proof exists. This paper asks how agencies should
govern cheap administrative screens before opening bid-level
records. Using São Paulo's BEC procurement platform and CADE
adjudications, we audit a minimal award-layer construct—persistent
zero-win participation—against a reproducible adjudication-anchored
cobidder label that never uses the screen itself. The audit
identifies an over-crediting problem: when both screen and label
load on participation volume, raw metrics overstate evidentiary
value—in BEC, an award-layer AUC of 0.76 falls to chance once
opportunity is held fixed. Raw reach is exposure, not conduct, and
strict prospective ranking fails outside incumbent pools. We then
organize follow-up as a cost–recall frontier: one operating point
opens 12% of firms but 67% of bid rows, so firm-count savings
overstate forensic cost. A second-platform stress test shows that
the audit logic travels; the score does not. Liability remains in
the richer record.

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

The paper leads with the **over-crediting bias** — an estimable analytical object the screening literature has not written down — followed by the organizational cost–recall result and the reproducible non-circular audit protocol that produces both.

!!! success "Lead contribution — the over-crediting bias as an estimable object (main body, §4)"
    Validating an administrative screen against adjudicated cases without adjusting for procurement opportunity does not merely *risk* inflation — it inflates by an amount we **characterize**, now stated as a Proposition in the main body. Because a contact-defined label and a participation-based score both load on the same volume, the positive class is the size-biased volume distribution, so the raw area is a **size-bias gap that grows with the dispersion of participation volume and shrinks with the adjudicated base rate** (signs proven analytically). The practitioner deliverable is a **leading-order sufficient statistic — the coefficient of variation of participation counts — computable from award data before any bid file is opened** — that bounds how much of a raw screening number is mechanical. The magnitude is a **synthetic surface anchored at one empirical point per platform, not a fitted curve**: only the signs and the leading-order statistic are claimed.

!!! success "Companion result — the award-to-bid decision as a cost–recall frontier (stated modestly)"
    The award-to-bid recovery decision admits an ordinary **cost–benefit (marginal-benefit = marginal-cost) tangency**: an agency descends a cheap award ranking until the marginal adjudicable case recovered per forensic dollar meets its cost–value ratio. The **cost–recall frontier** we report is the empirical image of that textbook optimum. So **"there is no fixed cutoff to defend" is a consequence, not a grand result** — the optimum is budget-dependent, so the object an enforcement designer reports is the locus of budget-dependent optima, the frontier itself. Each operating point (e.g. the top-2,000-firm pool, where firm-count footprint falls &approx; 88% but bid-row footprint only &approx; 33%) is the tangency for an agency at one implied cost–value ratio.

!!! success "Companion result — a reproducible, non-circular audit protocol"
    The validation label is built end-to-end from current scripts: **651 unique always-loser cobidders** — zero-win firms sharing at least one tender-item with a BEC-active adjudicated CADE defendant (defendants excluded). The frequent-loser flag is **never** used to construct the label: 341 positives are frequent losers, **310 are not**. The protocol sequences label construction, opportunity-cell adjustment, rolling-origin timing, leave-one-case-out tests, a bid-layer benchmark, and cost–recall accounting — components individually familiar, but sequenced for the award-to-bid decision in a way that is, to our knowledge, new.

!!! note "What the framework correctly catches — the deflation, stated precisely"
    The raw award-layer score concentrates cobidders (ROC-AUC **0.761**, lift 5.6&times; at the top 500). The framework then catches that this concentration is **mostly opportunity, not conduct**: genuine **label-blind** opportunity structure already ranks the label at **0.553**, and within comparable opportunity sets the residual ordering is **&approx; chance (0.47–0.51)**, with matched-stratum permutation and enrichment tests unable to reject the opportunity-only null. This deflation is exactly what the over-crediting characterization predicts — not a screen that "fails", but a framework that correctly prices the inflation. The audit is **armored**: a positive-control score recovers AUC **0.953** in the very same strata (the within-stratum test is not dead by construction), the permutation test rejects with probability **0.97** at true within-AUC 0.55 (non-rejections genuinely bound any residual), and a fully **label-frozen** timing design ranks *new* 2017–2019 defendant contact at 0.713 among 13,051 incumbents — generic contact forecasting, not a cartel-specific signal.

!!! info "Reach and limits — the estimated ranking is not a portable cartel score"
    Strict prospective ranking fails outside incumbent pools (full-universe ROC 0.47; zero true positives in the top 500 in every rolling-origin year; 23.5% of positives are unrankable entrants). One adjudicated case (rail/metro) supplies **32% of positives** and 45% of top-500 true positives — dropping it cuts PR-AUC by 37%. The estimated ranking is therefore not a portable cartel score — *that is the object the evidence denies*. What carries to other settings is the **cost–recall stopping rule, the over-crediting characterization, and the protocol** — not a deployable score. Liability remains in the richer evidentiary record.

!!! abstract "The two platforms land where the over-crediting characterization predicts"
    The identical audit battery is re-run on a second, institutionally distinct procurement
    platform — federal **ComprasNet** (2013–2019, pure Pregão) — against the same family of
    CADE cartel anchors, integrated into the manuscript as §5 (*The Audit on a Second Platform*)
    and Appendix G. The two platforms are **not the same null twice** — they are two anchor points
    that fall where the over-crediting characterization predicts (the synthetic size-bias surface
    is anchored at one empirical point per platform, **not a fitted curve**): the federal system's
    *rarer* target is exactly why its opportunity-only model edges past the raw score there
    (exposure-only ROC **0.754** &ge; raw **0.744**), as the over-crediting characterization
    predicts. The over-crediting characterization **replicates at full power**; the within-stratum
    residual collapses to chance (**0.462**, holding subject to a stated federal power bound), the
    matched permutation does not reject, and the negative controls reproduce the order. The
    construct **ports and deflates; it does not break.**
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
