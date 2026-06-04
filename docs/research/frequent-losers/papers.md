---
paper: frequent-losers
---

# Papers from this Research Program

<!-- REVISED: canonical-target reframe 2026-06-04 -->

This page lists the paper currently in submission preparation and a
ranked set of follow-up paper ideas that can be built using the same
underlying data (BEC-SP procurement panel 2009–2019, CADE adjudication
records, LANCES bid-level export, plus optional linkages to RAIS,
IBGE municipal panels, and reference-price data). Each entry includes
three target-journal options with my probability estimates of
revise-and-resubmit (R&R) at each.

Probabilities are honest reviewer-style assessments; "Confirmed" is
not an option for any single-jurisdiction paper from this data lake
without cross-data replication. All probabilities assume a clean
manuscript at submission.

!!! abstract "Reading the R&R probability columns"
    R&R = invited to revise and resubmit (not Accept). Acceptance
    probability is roughly half of R&R for the listed top journals.
    "Strong fit" = my reviewer-side reading of the journal's recent
    publication mix; "Marginal fit" = stretch.

---

## 1. Current paper (in submission preparation)

### Cheap Signals, Costly Proof: The Reach and Limits of Award-Layer Screening in Cartel Enforcement

**Authors:** Darcio Genicolo-Martins & Paulo Furquim de Azevedo (Insper)

**Version:** v22 (June 2026, JLEO submission)
[manuscript PDF](paper.pdf) ·
[online appendix](online_appendix.pdf)

**Distinctive contributions:**

1. *Screening as evidence allocation* — reframes procurement-cartel
   screening as an evidence-allocation problem under costly
   observability rather than a stand-alone classification problem.
   Enforcement must spend costly proof-producing effort *before* legal
   proof exists; cheap award-layer records (who participates, wins,
   keeps losing) can order forensic priority, not prove conduct.
2. *A transferable decomposition framework* — separates a screen's
   genuine ranking signal from three confounds most screening studies
   leave bundled: mechanical opportunity exposure, retrospective
   information, and single-case concentration. Applied to the
   frequent-loser construct against the broad adjudication-anchored
   cobidder target (651 positives; the frequent-loser flag is not used to
   build the label), raw concentration is modest (continuous-score
   ROC 0.761, PR-AUC 0.143) and mostly exposure (unconditional
   exposure-only ROC 0.905); holding procurement opportunity fixed, the
   within-stratum AUC is 0.471 — essentially chance — and the only
   positive is a fragile nested increment of +0.010 (DeLong $p = 0.013$)
   that is not robust across designs. The deflationary decomposition
   itself is the contribution.
3. *A map of reach and limits* — where cheap administrative records
   can and cannot order forensic priority. The FL-binary flag is at
   chance (AUC $\approx$ 0.49) against win-heavy direct CADE defendants
   *by design* (loser-side scope signature; the continuous score ranks
   them at 0.66–0.70); it orders firms retrospectively among incumbents,
   not prospectively across the platform (strict timing reaches
   $\approx 0.68$ inside the training always-loser pool; platform-wide
   ROC $\approx 0.474$, below chance); and one adjudicated case
   (rail/metro) supplies $\approx 32\%$ of positives (leave-largest-case-out
   drops PR-AUC 0.143 → 0.090, $-37\%$); the estimated ranking is
   case-sensitive, not portable.

**Division of labor with bid-layer forensics.** Against a transparent
bid-moment random-forest benchmark inspired by Imhof–Wallimann-style
screens (ROC 0.717, PR 0.116), the award continuous score (ROC 0.760,
PR 0.143) is comparable, and the combined model is only conditionally
better — PR 0.188 under random CV but 0.103 (below award-only) under
case-grouped folds. Complementarity is conditional and case-fragile, not
dominance. The award layer ranks *where* to look; the bid layer evaluates
*what* is found. Sequencing the two traces a cost–recall frontier: at one
operating point (top-2,000 firms) the firm-count footprint falls
$\approx 88\%$ but the bid-row footprint only $\approx 33\%$, because
survivors are high-participation firms; and $K_1 = 1000$ beats
$K_1 = 2000$, so no single cutoff is optimal. The frontier — a
recovery-footprint design, not measured agency savings — is the design
object.

