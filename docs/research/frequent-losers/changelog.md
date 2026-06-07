---
paper: frequent-losers
---

# Changelog

---

## v25.2 — Author-final abstract; Box 1 removed — June 6, 2026 (Current)

**Headline:** the author's final abstract (148 words) replaces the v25 text, and Box 1 is
removed from the body. No numerical change.

- **New abstract** opens with the allocation problem ("Cartel enforcement must allocate costly
  proof-producing effort before legal proof exists") and closes on the transfer result ("the
  audit logic travels; the score does not"). Every claim verified against the manuscript
  (12% of firms / 67% of bid rows at the §6 operating point; transfer phrasing is verbatim
  from the comparative section).
- **Box 1 ("From Cheap Suspicion to Bid-Layer Follow-Up") removed from the body**; its
  audit-component content remains covered by §4 and the conclusion. Paper ≈ 46 pp.

---

## v25.1 — Final editorial polish — June 6, 2026 (superseded by v25.2)

**Headline:** a light final editorial pass on top of v25 with **no substantive or numerical
change** — the over-crediting lead contribution, the cost–recall organizational object, the
abstract, and every claim are unchanged from v25.

- **Submitted appendix compressed to 28 pp** (from 30), with the residual duplication moved into
  the Online Supplement; paper ≈ 48 pp and Online Supplement ≈ 23 pp are unchanged.
- **Box 1 retitled** "From Cheap Suspicion to Bid-Layer Follow-Up."
- **Three hostile-panel rounds converged** — ending **2 accept / 3 minor**; pre-submission status
  **READY_AFTER_MINOR**.

---

## v25 — Major revision: over-crediting promoted to the lead contribution — June 6, 2026 (superseded by v25.1)

**Headline:** a major revision for storytelling, compression, and humanization. The
**over-crediting bias** — that validating a volume-loaded screen against a contact-defined
cartel label inflates it by an *estimable* size-bias — is **promoted to the lead contribution
and moved into the main body (§4)** as a Proposition. The enforcer's cost–recall / stopping
rule is restated **modestly**, as an ordinary textbook cost–benefit tangency, not a grand
result. The package is compressed into **three documents** with a new Online Supplement. A
hostile pre-submission panel ran **three rounds** and ended **2 accept / 3 minor, zero
rejects** — both prior rejects were converted.

**Concrete changes in this version:**

- **Over-crediting bias is now the lead analytical object, in the main body (§4).** The
  Proposition *Signs of the over-crediting bias* moves from the appendix into the body. Because
  a contact-defined label and a participation-based score both load on the same volume, the
  positive class is the size-biased volume distribution, so the raw area is a **size-bias gap
  that is increasing in the dispersion (coefficient of variation) of participation counts and
  decreasing in the adjudicated base rate** (signs analytic). The practitioner deliverable is a
  **leading-order sufficient statistic — the CV of participation counts (CV(*T*)) — computable
  from award data before any bid file opens** — that bounds how much of a raw screening number
  is mechanical.
- **Synthetic-surface honesty.** The over-crediting *magnitude* is a **synthetic size-bias
  surface anchored at one empirical point per platform — NOT a fitted or estimated curve.** Only
  the signs and the leading-order statistic (CV of *T*) are claimed; the phrase "inflation
  curve" is retired wherever it could read as a fitted object. The two platforms (BEC +
  ComprasNet) are two anchor points that fall where the characterization predicts, not points on
  an estimated curve.
- **Stopping rule restated modestly.** The award-to-bid decision is presented as a standard
  cost–benefit (marginal-benefit = marginal-cost) **tangency**, with the **cost–recall frontier**
  as its empirical image. "There is no fixed cutoff to defend" is stated as a **consequence**
  (the optimum is budget-dependent), not a headline result. No overselling.
- **Abstract reordered (~150 words)** to lead with the over-crediting object, then the
  organizational cost–recall frontier, then reach-and-limits; quoted verbatim on the landing and
  paper pages.
- **§4 compressed**; the full permutation/rolling-origin grids, threshold sweeps, negative-control
  grids, bid-feature dictionary, full price-regression grid, complete ComprasNet construction
  detail, and the **long proofs of both propositions** are lifted into the new Online Supplement.
- **New three-document package:** paper **≈ 48 pp** + online appendix **≈ 30 pp** + new
  **Online Supplement ≈ 23 pp**.
