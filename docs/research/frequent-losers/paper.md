---
paper: frequent-losers
---

# Manuscript

How we built the screen, what it claims, and how the architecture
of two-stage cartel enforcement looks once the screen is in
place.

---

## Contribution

The paper makes three contributions, ordered by what we sell hardest.

1. **Architectural.** Under incomplete operational observability
   of the bid layer---the regime in which most enforcement
   environments operate---we identify a screen built on the
   contract-award envelope alone that matches the AUC of the
   seven-feature Imhof&ndash;Wallimann pipeline trained on bid
   microdata, and a sequential rule that uses the screen to
   triage which firms enter the bid-layer forensic stage. The
   sequential rule recovers 131 of 193 adjudicated cobidders in
   the top-1,000 flag list while interrogating bid microdata for
   2,000 firms instead of 11,676---an **83% data-envelope
   reduction** whose recall robustness survives the
   temporal-holdout audit.

2. **Empirically grounded.** On São Paulo's BEC platform
   (2009&ndash;2019), the *frequent-loser* flag discriminates
   193 adjudicated cobidders inside the always-loser stratum at
   firm-level **AUC 0.864 under temporal holdout** and 0.748 on
   a strict pre-2020 conservative benchmark. Cobidders bid
   plausibly close to winners with elevated within-firm
   dispersion (Cohen's *d* = &minus;0.28 on per-firm median gap
   to winner), the signature of credible cover bidding rather
   than the textbook deliberately-uncompetitive form. The
   pricing imprint enters as descriptive corroboration: a
   +3.6 to +7.7% conditional within-item price gap across four
   estimators, concentrated in the largest-tender-value
   stratum (Q4 robust to overlap restriction and to trimming
   the most heavily ATT-weighted cells).

3. **Theoretically grounded.** A separating-equilibrium
   framework with cover bidders identifies
   `log(1+tenders_count)` as a sufficient ranking statistic for
   cover-bidder type given award-record data, and the bright-line
   filter `wins=0` is the equilibrium choice of cover bidders
   themselves. The framework supports both the textbook (R1) and
   credible (R2) cover-bidding readings; the bid-level evidence
   adopts R2 explicitly, the modern literature's reading.

**What we do not claim.** Identification is descriptive
throughout. The conditional price gap is not a causal estimate
of cover bidding's effect on prices, and the segment-level
decomposition shows the broad-sample positive is the
population-weighted average of a positive Q4-tender-value
coefficient and three negative Q1&ndash;Q3 coefficients. The
construct flags cover bidders, not cartel ringleaders: against
47 direct CADE defendants in the broader BEC firm universe, AUC
is 0.49 by design---the screen recovers loser-side
participation, not winner-side identity.

---

## Two Observability Layers

The paper rests on a distinction the cartel-detection literature
has not foregrounded. BEC---and most enforcement environments
globally---exposes two layers, not one.

| Layer | What it carries | Who queries it | Latency |
|---|---|---|---|
| **Operational** | Winner identity, participant identity, item code, negotiated price | Audit courts and competition authorities, directly | Minutes |
| **Forensic-recoverable** | Per-bidder bid amounts, bid timestamps, bid-revision sequences | Same agencies, but only through case-specific administrative request | Weeks |

The screen we build operates on the operational layer alone.
The bid-distribution comparison in §`forensic` and the bid-level
extension of the within-stratum bridge in §`cade` use the
forensic-recoverable layer because that is where the
bid-distribution moments and the bid-level signatures are
computable. The architectural claim is that the screening stage
acts as a Stage-1 gatekeeper for the forensic stage, not that
bid microdata are universally absent.

---

## Institutional Background

### BEC Platform

The **Bolsa Eletrônica de Compras (BEC)** is São Paulo state's
centralised electronic procurement platform, used by 1,308
procuring units (PBUs) from 2009 to 2019. Two procurement
modalities dominate the sample.

| Modality | Format | Key feature |
|---|---|---|
| **Convite** | Sealed-bid invitation | Lei 8.666/93, Art. 22; statutory minimum of three qualified bidders |
| **Pregão** | Electronic reverse auction | Lei 10.520/2002; no minimum-bidder requirement |