**Price as scope, not damages.** The conditional FL-price association
is descriptive scope evidence: broad +0.064 reflects selection into
higher-price cells, the overlap-cell ATT (−0.097) blocks a markup
reading, only the Q4 cell is positive (+0.041), and the direct-CADE
price effect is null. The cover-bidding "theater" mechanism is **not**
identified; no overcharge is claimed.

**Target journals:**

| Tier | Journal | R&R prob. | Fit rationale |
|:-:|---|:-:|---|
| 1 | **JLEO** (J. of Law, Economics, and Organization) | **65–70%** | Institutional economics core; the evidence-allocation framing and the transferable decomposition method are JLEO-resonant; the reach-and-limits map reads as disciplined rather than overclaimed. Single-jurisdiction cap is the binding constraint. |
| 2 | **JLE** (J. of Law and Economics) | **50–55%** | Adjacent home journal. JLE referees tend to want stronger causal identification; the theater mechanism is explicitly not identified, so referees with strong IV preferences may downgrade. |
| 3 | **AEJ: Applied Economics** | **40–50%** | Strong general-purpose journal. Would value the decomposition method, but the institutional framing is less natural; AEJ:A referees prefer cleaner identification or larger external validity. |

**Current submission gating constraints:**

- *Single-jurisdiction limitation* — every audit lives in BEC × CADE.
  Cross-jurisdiction replication (ComprasNet federal) would push R&R
  to 75–80% at JLEO. See
  [`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md).
- *Single-case concentration* — one adjudicated cartel supplies
  $\approx 32\%$ of positive labels and 45.4% of true positives at the
  top-500 operating point; the estimated ranking is case-sensitive, and
  the decomposition discloses this rather than absorbing it.
  Cross-jurisdiction labels are the natural fix.
- *CADE selection bias* — cobidder labels reflect CADE's adjudication
  choices; not within-data testable. Same fix path.

---

## 2. Eight follow-up paper ideas using the same data

Ideas 2.1–2.5 are ordered by **overlap with the current paper**, from
highest to none. Ideas 2.6–2.8 (added 2026-05-25) round out the set
with enforcement-evaluation, reference-price, and structural-damages
angles. Several are extensions of the cover-bidding framework; the rest
are deliberately disjoint, taking the BEC + CADE + RAIS data lake into
different research programs. Where a number of adjudicated cartels caps
precision, the entry says so up front — these are reviewer-honest
assessments, not pitch decks.

### Idea 2.1 — Adaptive Cartels: Strategic Bid-Rigging Response to the 2018 Decreto

**Overlap with current paper:** **High** — uses FL14 framework
directly, just pivots from static detection to dynamic adaptation.

**Central question:** When the 2018 Decreto 9.412 raised the
procurement cap from R\$80K to R\$176K (and CADE detection
methodologies had matured), did cartels adapt their cover-bidding
strategies to remain undetected? Did some cartels exit the market,
others change tactics?

**Empirical strategy:** Difference-in-differences around 2018, using
items that crossed the cap as treated and items always above/below as
controls. Outcomes: cobidder participation patterns, bid-distribution
moments, FL turnover. Triangulate with CADE adjudication dates to
identify cartels likely aware of detection risk.

**Data reuse:** All from current paper + AN-020 (DiD around decreto)
expanded. Approx 6-8 weeks of work; mostly script extension.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **RAND** (Journal of Economics) | 30–35% | Structural IO; cartel adaptation under enforcement risk fits RAND's IO core; small N of adapted cartels is the cap. |
| 2 | **AEJ: Applied Economics** | 35–40% | Clean DiD design at a real policy threshold; AEJ:A appreciates well-identified shock-response work. |
| 3 | **IJIO** (Int'l J. of Industrial Organization) | 45–55% | Empirical IO with strong fit for cartel-dynamics literature; IJIO is a more reachable target. |

**Why this idea exists:** The 2018 Decreto is an underexploited natural
experiment. Current paper uses it as a robustness check (DiD null);
this paper would use it as the identifying variation for a dynamic
question.

---

### Idea 2.2 — The Architecture of Cover Bidding: Cross-Sector Heterogeneity

**Overlap with current paper:** **Medium** — same theoretical framework
(cover bidding), same data (bid-level), but pivots to industrial
heterogeneity rather than enforcement triage.

**Central question:** Does the cover-bidding signature (bid-level
gap-to-winner, bidder-count inflation) appear uniformly across
procurement sectors, or is it sector-specific? Tests whether cover
bidding is a generic cartel technology or specialized by industry
structure.

**Empirical strategy:** Use bid_level_full_v14 to characterize
sector-by-sector bid-distribution moments (CV, skewness, gap-to-
winner). Sectors: healthcare (group 65, 37), construction, IT
services, transportation, paper-and-office. Test whether the
selection + mechanism decomposition from AN-039/AN-040 holds within
each sector. Cross-sector comparison anchored on CADE adjudications.

**Data reuse:** bid_level_full_v14 (1.5GB, already loaded for AN-040),
plus sector classification from item codes. ~8-12 weeks of work
because new sectoral analyses required.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **IJIO** (Int'l J. of Industrial Organization) | 50–55% | Strong fit for sectoral empirical IO; bid-distribution literature appears here. |
| 2 | **RAND** (Journal of Economics) | 35–40% | RAND values structural IO and cross-sector comparison; competes with the harder structural papers there. |
| 3 | **J. of Industrial Economics** | 40–50% | Good secondary fit; smaller journal but solid for sectoral heterogeneity. |

**Differentiator from current paper:** focus on industrial structure,
not evidence allocation. The current paper's award→bid sequencing and
opportunity-decomposition contributions are absent here; the
cover-bidding signature decomposition is the lead.

---

### Idea 2.3 — The Geography of Cartel Networks in Brazilian Procurement

**Overlap with current paper:** **Low** — same cartel substrate but
entirely different methodology (spatial econometrics + network
analysis) and question (geography, not detection).

**Central question:** How do procurement cartels organize spatially?
Are they regional clusters, sectoral networks, or politically
structured (around state capitals, governing-party alignment)? Maps
the adjudication-anchored exposure network across municipalities and PBUs.

**Empirical strategy:** Build a firm × buyer network from BEC, weight
by tenders shared with CADE-adjudicated cartels. Spatial autocorrelation
analysis on the adjudication-anchored exposure density. Combine with IBGE municipal
data (population, political alignment, fiscal capacity) to test
whether cartel concentration follows institutional weakness. Could
also use TSE political data.

**Data reuse:** BEC firm × buyer location (PBU coordinates), CADE
adjudications, IBGE municipal panel (already in monorepo). ~10-12
weeks of work; requires new GIS / spatial-econ pipeline.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Economic Geography** | 50–60% | Perfect fit for spatial structure of economic activity; smaller journal but high-impact within geography. |
| 2 | **Regional Science and Urban Economics** | 45–55% | Strong methodological fit for urban-procurement work. |
| 3 | **AEJ: Applied Economics** | 35–40% | Possible if the spatial story has welfare implications + a clean shock; harder sell otherwise. |

**Differentiator:** descriptive spatial-network paper. The
evidence-allocation contribution of the current paper is absent; the
question is "where cartels organize" not "how to order forensic priority".

---

### Idea 2.4 — Information Frictions in Public Procurement Auctions

**Overlap with current paper:** **None** — same data, completely
different research program (auction theory + market design rather
than cartel detection).

**Central question:** Why don't more firms compete in Brazilian
procurement auctions? Tests whether the limited participation reflects
information frictions (firms don't know about distant tenders, can't
evaluate reference prices, lack capacity for distant logistics), or
strategic abstention. Could the procurement system increase
competition by changing information disclosure?

**Empirical strategy:** Auction-level analysis. Outcome: number of
bidders. Predictors: distance from firm to buyer, reference-price
information availability, modality (Convite vs Pregão), tender value,
month-of-year cyclicality. Mechanism tests using policy variation
(e.g., reference-price disclosure changes, modality threshold
boundaries).

**Data reuse:** BEC + bid_level + Firms_final (firm characteristics).
Distance computed from PBU and firm CEP. ~10 weeks of work.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Public Economics** | 30–40% | Standard home for public-procurement market design; would need strong identification (the modality threshold variation could provide it). |
| 2 | **AEJ: Applied Economics** | 35–45% | Well-fit for applied empirical work on auction outcomes; would value the policy variation. |
| 3 | **Int'l Tax and Public Finance** | 40–50% | Smaller but appropriate for procurement-design papers; less competitive. |

**Differentiator from current paper:** no cartel framing, no
adjudication anchor, no FL ranking. This paper is about auction
participation and market design — a different intellectual project
entirely.

---

### Idea 2.5 — Procurement and Municipal Economic Development: Welfare Effects of Concentrated Supplier Markets

**Overlap with current paper:** **None** — different theoretical
framework (development economics + fiscal federalism), different
outcomes (municipal employment, fiscal capacity).

**Central question:** How does the structure of municipal procurement
(supplier concentration, average winning prices, supplier diversity)
shape local economic development outcomes? Specifically: does more
concentrated procurement (fewer winners getting more business)
benefit municipalities through lower prices and faster delivery, or
harm them through reduced supplier capacity and fewer local jobs?

**Empirical strategy:** Municipality panel. Outcomes: formal-sector
employment growth, fiscal balance, supplier diversity (HHI of who
gets contracts). Predictors: procurement HHI, average winning prices,
modality mix. Identification: 2018 Decreto cap shift OR cross-
municipality variation in procurement architecture.

**Data reuse:** BEC + RAIS firm-level employment + IBGE municipal
fiscal data + DATASUS health outcomes (optional). Heavy data
assembly; ~12-16 weeks of work, larger lift than other ideas.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **World Development** | 45–55% | Perfect fit for Brazilian municipal context; less competitive than top journals; values practical-policy work. |
| 2 | **J. of Development Economics** | 35–45% | Top development journal; would want strong identification + theory; cleaner story needed. |
| 3 | **J. of Public Economics** | 25–35% | Stretch fit; JPubE referees prefer US/OECD contexts and tighter identification. |

**Differentiator:** completely outside the cartel-detection framework.
A development paper using the same data lake for a fundamentally
different question.

---

### Idea 2.6 — Adjudication and Deterrence: What Happens to Cartel Firms After CADE?

**Overlap with current paper:** **Low–Medium** — reuses the CADE
adjudication anchor and the FL ranking, but turns the question from
*detection* to *post-detection firm behavior*.

**Central question:** Once CADE adjudicates a procurement cartel, what
happens to the firms? Do convicted firms and their cover bidders exit
BEC, persist unchanged, or reorganize (new CNPJ roots, recombined
bidding partners) to keep operating below the detection radar? Is
enforcement deterring conduct or merely displacing it?

**Empirical strategy:** Event-study around each cartel's CADE
adjudication date (observed). For adjudicated firms and their
cobidders, track post-event participation intensity, win rates,
FL-stratum membership, and co-bidding-partner turnover. A "phoenix"
test links pre-event CNPJ roots to post-event entrants sharing
addresses, partners (via RAIS), or bidding fingerprints. Untreated
always-losers with comparable pre-event participation form the control.

**Original contributions to the literature:**

1. *First firm-level recidivism/displacement measurement for
   procurement cartels in an emerging-market e-procurement setting* —
   the cartel-duration and recidivism literature (Levenstein & Suslow
   2006) is built largely on international price-fixing cartels;
   procurement-specific, firm-level post-adjudication dynamics are thin.
2. *A behavioral test of deterrence vs displacement* — separates
   Becker-style deterrence (conduct stops) from displacement (conduct
   migrates to new shells), a distinction the leniency/enforcement
   literature (Miller 2009) rarely draws with bid-level micro-data.
3. *The "phoenix firm" channel, operationalized* — a reproducible
   linkage of pre- and post-adjudication identities through bidding
   fingerprints + RAIS partner/address overlap, usable as an
   enforcement-evaluation instrument.

**Data reuse:** Current-paper CADE anchor + FL ranking + AN-020 event
scaffolding, plus RAIS partner/address linkage for the phoenix test.
~8–10 weeks; the main lift is the identity-linkage pipeline.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **JLE** (J. of Law and Economics) | 30–35% | Enforcement effectiveness is core JLE; the small number of adjudicated SP cartels is the binding constraint, and JLE referees will press on power. |
| 2 | **IJIO** (Int'l J. of Industrial Organization) | 40–45% | Empirical-IO home for cartel-dynamics and enforcement-response work; more forgiving on N if the displacement mechanism is clean. |
| 3 | **Int'l Review of Law and Economics** | 50–55% | Strong topical fit and more reachable; values applied enforcement evaluation over heroic identification. |

**Differentiator:** the current paper *ranks forensic priority*; this
paper asks whether adjudication *changes behavior*. No evidence-allocation
or cost-of-evidence content — the contribution is enforcement evaluation.
**Binding
constraint, stated honestly:** the count of distinct adjudicated SP
cartels is small, so the event-study is power-limited; cross-state CADE
records would be the natural fix.

---

### Idea 2.7 — Reference Prices as a Collusive Instrument

**Overlap with current paper:** **Medium** — same cover-bidding
substrate, but isolates the reference-price (*preço de referência*)
channel that the current paper deliberately sets aside.

**Central question:** BEC tenders are anchored by an administratively
set reference price. Do winners and cover bidders exploit the
reference-price process — clustering winning bids just below the
anchor, or inflating the anchor itself — so that the reference price
becomes a collusive coordination device rather than a competitive
ceiling?

**Empirical strategy:** Characterize the distribution of
winning-bid-to-reference-price ratios and test for bunching just below
the anchor (McCrary / Cattaneo density tests) in FL-present vs
FL-absent tenders. Where reference-price revisions are observed across
re-tendered items, test for systematic upward anchor drift in
cartel-adjacent environments. Modality split (Convite vs Pregão) as the
institutional contrast.

**Original contributions to the literature:**

1. *Reference prices as a coordination device, not just a ceiling* —
   the procurement-design literature on awarding and screening rules
   (Decarolis 2014) treats reference/reserve prices as mechanism
   parameters; their use as a collusive anchor is largely untested
   empirically.
2. *Anchoring (Tversky & Kahneman 1974) imported into procurement
   collusion* — bridges behavioral economics and bid-rigging detection
   by treating the administrative anchor as the object cartels
   manipulate, not just a passive ceiling.
3. *A bunching-based screen at the reference-price margin* — a new,
   microdata-light screen complementary to the loser-side FL screen of
   the current paper, deployable wherever a reference price is recorded.

**Data reuse:** BEC + bid_level + the reference-price field (where
populated — see caveat). ~8–10 weeks.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Public Economics** | 25–35% | Procurement market-design home; the bunching identification must be airtight and JPubE referees will demand it. |
| 2 | **AEJ: Applied Economics** | 30–40% | Likes clean bunching designs at administrative thresholds; the behavioral-anchor framing is a plus. |
| 3 | **J. of Industrial Economics** / **IJIO** | 40–50% | Reliable IO home for a reference-price-manipulation screen. |

**Data-availability caveat:** these R&R figures assume the
reference-price field is populated for a usable share of tenders. If
coverage is thin, the idea collapses to a robustness note inside Idea
2.2 — confirm coverage before committing any time.

**Differentiator:** the current paper reports the price coefficient as
descriptive scope and refuses a damages reading; this paper makes the
*price-setting process itself* the object of study.

---

### Idea 2.8 — What Did the Cartel Cost? A Structural Overcharge Estimate

**Overlap with current paper:** **Medium** — uses the same
cover-bidding framework and bid-level data to do precisely what the
current paper refuses to do: estimate damages.

**Central question:** The current paper deliberately reports no
overcharge. This paper takes on the structural counterfactual directly:
absent the cover bidders, what would the winning price have been, and
what is the implied overcharge in CADE-adjudicated procurement cartels?

**Empirical strategy:** Structural first-price estimation
(Guerre–Perrigne–Vuong nonparametric recovery of latent valuations) on
competitive (FL-absent, non-adjudicated) tenders to identify the
competitive bidding function; counterfactually price the adjudicated
cartel tenders against it. Cover-bidder bids are treated as
non-informative (Asker 2010) and excluded from the competitive-fit
step. Bound the estimate with the selection + mechanism decomposition
(AN-039 / AN-040) so the structural number inherits the paper's honesty
about cartels selecting into high-price cells.

**Original contributions to the literature:**

1. *First structural overcharge estimate for Brazilian public-
   procurement cartels* — the structural collusion-damages literature
   rests on a handful of settings (Asker 2010, stamp dealers; Porter &
   Zona 1993 and Bajari & Ye 2003, US highway/milk procurement); an
   emerging-market e-procurement estimate is new.
2. *A selection-corrected structural counterfactual* — embeds the
   current paper's selection/mechanism decomposition into the structural
   step, netting the damages number of the "cartels choose high-price
   cells" selection that contaminates naive overcharge regressions.
3. *Cover-bid exclusion as an identification device* — turns the
   loser-side screen into a structural-estimation input (cleaning the
   competitive-fit sample), not merely a priority-ranking screen — a reusable move for
   any structural collusion study with a credible cover-bidder flag.

**Data reuse:** bid_level_full_v14 + CADE anchor + AN-039/040
decomposition. ~12–16 weeks; the structural pipeline is the heavy lift.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **RAND** (Journal of Economics) | 25–35% | Structural-IO home; high value if the counterfactual is credible, but RAND referees are demanding and the cartel N is small. |
| 2 | **IJIO** (Int'l J. of Industrial Organization) | 40–50% | Best risk-adjusted target for an applied structural overcharge paper. |
| 3 | **JLE** (J. of Law and Economics) | 35–45% | Damages estimation is squarely law-and-economics; referees will want exactly the selection correction the current paper pioneers. |

**Differentiator:** this is the damages paper the current one refuses
to be. Where the current paper stops at "scope, not damages," this one
takes the structural identification head-on — and is candid that the
small number of adjudicated cartels bounds how precise any overcharge
estimate can be.

---

## Summary: portfolio view

| Idea | Overlap | Top journal | Top R&R |
|:-:|---|---|:-:|
| Current paper | — | JLEO | 65–70% |
| 2.1 Adaptive Cartels | High | IJIO | 45–55% |
| 2.2 Cover-Bidding Architecture | Medium | IJIO | 50–55% |
| 2.3 Geography of Cartels | Low | J. Economic Geography | 50–60% |
| 2.4 Information Frictions | None | AEJ: Applied | 35–45% |
| 2.5 Municipal Development | None | World Development | 45–55% |
| 2.6 Adjudication & Deterrence | Low–Med | Int'l Rev. Law & Econ | 50–55% |
| 2.7 Reference-Price Instrument | Medium | J. Ind. Econ / IJIO | 40–50% |
| 2.8 Structural Overcharge | Medium | IJIO | 40–50% |

The portfolio mixes:

- **Highest R&R targets**: J. of Economic Geography (Idea 2.3, smaller
  but high-fit), then IJIO (Idea 2.2), then JLEO (current paper).
- **Most ambitious targets**: AEJ:Applied (could fit current paper as
  Tier 3, or Idea 2.4 as Tier 2 if identification cleaned up).
- **Cleanest reach**: World Development (Idea 2.5) and J. of Economic
  Geography (Idea 2.3) both ~50% with good positioning.
- **Disjoint papers** (2.4 and 2.5) avoid intellectual cannibalization
  with the current paper at the cost of needing more data work.
- **The three added ideas (2.6–2.8)** are the natural intellectual
  continuations once the current paper is in review: 2.6 evaluates
  whether enforcement works, 2.7 attacks the reference-price channel,
  and 2.8 is the structural damages paper the current one deliberately
  declines to be. All three are power-capped by the small number of
  adjudicated cartels — the same single-jurisdiction constraint that
  binds the current paper, and the same cross-jurisdiction fix.

**Sequencing recommendation:** complete current paper R&R cycle
first; then pursue Idea 2.1 (Adaptive Cartels) as the natural
extension if R1 reviewers like the FL framework, or pivot to Idea 2.3
(Geography) for a clean break that uses similar data without
competing intellectually with the current paper.

---

*Last updated: 2026-06-03*