- **Sánchez Graells** (2019, screening/transparency objection to publishing a procurement
  red-flag) cited in the price-scope section.
- **Site:** landing key-result and Key-Findings reordered to lead with the over-crediting object
  (stopping rule second and modest, protocol third); `paper.md` structure, formal-results, and
  contribution list updated to place the over-crediting Proposition in §4 and the modest stopping
  rule in online Appendix B, with the Online Supplement named.

**Hostile-panel trajectory:** three rounds (review → Action Plan + armor → verification),
ending **2 accept / 3 minor, zero rejects**; both prior rejects converted.

**Honest caveats preserved (front-paged, not hidden):**

- **No closed-form inflation magnitude.** Only signs (in CV of *T* and base rate) plus the
  leading-order CV-of-*T* sufficient statistic are claimed; the magnitude surface is synthetic,
  anchored at one empirical point per platform.
- **Partially overlapping legal anchors** wherever the federal evidence appears — the federal
  CADE cases are the *same cartels* as the BEC portfolio, establishment-anchored; a robustness
  leg under partially correlated ground truth, not independent out-of-sample proof.
- **Power-bounded federal null** — the over-crediting characterization replicates at full power,
  but the within-stratum deflation holds only subject to a stated federal power bound.
- **Not a cartel detector.** The estimated ranking is not a portable cartel score (that is the
  object the evidence denies); cobidders are adjudication-anchored **exposure**, not cartel
  members (651 broad always-loser cobidders on BEC); AUC ≈ 0.49 against direct CADE defendants is
  the loser-side scope boundary by design; no platform-wide prospective deployment; no
  damages/overcharge claim; liability remains in the richer evidentiary record.

*Manuscript home:* the over-crediting Proposition is in **§4** (full grids + proof in the Online
Supplement); the cost–recall / stopping-rule result is in online **Appendix B** (long proof in
the Online Supplement). Paper ≈ 48 pp + online appendix ≈ 30 pp + Online Supplement ≈ 23 pp;
builds 0 errors / 0 undefined.

---

## v24 — Positive-contribution reframe (enforcer stopping rule + over-crediting bias) — June 6, 2026 (superseded by v25)

**Headline:** the paper is no longer cast as *an audit that finds a screen mostly fails*. It now
leads with **two positive analytical objects the screening literature has not written down**,
plus the reproducible non-circular audit protocol that produces both. This reframe responds to a
hostile pre-submission panel that read the prior framing as tilted toward its own deflationary
conclusion; the answer was to surface the two objects that were already implicit in the
computation and state them as **formal propositions**, not caveats.

**Object 1 — the enforcer's evidence-acquisition problem, solved (online Appendix B).** The
award-to-bid recovery decision is formalized as an **optimal-stopping problem**: an agency with
per-record forensic cost $c$ and per-case recovery payoff $V$ descends a cheap award ranking to
the unique tangency where the marginal adjudicable case recovered per forensic dollar meets the
cost–value ratio, $\rho(K^*)/\phi(K^*) = c/V$ (new *Proposition: optimal stopping depth*). The
**cost–recall frontier** reported in the body is the **empirical image of this solved stopping
rule**, not a descriptive scatter. Consequently **"there is no optimal cutoff" is now a result,
not a confession** — the optimum is budget-dependent, so the design object is the locus of
budget-dependent optima (the frontier), and each operating point (including $K_1 = 2{,}000$) is
the tangency for an agency at one implied $c/V$.

**Object 2 — the over-crediting bias as an estimable object (online Appendix C).** Raw award-screen
AUC inflates because a contact-defined label and a participation-based score both load on
participation volume (size-bias). New *Proposition: signs of the over-crediting bias* proves the
raw-minus-opportunity-adjusted gap $\Delta$ is **increasing in the dispersion (coefficient of
variation) of participation counts** and **decreasing in the adjudicated base rate** (signs
analytic; magnitude by simulation, **no closed form**). The practitioner deliverable is a
**sufficient statistic — the CV of participation counts — computable before any bid file is
opened**, that bounds how much of a raw screening number is mechanical. The two platforms (BEC +
ComprasNet) are reframed as **two points on this one inflation curve, not "the same null twice"**:
the federal system's rarer target is exactly why its opportunity-only model edges past the raw
score there, as the characterization predicts.

**The deflation, reframed.** Raw concentration (ROC 0.761; mostly opportunity, residual ≈ chance)
is now presented as **what the framework correctly catches**, not as "the screen fails." The
within-opportunity null is the framework correctly pricing the over-crediting that Object 2
predicts.