### Modal contrast as observability-regime variation

The two modalities provide a within-platform contrast that
falsifies the obvious institutional reading. A quorum-filler
account would predict a sharper screening signal in convite
(where the rule binds); the data show the opposite. The screen
discriminates at AUC 0.952 in pregão primary auctions versus
0.816 in convite primary auctions. We read this as variation in
the *observability regime* under which the screen recovers
information: pregão exposes (and forces the cover bidder to
leave) a richer interaction footprint than convite's sealed
envelope. This aligns with the dynamic-vs-sealed-bid distinction
in Marshall&ndash;Marx, Asker, and Athey&ndash;Cramton&ndash;Ingraham.

### Lei 14.133/2021

Brazil's new procurement law consolidates pregão-style
electronic auctions as the institutional default. Because the
construct's signal-to-noise is highest in pregão environments,
the regulatory direction is favourable to portability rather
than adversarial.

---

## Frequent Losers Definition (Two Steps)

### Sample

| Dimension | Value |
|---|---|
| Source | BEC (São Paulo, 2009&ndash;2019) |
| Tender-items | 4.5 million raw; 1,654,401 in regression sample |
| Bids | 40 million bid-level |
| Firms | 41,444 total; 16,843 always-losers |
| Procuring units | 1,308 |
| Item types | 18,783 |

### Step 1 &mdash; always-losers

16,843 firms with win rate = 0 across all 2009&ndash;2019 BEC
tenders.

### Step 2 &mdash; IQR threshold

Among always-losers, compute median + 1.5 &times; IQR of
participation counts &asymp; 14 tenders. Firms above this
threshold are classified as frequent losers.

**Result: 2,735 frequent-loser firms (16.2% of always-losers).**

The treatment variable is `losers = 1` if a tender-item has at
least one frequent-loser participant. Frequent-loser presence
occurs in 4.8% of analysis-sample tenders.

---

## Conceptual Framework

The framework is an organising device, not the source of
identification. Four formal results anchor the construct (proofs
in the appendix):

| # | Result | Role |
|---|---|---|
| Lemma 1 | `wins=0` is the equilibrium choice of the cover-bidder type | Establishes the bright-line filter as the empirical separating condition |
| Proposition 1 | `log(1+tenders_count)` is a sufficient ranking statistic for cover-bidder type given award-record data | Establishes the continuous primitive; the binary FL14 rule is its information-coarsening |
| Proposition 2 | &part;m*/&part;&theta;<sub>k</sub> < 0 | Generates the comparative static the procuring-unit-size oversight gradient instantiates |
| Proposition 3 | β and β<sup>ov</sup> are different empirical objects under the deployment problem | Formalises why the broad-sample and overlap-restricted price coefficients can have opposite signs without contradiction |

The framework is silent on the bid-level shape of cover bids
beyond the equilibrium constraint $b_C > b^*$. The early
empirical cover-bidding literature reads this loosely (R1:
visibly uncompetitive cover bid). The modern strand reads it
tighter (R2: bids plausibly close to winners, with within-firm
dispersion arising from rotation across cover roles). The
within-stratum bid-level bridge discriminates between R1 and R2
and adopts R2 explicitly.

---

## Empirical Strategy

### Reduced-form specification

$$y_{igt} = \beta \cdot \mathrm{losers}_{igt} + \mathbf{x}_{igt}' \boldsymbol{\delta} + \alpha_g + \lambda_t + \gamma_k + \varepsilon_{igt}$$

where `y_{igt}` is the log negotiated unit price for tender-item
*i* in item group *g* at time *t* and procuring unit *k*;
&alpha;<sub>g</sub>, &lambda;<sub>t</sub>, &gamma;<sub>k</sub>
are item, year, and procuring-unit fixed effects; errors
clustered at item level.

**Four specifications:** general within-item-and-year, within-PBU,
pregão-only, convite-only.
**Four estimators:** OLS, IPW, CEM matching, cross-fit (odd/even
years).

### Identifying stance

