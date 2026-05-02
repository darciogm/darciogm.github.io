---
paper: frequent-losers
---

# Changelog

---

## v17 — May 2026 (current)

**Route 2 substantive revision push and storytelling polish for JLEO.**

- Title: *Frequent Losers: A Cover-Bidder Screen Without Bid Microdata*. Cunha "Frequent Losers" as a noun-phrase technical term and promises the most original methodological move (operating without bid microdata at the operational layer).
- New section §`forensic` carries the architectural test as the contribution-central section. Three findings: same-target AUC comparison (FL alone 0.881 vs Imhof full 0.846), non-redundant signal in combination (+0.096 AUC, DeLong *p* = 1.2 × 10&minus;26), and the sequential gatekeeper rule that delivers an 83% bid-microdata footprint reduction at an 8% recall cost relative to joint scoring.
- Temporal-holdout audit of the gatekeeper added (script 64): the sequential rule matches or exceeds joint scoring under temporal holdout in absolute true-positive count, so the data-envelope reduction does not trade off against out-of-time recall.
- Bid-level extension of the within-stratum theory bridge (script 62): per-bid `Valor Unitário Proposta` and `Flag Vencedor` from the LANCES export, restricted to losing bids in convite or pregão. Cobidders bid plausibly close to winners (median gap *d* = &minus;0.28) with elevated within-firm dispersion (*d* = +0.15). Multivariate logit holding `log(1+tenders_count)` constant confirms both signs at *p* &lt; 10&minus;3. The signs adopt the credible-cover-bidding (R2) reading of Marshall&ndash;Marx and Asker over the textbook (R1) reading of Porter&ndash;Bajari&ndash;Ye.
- Sign-reversal segment-level decomposition (script 61): the broad-sample positive concentrates in tender-value Q4 (+0.046, robust to overlap restriction and ATT reweighting). Trim sensitivity *strengthens* the negative ATT estimate (from &minus;0.097 to &minus;0.118 at top-decile trim), foreclosing the few-cell-artefact reading.
- Observability framing reframed: distinction between *operational layer* (audit-court-queryable in minutes; carries award envelope only) and *forensic-recoverable layer* (per-bidder bid amounts, accessible through administrative request with weeks of latency). The screen operates on the operational layer; the bid-microdata pipeline appears in §`forensic` as the benchmark and as the Stage-2 input the screen triages, never as a screening input itself.
- Online Appendix A formal R1/R2 distinction added at the end of the proof appendix; framework predictions about firm-level participation intensity, deployment proximity, and portfolio specialisation are unaffected by R1/R2; only the bid-level reading of $b_C$ is.
- Manuscript: 47 pp body + 20 pp online appendix. All thirteen main sections and seven OA sections at storytelling 9.5. Disclosure footnote on LANCES export access embedded in §`emp_estimand`.
- v16 byte-frozen as recoverable hedge under `work/v16-editor/`.

## v15 — May 2026

**Single-thesis rewrite for JLEO.**