**Other changes in this version:**

- **Abstract reframed** to the canonical v24 abstract (~125 words): opens on the enforcer's
  optimal-stopping problem and the budget-dependent cost–recall frontier, then the over-crediting
  size-bias and its CV-of-$T$ sufficient statistic.
- **Citations added:** Seibel & Škoda, *Collusion by Exclusion in Public Procurement* (AEJ:Micro,
  forthcoming) and Kawai–Nakabayashi–Ortner–Chassang (KNOC) 2023 bid-rotation/RD detection.
- **Page counts updated** to ≈ 53 pp main + ≈ 46 pp online appendix.
- **Site:** landing key-result and Key-Findings rewritten to lead with the two objects + protocol;
  `paper.md` manuscript-structure and formal-results sections updated to name Appendix B (stopping
  rule) and Appendix C (over-crediting bias) as the analytical core.

**Honest caveats preserved (front-paged, not hidden):**

- **Partially overlapping legal anchors** wherever the federal evidence appears — the 7 federal
  CADE cases are the *same cartels* as the BEC portfolio, establishment-anchored; the federal leg
  is a robustness leg under partially correlated ground truth, not independent out-of-sample proof.
- **Power-bounded federal null** — the matched-strata permutation is correctly sized but the
  federal sample bounds the residual only to a coarser tolerance than BEC.
- **Not a cartel detector.** The estimated ranking is not a portable cartel score (that is the
  object the evidence denies); cobidders are adjudication-anchored **exposure**, not cartel
  members; AUC ≈ 0.49 against direct CADE defendants is the loser-side scope boundary by design;
  no platform-wide prospective deployment; liability remains in the richer evidentiary record.

*Manuscript home:* the two propositions are in online **Appendix B** (Theory, Exit, Survival —
optimal stopping depth) and **Appendix C** (Opportunity & Timing — signs of the over-crediting
bias); the federal column remains bound via the `\valFedAud*` macro namespace. Paper ≈ 53 pp +
appendix ≈ 46 pp; builds 0 errors / 0 undefined.

---

## v23 — The Audit on a Second Platform (ComprasNet) — June 6, 2026

**Headline:** the award-layer evidence-triage protocol is now demonstrated on **two
institutionally distinct procurement platforms**. Beyond São Paulo's BEC (2009–2019), we re-run the full
audit battery on the **federal ComprasNet** platform (2013–2019, pure Pregão) against the same
family of CADE cartel anchors, integrated into the manuscript as a new Section 5, *The Audit
on a Second Platform*, with the full federal battery in Appendix G. The federal leg
**replicates the deflation anatomy**: under opportunity adjustment the within-stratum residual
ordering (score net of defendant-contact exposure) falls to chance (within-stratum AUC 0.462),
the matched-stratum permutation does not reject (nested increment +0.005, p = 0.191), and the
negative controls return the surviving ordering to the realm of generic opportunity/volume
geometry. The construct **ports and deflates; it does not break.** The strict-temporal carrier
replicates too: the prospective ranking collapses outside the incumbent pool on both platforms
(strict full-universe ROC 0.489 federal / 0.474 BEC), while the incumbent-pool continuous score
deflates in the same direction and magnitude class (0.666 federal vs 0.684 BEC).

