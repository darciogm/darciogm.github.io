---
paper: frequent-losers
---

# Research Agenda

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

### Cheap Signals, Costly Proof: Award-Layer Evidence Triage in Cartel Enforcement

**Authors:** Darcio Genicolo-Martins & Paulo Furquim de Azevedo (Insper)

**Version:** v18 (May 2026, JLEO submission-clean)
[manuscript PDF](paper.pdf) ·
[online appendix](online_appendix.pdf)

**Distinctive contributions:**

1. *Triage as evidence allocation* — reframes cartel screening as a
   resource-allocation problem under costly observability rather than
   a stand-alone classification problem. Award-layer triage gates
   costly bid-layer forensics.
2. *Loser-side cobidder concentration* — among always-loser firms, the
   FL14 ranking achieves AUC 0.924 against adjudication-anchored
   cobidders; AUC ≈ 0.49 against direct CADE defendants (the
   predicted null defining the loser-side scope).
3. *Sequential architecture* — Sequential FL → Imhof at Stage-1
   K = 2,000 captures 74% of joint-scoring recall using 17% of the
   bid-microdata footprint; sequential beats joint scoring in the
   operationally honest temporal-holdout regime.
4. *Selection + mechanism decomposition of price evidence* — the
   FL-price coefficient sign-reverses between broad sample (+0.064)
   and overlap-cell ATT (−0.097). The reversal decomposes into a
   positive selection component (cartels concentrate in high-price
   cells, ΔQ5−Q1 = +5.58 log-points among non-treated items) and a
   negative mechanism component (cover-bidders inflate bidder counts
   by 66% within cell, depressing the winner price relative to
   reference). The sign-reversal is the empirical signature of
   cover-bidding theory.

**Target journals:**

| Tier | Journal | R&R prob. | Fit rationale |
|:-:|---|:-:|---|
| 1 | **JLEO** (J. of Law, Economics, and Organization) | **65–70%** | Institutional economics core; cost-of-evidence framing is JLEO-resonant; loser-side scope discipline + mechanism decomposition give two distinct contributions. Single-jurisdiction cap is the binding constraint. |
| 2 | **JLE** (J. of Law and Economics) | **55–60%** | Adjacent home journal. JLE referees tend to want stronger causal identification; the within-cell mechanism (Test 2) is associative not causal, so JLE referees with strong IV preferences may downgrade. |
| 3 | **AEJ: Applied Economics** | **40–50%** | Strong general-purpose journal. Would value the selection + mechanism decomposition methodologically, but the institutional framing is less natural; AEJ:A referees prefer cleaner identification or larger external validity. |

**Current submission gating constraints:**

- *Single-jurisdiction limitation* — every audit lives in BEC × CADE.
  Cross-jurisdiction replication (ComprasNet federal) would push R&R
  to 75–80% at JLEO. See
  [`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md).
- *CADE selection bias* — cobidder labels reflect CADE's adjudication
  choices; not within-data testable. Same fix path.

---

## 2. Five follow-up paper ideas using the same data

The five ideas below are ordered by **overlap with the current paper**,
from highest to none. Two are partial extensions of the cover-bidding
framework; the rest are deliberately disjoint, taking the BEC + CADE
+ RAIS data lake into different research programs.

### Idea 2.1 — Adaptive Cartels: Strategic Bid-Rigging Response to the 2018 Decreto

**Overlap with current paper:** **High** — uses FL14 framework
directly, just pivots from static detection to dynamic adaptation.

**Central question:** When the 2018 Decreto 9.412 raised the
procurement cap from R$80K to R$176K (and CADE detection
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
not enforcement architecture. The current paper's sequential gatekeeping
contribution is absent here; the cover-bidding signature decomposition
is the lead.

---

### Idea 2.3 — The Geography of Cartel Networks in Brazilian Procurement

**Overlap with current paper:** **Low** — same cartel substrate but
entirely different methodology (spatial econometrics + network
analysis) and question (geography, not detection).

**Central question:** How do procurement cartels organize spatially?
Are they regional clusters, sectoral networks, or politically
structured (around state capitals, governing-party alignment)? Maps
the cartel-adjacency network across municipalities and PBUs.

**Empirical strategy:** Build a firm × buyer network from BEC, weight
by tender shared with CADE-adjudicated cartels. Spatial autocorrelation
analysis on the cartel-adjacency density. Combine with IBGE municipal
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
detection/triage contribution of the current paper is absent; the
question is "where" not "how to detect".

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

## Summary: portfolio view

| Idea | Overlap | Top journal | Top R&R |
|:-:|---|---|:-:|
| Current paper | — | JLEO | 65–70% |
| 2.1 Adaptive Cartels | High | IJIO | 45–55% |
| 2.2 Cover-Bidding Architecture | Medium | IJIO | 50–55% |
| 2.3 Geography of Cartels | Low | J. Economic Geography | 50–60% |
| 2.4 Information Frictions | None | AEJ: Applied | 35–45% |
| 2.5 Municipal Development | None | World Development | 45–55% |

The portfolio mixes:

- **Highest R&R targets**: J. of Economic Geography (Idea 2.3, smaller
  but high-fit), then IJIO (Idea 2.2), then JLEO (current paper).
- **Most ambitious targets**: AEJ:Applied (could fit current paper as
  Tier 3, or Idea 2.4 as Tier 2 if identification cleaned up).
- **Cleanest reach**: World Development (Idea 2.5) and J. of Economic
  Geography (Idea 2.3) both ~50% with good positioning.
- **Disjoint papers** (2.4 and 2.5) avoid intellectual cannibalization
  with the current paper at the cost of needing more data work.

**Sequencing recommendation:** complete current paper R&R cycle
first; then pursue Idea 2.1 (Adaptive Cartels) as the natural
extension if R1 reviewers like the FL framework, or pivot to Idea 2.3
(Geography) for a clean break that uses similar data without
competing intellectually with the current paper.

---

*Last updated: 2026-05-22*
