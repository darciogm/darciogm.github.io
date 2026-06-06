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

<p class="version-tag"><em>JLEO R&amp;R version &mdash; two-platform extension (BEC + ComprasNet), June 2026.</em></p>

</div>

<div class="key-result" markdown>
<span class="number">&approx; 0.50</span>
<span class="label">Within-opportunity AUC of the award-layer score against a reproducible, non-circular validation target — a null that is <em>falsifiable</em> (a positive-control score ranks at 0.95 in the same strata) and <em>powered</em> (the permutation test rejects with probability 0.97 at within-AUC 0.55)</span>
</div>

## Abstract

Cartel enforcement must allocate costly proof-producing effort
before proof exists. Using São Paulo's BEC platform and CADE
adjudications, we ask how far award records can rank where
bid-level forensics should begin. We study a minimal award-layer
construct—persistent zero-win participation—validated against a
reproducible, adjudication-anchored cobidder label that never uses
the screen. Decomposed by opportunity, timing, and case
concentration, the cheap signal's apparent reach mostly reflects
mechanical co-participation exposure and case concentration; the
residual ordering net of opportunity is marginal. Re-running the
same audit on a second federal platform with partially overlapping
legal anchors returns the same verdict, so what transfers is the
audit protocol, not a deployable score. The contribution is the
organizational result—the award-to-bid recovery decision is a
sequential cost-recall problem whose frontier, not any cutoff, is
the design object—and a disciplined audit protocol demonstrated
across two platforms. Liability remains in the richer evidentiary
record.

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

!!! warning "The deflationary core result — and its mechanism, stated precisely"
    Raw discrimination looks respectable (ROC-AUC **0.761**, lift 5.6&times; at the top 500), but it is **anchor-agnostic co-participation arithmetic**: placebo anchors reproduce it (p = 0.46), anchors built from non-CADE high-volume *winners* exceed it (0.78, p = 0.91), and within comparable opportunity sets the score ranks at **&approx; chance (0.47–0.51)**. Exposure benchmarks are read in tiers — observed contact (0.905) and plug-in expected contact (0.985) encode the label mechanically, while genuine **label-blind** opportunity structure ranks the label at only **0.553** — so the audit rests on the anchor-agnostic battery, not on "exposure beats the score". Robust to intensity-restricted labels (contact &geq; 2 strengthens it).

!!! success "The audit is armored: falsifiable, powered, label-frozen"
    The within-stratum null is **falsifiable** — a positive-control score ranks the label at **0.953** in the very same strata — and stable across stratification granularities (0.49–0.60). The permutation test is correctly sized and rejects with probability **0.97** once true within-stratum AUC reaches 0.55, so non-rejections genuinely bound any residual. A fully **label-frozen** timing design (pool, score, and label ingredients all frozen on 2009–2016) shows the frozen score ranks *new* 2017–2019 defendant contact at 0.713 among 13,051 incumbents — participation volume forecasting generic future contact, not a cartel-specific signal.

!!! note "Reach and limits — timing and case concentration"
    Strict prospective ranking fails outside incumbent pools (full-universe ROC 0.47; zero true positives in the top 500 in every rolling-origin year; 23.5% of positives are unrankable entrants). One adjudicated case (rail/metro) supplies **32% of positives** and 45% of top-500 true positives — dropping it cuts PR-AUC by 37%. The estimated ranking is not a portable cartel score.

!!! info "What transfers: the organizational result + the audit protocol"
    Contribution 1 is organizational: the award-to-bid recovery decision is a **sequential cost-recall problem whose frontier — not any cutoff — is the design object** (firm-count savings of 88% shrink to 33% in bid rows; denominators matter). Contribution 2 is the disciplined audit protocol — label construction, opportunity adjustment with leakage tiers, powered permutation, label-frozen timing, case-composition audit, bid-layer comparison — built around one portable principle: *validating an administrative screen against adjudicated cases without adjusting for procurement opportunity systematically over-credits it.* Liability remains in the richer evidentiary record.

!!! abstract "Now demonstrated on two platforms"
    The award-layer triage protocol is re-run on a second, institutionally distinct procurement
    platform — federal **ComprasNet** (2013–2019, pure Pregão) — against the same family of
    CADE cartel anchors, integrated into the manuscript as §5 (*The Audit on a Second Platform*)
    and Appendix G. The federal leg **replicates the deflation anatomy**: the raw screen ranks
    cobidders (ROC 0.744), but once opportunity-set exposure is netted out the within-stratum
    residual collapses to chance (0.462), the matched permutation does not reject, and the
    negative controls reproduce the order — exactly as on BEC. The construct **ports and
    deflates; it does not break.** This is a *provisional* robustness leg, not a promotion to
    "Confirmed": the federal CADE anchors **partially overlap** the São Paulo portfolio (same
    cartels, establishment-anchored), and the federal positive base is more case-concentrated
    (top-two cases ≈ 64% of positives). See
    [AN-043](analyses/an-043-federal-opportunity-adjusted-validation.md).

---

## Quick Links

<div class="quick-links" markdown>

[**Paper** <br> Manuscript description and methodology](paper.md)

[**Results** <br> Main tables, classification, and diagnostics](results.md)

[**Robustness** <br> Threshold sensitivity, holdouts, and scope checks](robustness.md)

[**Replication** <br> Code, data, and software requirements](replication.md)

</div>