**What this adds — and what it does NOT.** This is a *second-platform demonstration of the
audit protocol*, not a promotion to **Confirmed**. The federal CADE anchors **partially
overlap** the BEC portfolio (same cartels, different establishments and tender footprints), so
the two legs are correlated, not fully independent. Federal panel: **51.0M** participation
rows, **92,600** firms, **35,943** always-losers, FL cut re-estimated at **32** (≥; *not*
transported from BEC's 14), **6,491** federal frequent losers. Main target: **3,850** broad-rule
cobidders → **195** broad-AL cobidders (mirrors BEC's 651), of which **94** are FL and **101**
non-FL, anchored on **7 numbered** CADE cases and **25** platform-active direct-defendant
establishments.

**The deflation battery (federal, read from the named CSVs):**

- **Opportunity adjustment.** Raw award-layer ROC 0.744; exposure-only model 0.754 (≥ raw);
  within-stratum residual ordering 0.462 (≈ chance); nested increment +0.005 (DeLong p = 0.191);
  matched-stratum permutation does not reject. Genuine **label-blind** opportunity structure
  (cell rate from non-cobidder rows only) ranks the label at **0.611** — the raw concentration
  is mostly mechanical co-participation exposure.
- **Negative controls.** Placebo anchors reproduce the order (AUC 0.728, p = 0.258 ns); non-CADE
  high-volume-winner anchors exceed it (AUC 0.746, p = 0.582 ns). The surviving ordering is
  generic opportunity/volume geometry, not cartel-specific.
- **Power.** The matched-strata permutation is correctly sized — rejection probability **0.35**
  at true within-AUC 0.55 and **0.90** at 0.60 — so the non-rejection genuinely bounds any
  residual at the federal sample size.
- **Label-frozen timing.** With pool, score, and label ingredients frozen on 2013–2016, the
  frozen score ranks *new* 2017–2019 defendant contact at **0.595** among 24,888 incumbents
  (N = 98) — generic contact forecasting, not a cartel-specific signal.

**Honest caveats (front-paged, not hidden):**

- **Partially overlapping legal anchors.** The 7 federal cases are the *same cartels* as the
  BEC portfolio, establishment-anchored at the federal level. This is a robustness leg under
  partially correlated ground truth, not a clean out-of-sample replication on an unrelated
  cartel set.
- **Shorter window (2013–2019).** Four training years federally vs eight on BEC. The strict
  full-universe prospective collapse is robust (ROC 0.489), and the frozen-pool prospective row
  (0.595, N = 98) is reported as such.
- **Pure Pregão.** Convite is extinct federally, so the federal leg cannot reproduce the BEC
  modality stratification. No federal bid microdata exists, so no bid-layer/Imhof forensic
  benchmark is constructible from the public federal data.
- **Case concentration is worse than on BEC.** The federal positive base is more
  cartel-concentrated: top case 35.4% of positives, **top-two 64.4%**, and the realized top-500
  detections are **87.5% one case**. The clustered-randomization *ordering* test is robust
  (leaving out the largest case keeps the ordering distinguishable from random, RI p < 0.001),
  but the operational precision/recall-at-k ranking is one-to-two-cartel-dominated and the
  case-coverage-breadth test is non-significant (p = 0.487). The federal leg is therefore a
  **single-system, concentrated-anchor stress test** of the protocol, not a multi-case
  operational generalization. Both the breadth disclosure and the per-case leave-one-case-out
  table appear in Appendix G.
- **Direct defendants null reproduces by design.** Direct-defendant FL-binary AUC is ≈ chance
  (0.465–0.503), reproducing the loser-side scope boundary.

**New site material (this version):**

- **[AN-043](analyses/an-043-federal-opportunity-adjusted-validation.md) — Federal
  opportunity-adjusted validation (ComprasNet).** The two-platform audit anatomy with the
  federal numbers.
- **Scorecard:** new **cross-platform portability** row, verdict *"deflation replicates — audit
  protocol ports (two platforms)"* — explicitly NOT a promotion to Confirmed (partially
  overlapping anchors).
- Landing page: two-platform extension announced, with the partially-overlapping-anchors caveat
  stated in the text.

*Manuscript home of these numbers:* §5 *The Audit on a Second Platform* and Appendix G (the
federal audit battery); the federal column is bound via the `\valFedAud*` macro namespace.
Paper 45 pp + appendix 40 pp; builds 0 errors / 0 undefined.

---

## v22.2 — June 4, 2026 (hostile-review armor + narrative repair)

**Five-referee hostile pre-submission review executed, and its Action Plan applied.**
Integrity verdicts were clean (≈190 numbers traced, 0 fatal; 0 fabricated references); the
substantive critique — "the audit is tilted toward its own deflationary conclusion" — was
answered with computation, not prose:

- **Exposure-benchmark leakage tiers.** Observed contact ranks the label at 0.905 and
  plug-in expected contact at 0.985 (mechanical label encoding); the firm-leave-one-out
  benchmark gives 0.855; recomputing every cell's defendant density from **non-cobidder rows
  only** leaves genuine label-blind opportunity at **0.553**. The earlier "exposure-only is
  the better model" framing was itself partially mechanical and is retired; the deflation now
  rests on the anchor-agnostic battery (negative controls, powered permutation, label-frozen
  timing).
- **Falsifiability.** A positive-control score ranks at **0.953** within the same strata that
  put the screen at chance; the within-stratum null is stable across granularities
  (0.49–0.60).
- **Power.** The matched-strata permutation is correctly sized and rejects with probability
  **0.97** at true within-AUC 0.55 — non-rejections now bound any residual.
- **Label-frozen timing.** Pool, score, and label ingredients all frozen on 2009–2016:
  the frozen score ranks new 2017–2019 defendant contact at **0.713** among 13,051
  incumbents — generic contact forecasting, not cartel-specific signal.
- **Narrative:** contributions reordered (organizational result first: the award-to-bid
  frontier is the design object); "transferable framework" → disciplined audit protocol +
  portable principle; stakes documented via the institutional red-flag lineage
  (Fazekas–Kocsis 2020 BJPolS; OECD 2022); §5 leads with what adjustment removes; §7 gaming
  reframed as instability of a published cutoff; §2.1 folded into §1; appendix deduplicated.
- Abstract 133 words; paper 40 pp + appendix 34 pp (single-spaced); builds 0 errors /
  0 undefined. Post-repair calibration: P(desk) ≈ 0.25.

---

## v22.1 — June 4, 2026 (superseded by v22.2 — canonical-target re-estimation)

**Credibility repair: reproducible, non-circular validation target.** The
previous main target (193 cobidders, a static file whose builder was archived
and whose membership was conditioned on the frequent-loser flag) is retired.
The new main label is built from current scripts: **651 unique always-loser
cobidders** — zero-win firms sharing ≥ 1 BEC tender-item with a BEC-active
adjudicated CADE defendant; defendants excluded; **the frequent-loser flag is
never used to construct the label** (341 of 651 positives are frequent losers,
310 are not). All downstream tables, figures, and macros re-estimated.

**Headline numbers under the honest label (supersede every earlier figure):**

- Raw award-layer score: ROC **0.761** (PR 0.143; lift 5.6× at top 500). The
  earlier 0.946/0.924 figures were inflated by the label's circularity.
- Opportunity-only model: **0.905** unconditional — outperforms the score.
- **Within-opportunity AUC ≈ 0.47–0.51 (chance).** Nested increment +0.010
  (p = 0.013); matched-stratum permutation p = 0.127 (ns); FL-enrichment
  p = 0.067 (ns). **No robust residual signal net of opportunity.**
- Intensity-restricted sensitivity (contact ≥ 2, 368 positives): deflationary
  result strengthens — exposure-only 0.956; within-stratum 0.506; increment
  +0.003 (p = 0.47).
- Case concentration: largest case 32% of positives (drop-largest PR −37%).
  Strict prospective ranking: zero true positives in the top 500, every year.
- Bid benchmark (16,731 firms / 651 positives): award 0.760 ≈ bid RF 0.717;
  combined falls below award-only under case-grouped folds.
- Cost-recall at K1 = 2000/k = 500: TP 116; firm reduction 88% vs bid-row
  reduction 33%.

**Note on analysis-note (AN) pages:** AN pages dated before June 4, 2026
document historical runs under the superseded label; where they conflict with
the paper, **the paper wins**. Main pages (results, robustness, findings,
hypotheses) are reconciled to the canonical numbers.

Main 39 pp + online appendix 33 pp; builds 0 errors / 0 undefined references;
claims scan critical = 0.

---

## v22 — June 3, 2026 (superseded by v22.1 — JLEO submission)

**Title:** *Cheap Signals, Costly Proof: The Reach and Limits of Award-Layer
Screening in Cartel Enforcement.* Canonical source:
`work/v22-editor/submission_clean/`. JLEO submission-ready
(GO_WITH_MINOR_REPAIRS); main 38 pp + online appendix 31 pp.

**Substantive reframe — "reach and limits."** The paper is no longer cast as a
deployable cartel screen. The contribution is now (1) reframing
procurement-cartel screening as **evidence allocation under costly
observability**, (2) a transferable **decomposition method** that separates a
genuine ranking signal from mechanical opportunity exposure and single-case
concentration, and (3) a **map of reach and limits**.

- **Opportunity decomposition is the headline.** Pooled/exposure-only
  discrimination AUC **0.946** falls to **0.7715** once procurement opportunity
  is held fixed; the genuine increment over mechanical exposure is **+0.042**
  (DeLong p ≈ 2×10⁻⁶). The earlier firm-level 0.924/0.864 figures are now
  reported as exposure-inflated pooled numbers, not the discrimination headline.
- **Limits front-paged.** The ranking is **retrospective among incumbents**
  (full-universe ROC ≈ 0.55; sequential strict-timing infeasible) and leans on
  one case (**leave-largest-case-out PR-AUC 0.126 → 0.036, −71%**; one case
  ≈ 55% of positives). AUC ≈ **0.49** against direct CADE defendants is a scope
  boundary **by design**.
- **"83% reduction" retired.** The cost-recall frontier reports firm-pool
  reduction ≈ 88% but **bid-row footprint reduction ≈ 33%** at one operating
  point (K₁ = 2000); the frontier, not a universal cutoff, is the design object.
  Combined award+bid AUC **0.962** is a full-observability upper bound.
- **Price = scope, not damages.** Broad +0.064 → overlap-cell ATT −0.097 → Q4
  +0.041 (only positive cell); cover-bidding "theater" **mechanism not
  identified**.
- **Language disciplined throughout:** "adjudication-anchored exposure" (not
  cartel-adjacency / membership); "orders forensic priority" (not detects /
  proves); cobidders are a validation target, not cartel members.
- **Site:** all sections rewritten to this reframe; the Mind Map was replaced by
  a **paper DAG** of the argument; one fabricated reference removed after
  verification.

---

## v20 submission-clean — May 23, 2026 (superseded — JLEO)

**Title:** *Cheap Signals, Costly Proof: Award-Layer Evidence Triage in
Cartel Enforcement.* Canonical source: `work/v20-editor/submission_clean/`
(full integral copy of the v18-editor build, last recompiled 2026-05-25).
Headline: an **83%** bid-microdata reduction recovering **131 of 193**
adjudicated cobidders; firm-level discrimination AUC **0.864** under
temporal holdout (0.924 in-sample).

**2026-05-25 refresh.**

- **D1 horse-race re-run completed** (`scripts/36_gate_d1_harmonized.R`,
  FL14 = `tenders_count ≥ 14`). Continuous AUC **0.939** [0.932, 0.946]
  dominates binary FL14 **0.924** [0.921, 0.926]; **DeLong Z = −4.38,
  p = 1.2 × 10⁻⁵** — direction preserved, marginally tighter than the
  earlier (superseded) Z = −4.30 / p ≈ 2 × 10⁻⁵ that had been computed
  under the `> 14` (FL15) cut. AN-011, AN-015, robustness, and the
  award-bid-complementarity hypothesis page updated; the "pending the
  D1 re-run" caveats are retired.
- Site PDFs (`paper.pdf`, `online_appendix.pdf`) re-synced to the
  2026-05-25 v20-editor build (intro / validation / forensics / price-scope
  section edits + macro corrections).

**New result:**

- **AN-041 — volume-matched cobidder audit.** The "strongest remaining
  within-data audit": matching cobidders to non-cobidder FLs on
  `tenders_count` (standardized difference 0.49 → 0.00, PS nearest-neighbour
  + CEM), the within-FL profile distinctness is **not a volume artifact** —
  product HHI (d +0.47), winner-pair spread (−0.56), and median
  gap-to-winner (−0.25) hold or strengthen. Honest casualty: the AN-031
  bid-dispersion elevation collapses (+0.05, n.s.) and is dropped.
  Script `scripts/74_volume_matched_cobidder_audit.R`.
- **AN-042 — volume-matched timing audit (null).** Candidate *second*
  bid-conduct channel: pregão bid timing (revision intensity, inter-bid
  interval, last-bid position, engagement span) under the same matching.
  No dimension survives (all Wilcoxon p ≥ 0.23). Bid-conduct distinctness
  stays single-channel (gap-to-winner). Script
  `scripts/75_volume_matched_timing_audit.R`.
- **H5 promoted Mixed → Partial (strongly supported)** (structural scope).
  The structural distinctness survives volume matching (AN-041); AN-021 /
  AN-032 re-labelled as scope limits on a causal-mechanism reading the
  hypothesis does not assert. Incorporated into the manuscript: §5 body +
  Appendix D.3 ("Volume-Matched Within-FL Profile") + `\valVM*` macros.
  Confirmed still blocked by the non-BEC replication constraint.

**JLEO editorial optimization pass (main paper 42 → 40 pp):**

- Abstract microcorrection: "exposure audits" → "validation audits";
  "procurement overlap" → "opportunity-set exposure".
- Section 4 sharpened: the **Three-Classifier Timing Battery** and the
  **Universe-Anchored Scope Matrix** moved from the main text to
  **Appendix D** (D.6 and D.4); the full sham-FL distribution and the
  price-coefficient-under-sham moved to D.2. Main text keeps the compact
  *Validation Architecture* threat table.
- Section 7 re-downgraded to scope/limits: the monetary-scope range
  (R\$ figures / % of spending) and the full selection/within-cell
  decomposition table moved to **Appendix E** (E.3 and E.2); a bounded
  one-sentence pointer remains in the main text.
- Mechanism-identification language softened throughout to **descriptive
  scope evidence that does not identify a mechanism, a causal price effect,
  overcharges, or damages**.

**Site reconciliation (this version):**

- H8 ([price-scope-sign-reversal](hypotheses/price-scope-sign-reversal.md))
  and AN-039 / AN-040 relabelled "selection component" / "within-cell
  component" and reframed as descriptive associations, mirroring the paper.
- Findings updated: [price-sign-reversal-scope](findings/price-sign-reversal-scope.md)
  now cites AN-039/040 (descriptive decomposition);
  [cobidders-operationally-distinct](findings/cobidders-operationally-distinct.md)
  now cites AN-041 (distinctness survives volume matching).

*Note:* the v18 entry below describes the Three-Classifier Timing Battery
and Universe-Anchored Scope Matrix as main-text Tables 3/4; this pass moved
both into Appendix D.

---

## v18 — May 2026 (JLEO submission-clean)

**Full hypothesis audit + manuscript integration:**

- All 8 hypotheses graduated to **Partial (strongly supported)** except
  H2 (Confirmed by structural design). Promotion to Confirmed for
  H1/H3/H4/H6/H7/H8 requires non-BEC replication; see the
  `COMPRASNET_PATH_TO_CONFIRMED.md` planning memo in the repo root.
- 14 new AN pages added (AN-025 through AN-038) documenting the
  formal sham permutation, cutoff sweep, subsample robustness,
  universe-anchored stratum scope matrix, standardized differences
  battery, three-classifier timing battery, firm/market persistence,
  bid-level behavioral profile, matched-heterogeneity audit, formal
  Imhof incremental DeLong, sequential gatekeeping envelope, full
  architecture cost-of-evidence matrix, K-fold CV precision stability,
  sign-reversal decomposition, and item-group cell audit.
- 38 total AN pages now with figures (19 from existing R outputs,
  4 from PDF→PNG conversion, 19 generated via new
  `scripts/gen_an_figures.py`).
- Manuscript integration: surgical inserts in §4.2, §4.3, §5.4, §7.2
  bring the new audit-chain numbers into prose. Two new tables (Table 3
  Three-Classifier Timing Battery and Table 4 Universe-Anchored
  Stratum Scope Matrix) added to §4. tab:price_scope_submission
  extended with broad-sample and overlap-cell-unweighted rows showing
  the full three-spec progression. Paper now 39 pages.
- `values.tex` extended with ~95 new macros for the new audits;
  6 macro names corrected (LaTeX names cannot contain digits).
- Site sections updated: `advanced.md` rewritten from stub to
  substantive methodological reference; `results.md` extended with
  formal sham permutation + three-classifier + scope matrix below-
  random subsection; `robustness.md` extended with placebo / scope
  matrix / CV stability / cutoff sweep / subsample / matched-het
  audit subsections; `extensions.md` extended with architecture
  cost-of-evidence matrix and three-classifier battery.

---

## v5.1 --- April 2026

**Referee-report edits (mr-frequent review):**

- Fixed combined AUC (0.502 → 0.608): included omitted z_skew component in combined score
- Added "Why combination degrades" paragraph explaining AUC = 0.61 as empirical signature of Regime 2
- "nearly orthogonal" → "largely non-overlapping" with theoretical ceiling note (corr/max ≈ 1/5)
- "lower bound" → "conservative estimate" for cross-fit
- Sample size clarified: body reports 1,654,447 (full sample) with footnote explaining 1,654,401 (prices) and 1,653,156 (non-FL firms)
- AUC interpretation: added sentences clarifying AUC reflects high-participation proximity, not conditional discrimination
- Measurement error: "Classical binary ME" → explicit assumption that FP > FN justifies attenuation direction
- Bajari--Ye tender FE: acknowledged ambiguity ("suggestive but not definitive")
- Fixed pre-existing LaTeX bug in `tab_fl_crossfit.tex` (unescaped underscores)
- Updated MkDocs site to reflect all changes

---

## v5 --- April 2026

**JLE repositioning and institutional framing:**

- Repositioned for Journal of Law and Economics (institutional framing throughout)
- Abstract leads with minimum-bidder rules giving cartels a reason to deploy cover bidders
- Price range narrowed to **3.6--7.7%** (cross-fit, OLS, matching), replacing 4--21% from v4
- IV (19.4%) reframed as **measurement-error diagnostic**, not a primary estimate
- Finding now Regime 2 (coordinated), not Regime 1 (complementary): $\sigma_c / \sigma_g = 0.72$
- $\gamma > 0$: strategic complementarity (more cover bidders in MORE competitive tenders)
- Convite 3.8% vs pregao 9.3% --- larger where voluntary, signal dilution in convite
- AUC = 0.94 against CADE convictions (primary validation)
- Horse-race: correlation 0.06 with Imhof-style CV proxy; FL rises to 0.084 when CV added

**New content:**

- Three new figures: corner solution, dispersion paradox, enforcement flowchart
- Five JLE-relevant references added (Posner 1970, Caoui 2022, Ghosal & Sokol 2014, Harrington 2015, Baranek & Titl 2024)
- Lei 14.133/2021 discussion with two testable predictions
- Three-stage enforcement pathway (screen, triage, investigate)
- Welfare reframed as cost-benefit of screening deployment
- 12.5x gradient in oversight heterogeneity across PBU size quartiles
- Minimum-bidder constraint variation: 7.6% voluntary premium vs. $-0.160$ forced interaction
- Five supporting diagnostics (M1--M5) with joint assessment
- Non-claims paragraph and explicit limitations section

**Tables and figures:**

- 35+ tables, 26 figures
- ~56 pages, natbib/bibtex compilation

**Pipeline:**

- 24 R scripts (22 numbered + `figures_new.R` + `00_setup.R`), full pipeline in ~8 minutes
- New scripts: `14_quality_checks.R` through `22_threshold_heatmap.R` plus `figures_new.R`

---

## v4 --- March 2026

**Manuscript:**

- Rewrote contributions paragraph with explicit H1/H2 structure and scope limitation
- Softened over-claims throughout (9 instances: "establish" to "show", "confirming" to "indicating")
- Expanded IV section: preferred spec declaration, lambda interpretation, LATE discussion
- Bajari--Ye restructured around 3 sequential claims with magnitude hedge
- DiD shrunk to 2 paragraphs (complementary, underpowered)
- Mechanisms: added connective sentences and bridge paragraph
- Heterogeneity: relabeled "high/low-suspicion" to "concentrated/competitive-market FL"
- Added robustness roadmap paragraph (6 groups)
- Added implementation blueprint (Flag, Triage, Investigate, Monitor)
- Added enforcement integration and legal boundary sentences
- Abstract trimmed to 136 words with policy contribution sentence
- Broader implications paragraph added to conclusion
- Float numbering fixed: appendix counters reset (A.1, B.1, etc.)
- Added missing cross-references for 3 main-body floats

**Tables and figures:**

- 35 tables (12 main body, 23 appendix)
- 14 figures (6 main body, 8 appendix)
- 59 pages, 0 errors, 0 undefined references

**Pipeline:**

- 13 R scripts, full pipeline in ~8 minutes
- New tables: IV balance, IV Panel C, Bajari--Ye tender FE, network interactions, homogeneous CV, welfare bounds (updated)

---

## v3 --- February 2026

- CADE validation section with CNPJ enrichment (3 FL firms matched)
- Network-split IV regressions
- Bajari--Ye tender fixed effects specification
- Homogeneous sub-samples via price-CV approach
- Welfare analysis with cross-fit bounds
- Staggered DiD with MDE and Rambachan--Roth sensitivity

---

## v2 --- January 2026

- Bajari--Ye exchangeability and conditional independence tests
- Network-based FL classification (winner HHI, repeat partners)
- Regime test: complementary vs. coordinated cover bidding
- Sensitivity analysis (Cinelli & Hazlett, 2020)
- Matching estimators (CEM and IPW)
- Year-by-year coefficient stability

---

## v1 --- December 2025

- Initial manuscript with OLS and IV regressions
- FL definition (always-losers + IQR threshold)
- Leave-one-out instrumental variable
- 18 tables, 6 figures
- Threshold sensitivity and cross-fitting robustness