Identification is descriptive throughout. Two design-based
strategies that would extract a causal estimate return null at
the available bandwidths: a sharp regression discontinuity at
the convite/pregão statutory caps (gated by the absence of
bunching), and a difference-in-differences using the 2018 cap
raise (gated by parallel-trends failure). Both failures are
reported openly. The descriptive claim is calibrated through
four identification audits&mdash;Cinelli robustness value, Oster
&delta;, strict-overlap matching, anti-leakage audit&mdash;and a
placebo specification using sub-threshold always-losers as
instrument.

---

## Validation Against CADE Adjudications

### Setup

CADE's procurement-cartel portfolio relevant to the sample
comprises 12 adjudicated cases covering 65 firm-defendants in
total, of which **47** are active in BEC during the sample
window. Eight of the twelve cases were adjudicated after 2019,
so the construct's discrimination was computed on participation
patterns observable years before enforcement confirmed them.

### Two ground-truth populations

| Population | Size | Who | Construct target? |
|---|---|---|---|
| Direct defendants | 47 | Firms named in CADE rulings as cartel members | **No** (typically frequent winners; AUC 0.49 by design) |
| Cobidders | 193 | Always-loser firms that participated alongside direct defendants in BEC tenders | **Yes** (cover-bidder candidates by structure) |

### Discrimination bounds

| Reading | Sample | AUC |
|---|---|---|
| Conservative (contemporaneous) | 4 cases adjudicated pre-2020, 210 cobidders, 108 frequent losers | **0.748** [0.713, 0.783] |
| Prospective (full portfolio) | Full 12 cases, 193 cobidders | **0.924** in-sample; **0.864** under temporal holdout |

### Within-stratum bridge

Cobidders match the modelled cover-bidder type along four of
five firm-level operational predictions
(Cohen's *d* = +1.00 on unique winners faced; +0.46 on direct-CADE
proximity; +0.39 on portfolio item-group HHI). At the bid level,
they bid plausibly close to winners (*d* = &minus;0.28 on
per-firm median gap, *p* &lt; 10&minus;6) with elevated within-firm
cross-bid dispersion (*d* = +0.15, *p* = 0.05); a multivariate
logit holding `log(1+tenders_count)` constant confirms both
bid-level signs at *p* &lt; 10&minus;3. The signature matches R2
credible cover bidding rather than R1 textbook
deliberately-uncompetitive cover bidding.

### Robustness to the enforcement record

Dropping all 31,447 CADE-involved tender-items and re-estimating
the within-PBU baseline yields &beta;&#x0302; = 0.062 (vs
full-sample 0.064). The construct's price imprint operates
independently of the enforcement record.

---

## The Architectural Test

The screening statistic and the bid-distribution moment battery
are informational complements, not substitutes. On the same
evaluation pool of 11,676 always-loser firms with full Imhof
features (193 cobidders, base rate 0.0165):

| Rule | AUC | Bid-microdata firms required |
|---|---|---|
| Award-layer screen alone (FL log_tc) | 0.881 | **0** |
| Bid-layer Imhof full pipeline alone | 0.846 | 11,676 |
| Joint single-model scoring | **0.942** (Δ = +0.096, DeLong *p* = 1.2 × 10&minus;26) | 11,676 |
| Sequential gatekeeper (FL → Imhof, K₁ = 2,000) | 0.94 (effective) | **2,000** |

At top-1,000 flags, the sequential rule catches 131 of 193
adjudicated cobidders (recall 0.679) while interrogating bid
microdata for 2,000 firms instead of 11,676---an 83% footprint
reduction whose relative recall robustness survives the
temporal-holdout audit.

---

## Software and Estimation

| Component | Specification |
|---|---|
| Languages | R 4.5+, Python 3.11, LaTeX |
| Fixed effects | `fixest` (12 threads) |
| Data | `data.table` + `arrow` (Parquet) + DuckDB for bid-level joins |
| Tables | `modelsummary` + `kableExtra` |
| Figures | `ggplot2` |
| Clustering | Item level (baseline); PBU and two-way Cameron&ndash;Miller robustness |
| Pipeline | Master script `00_master.R`; replication notes in [Replication](replication.md) |