- Title realigned with body: *Frequent Losers as a Cartel Screen: Detecting Cover Bidding Without Bid Microdata*. Construct scope explicit (cover-bidder population, not cartel ringleaders).
- Abstract reframed in eight sentences: problem, puzzle, construct, headline range, oversight gradient, framework, identification stance, three-stage administrative pathway.
- Identification scope made explicit and descriptive throughout. RDD at the convite/pregão statutory caps and DiD using Decreto 9.412/2018 both return null at the available bandwidths and are reported openly.
- Headline range reported as **+3.6% to +7.7%** across five estimators (full-sample OLS, PBU fixed effects, IPW, CEM, cross-fit), with the cross-fit decomposition isolating a structural component (+3.6%) from within-sample classification noise (~+2.8 percentage points).
- Procuring-unit-size oversight gradient reported as **12.6×** between extreme quartiles (+21.4% in Q1 to +1.7% in Q4), the strongest source of heterogeneity in the data.
- Minimum-bidder rule (convite Article 22 §3) treated as institutional context rather than as the channel the construct exploits. The data flatly reverse the institutional reading: the construct's signal is sharper in pregão (no minimum-bidder rule) than in convite. We read this as scope information about where the construct fires most cleanly, not as positive evidence for any institutional theory.
- CADE validation reframed as bounded discrimination: lower bound AUC 0.748 (4 cases pre-2020, 210 cobidders, 108 frequent losers; contemporaneous reading) and upper bound AUC 0.924 in-sample / 0.864 temporal holdout (full 12 cases, 193 cobidders; prospective reading). Three named firms (Sol Tecnologia, Nova Esperança Locadora, Jofran Comércio) flagged before their cartel adjudications.
- Operational metrics reported under temporal holdout (train 2009–2016, test 2017–2019) as the deployable projection. In-sample precision overstates the holdout column by ~50% at top-500 (0.132 vs 0.070, retention 53%); the gap is disclosed explicitly and the holdout column carries all operational claims.
- Horse race against bid-distribution detectors reframed as informational complementarity, not dominance. The construct reaches AUC 0.903 against the full Imhof–Wallimann pipeline's AUC 0.888 at substantially lower data cost; combined classifiers reach AUC 0.955–0.962, with the gain identifying non-redundant signal in participation-only and bid-distribution dimensions.
- Mechanism heterogeneity reorganized into three subsections by interpretive stake: continuous loss intensity dominates the binary cutoff (DeLong *p* = 2×10⁻⁵), modal asymmetry between pregão and convite as scope information, and what the data do not support (cell-heterogeneity grid not a positive test of cartel rotation; first-time-FL prediction in the predicted direction but compresses substantially under propensity-score matching).
- Limitations section reorganized into three subsections by stake: identification scope, construct scope (with three competing readings of the participation footprint), external validity and portability (with three structural prerequisites: commodity-heavy item composition, electronic platforms with publicly auditable participant lists, institutional asymmetry between winner and loser sides).
- Cover-bidding framework compressed to three formal results: a lemma establishing `wins=0` as the equilibrium choice of cover bidders, a proposition identifying `log(1+tenders_count)` as a sufficient ranking statistic for the cover-bidder type, and a proposition delivering ∂m\*/∂θ\_k < 0 as the comparative static the procuring-unit-size oversight gradient instantiates.

**Manuscript:**

- 60 pages, single-thesis discipline, lean appendix.
- Bid-level structural mixture, Bajari–Ye coordination tests, network-split heterogeneity, dyadic-linkage permutation, Cox survival, market-selection / Regime 1 / Regime 2 cover-bid-distribution propositions, welfare illustrative calculations, and cross-sector replication removed: not used by the v15 main body.
- Manuscript pipeline preserved; analysis blocks mapped to v15 sections in [Replication](replication.md).

---

## v5.1 — April 2026

Final referee-report edits before the JLEO repositioning. Combined-AUC fix, sample-size clarifications, measurement-error wording tightened, Bajari–Ye tender FE reframed, MkDocs site updated.

---

## v5 — April 2026

JLE repositioning and institutional framing. Headline narrowed to +3.6 to +7.7%. AUC = 0.94 against CADE cobidders. Strategic complementarity, regime selection, three-stage enforcement pathway introduced. **Subsequently superseded by the v15 single-thesis rewrite.**

---

## v4 — March 2026

Manuscript polished with H1/H2 contributions, expanded IV section, Bajari–Ye restructured, DiD as complementary exercise, implementation blueprint added.

---

## v3 — February 2026

CADE validation with CNPJ enrichment. Network-split IV regressions. Bajari–Ye tender fixed effects. Welfare with cross-fit bounds. Staggered DiD with Rambachan–Roth sensitivity.

---

## v2 — January 2026

Bajari–Ye coordination tests. Network-based FL classification. Regime test (complementary vs coordinated). Cinelli–Hazlett sensitivity. CEM and IPW matching.

---

## v1 — December 2025

Initial manuscript: OLS, IV, FL definition (always-losers + IQR threshold), leave-one-out instrument, threshold sensitivity, cross-fitting robustness.
