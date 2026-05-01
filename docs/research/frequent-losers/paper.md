---
paper: frequent-losers
---

# Manuscript

How we built the construct, what it claims, and why it works on a data envelope existing detectors cannot use.

---

## Contribution

The paper makes three contributions, ordered by what we sell hardest.

1. **Deployable.** The frequent-loser construct is computed entirely from contract-award records&mdash;winner identity, participant identity, item identifier&mdash;at near-zero marginal data cost. We translate it into a three-stage administrative pathway (Screen, Triage, Forensic) that oversight bodies can deploy in jurisdictions where bid microdata are not centrally collected.

2. **Empirically grounded.** Within-item, within-year, within-procuring-unit comparisons across 1,654,401 tender-items associate frequent-loser presence with a **+3.6 to +7.7%** higher negotiated unit price across five estimators. The price gap collapses monotonically across procuring-unit-size quartiles to a **12.6&times;** gradient&mdash;the strongest source of heterogeneity in the data.

3. **Theoretically grounded.** We derive the construct from a separating-equilibrium framework with cover bidders and genuine entrants, under which `log(1+tenders_count)` is a sufficient ranking statistic for the cover-bidder type given award-record data, and the bright-line filter `wins=0` is the equilibrium choice of cover bidders themselves.

**What we do not claim.** Identification is descriptive throughout. The conditional price gap is not a causal estimate of cover bidding's effect on prices. The construct flags cover bidders, not cartel ringleaders: against 47 direct CADE defendants in the broader BEC firm universe, AUC is 0.49 by design. Capacity-transfer and market-intelligence motives remain observationally compatible at the firm level.

---

## Institutional Background

### BEC Platform

The **Bolsa Eletrônica de Compras (BEC)** is São Paulo state's centralized electronic procurement platform, used by 1,308 procuring units (PBUs) from 2009 to 2019. Two procurement modalities dominate the sample:

| Modality | Format | Key feature |
|---|---|---|
| **Convite** | Sealed-bid invitation | Lei 8.666/93, Art. 22; statutory minimum of three qualified bidders |
| **Pregão** | Electronic reverse auction | Lei 10.520/2002; no minimum-bidder requirement |

### Modal contrast as institutional context, not exploited channel

The two modalities provide a within-platform institutional contrast. The construct's empirical signal does *not* match a minimum-bidder-rule reading: the price imprint and the discrimination of adjudicated CADE-cobidder firms are sharper in pregão (no minimum-bidder rule) than in convite. We present the convite statute as institutional context rather than as the channel the construct exploits.

### Lei 14.133/2021

Brazil's new procurement law consolidates pregão-style electronic auctions as the institutional default. Because the construct's signal-to-noise is highest in pregão environments, the policy direction is favorable to the construct's portability, not adversarial.

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

16,843 firms with win rate = 0 across all 2009&ndash;2019 BEC tenders.

### Step 2 &mdash; IQR threshold

Among always-losers, compute median + 1.5 &times; IQR of participation counts &asymp; 14 tenders. Firms above this threshold are classified as frequent losers.

**Result: 2,735 frequent-loser firms (16.2% of always-losers).**

The treatment variable is `losers = 1` if a tender-item has at least one frequent-loser participant. Frequent-loser presence occurs in 4.8% of analysis-sample tenders.

---

## Conceptual Framework

The framework is an organizing device, not the source of identification. Three formal results anchor the construct (proofs in the appendix):

| # | Result | Role |
|---|---|---|
| Lemma 1 | `wins=0` is the equilibrium choice of the cover-bidder type | Establishes the bright-line filter as the empirical separating condition |
| Proposition 1 | `log(1+tenders_count)` is a sufficient ranking statistic for cover-bidder type given award-record data | Establishes the continuous primitive; the binary FL14 rule is its information-coarsening |
| Proposition 2 | &part;m*/&part;&theta;<sub>k</sub> < 0 | Generates the comparative static the procuring-unit-size oversight gradient instantiates |

Cover bidders are firms a cartel deploys to fill participant slots without intending to win. They satisfy two equilibrium conditions: their bid is above the designated winner's bid (`wins=0` in equilibrium), and their participation rate exceeds that of genuine entrants (because the cartel demands cover, while genuine entry does not respond to that demand). The construct flags this footprint.

---

## Empirical Strategy

### Reduced-form specification

$$y_{igt} = \beta \cdot \mathrm{losers}_{igt} + \mathbf{x}_{igt}' \boldsymbol{\delta} + \alpha_g + \lambda_t + \gamma_k + \varepsilon_{igt}$$

where `y_{igt}` is the log negotiated unit price for tender-item *i* in item group *g* at time *t* and procuring unit *k*; &alpha;<sub>g</sub>, &lambda;<sub>t</sub>, &gamma;<sub>k</sub> are item, year, and procuring-unit fixed effects; errors clustered at item level.

**Four specifications:** general within-item-and-year, within-PBU, pregão-only, convite-only.
**Four estimators:** OLS, IPW, CEM matching, cross-fit (odd/even years).

### Heterogeneity specifications

The procuring-unit-size quartile split anchors the oversight gradient (the strongest result). The HHI &times; repeated-pair density grid characterizes whether the conditional price gap varies across cells; we adopt the cell interpretation as descriptive scope, not as a positive test of cartel-rotation predictions.

### Identifying stance

Identification is descriptive throughout. Two design-based strategies that would extract a causal estimate return null at the available bandwidths: a sharp regression discontinuity at the convite/pregão statutory caps (gated by the absence of bunching) and a difference-in-differences using the 2018 cap raise (gated by parallel-trends failure). We report the failures openly. The descriptive claim is calibrated through four identification audits&mdash;Cinelli robustness value, Oster &delta;, strict-overlap matching, anti-leakage audit&mdash;and a placebo specification using sub-threshold always-losers as instrument.

---

## Validation Against CADE Adjudications

### Setup

CADE's procurement-cartel portfolio relevant to the sample comprises 12 adjudicated cases covering 65 firm-defendants in total, of which **47** are active in BEC during the sample window. Eight of the twelve cases were adjudicated after 2019, so the construct's discrimination was computed on participation patterns observable years before enforcement confirmed those patterns.

### Two ground-truth populations

| Population | Size | Who | Construct target? |
|---|---|---|---|
| Direct defendants | 47 | Firms named in CADE rulings as cartel members | **No** (typically frequent winners; AUC 0.49 by design) |
| Cobidders | 193 | Always-loser firms that participated alongside direct defendants in BEC tenders | **Yes** (cover-bidder candidates by structure) |

### Bounds on discrimination

| Reading | Sample | AUC |
|---|---|---|
| Lower bound (contemporaneous) | 4 cases adjudicated pre-2020, 210 cobidders, 108 frequent losers | **0.748** [0.713, 0.783] |
| Upper bound (prospective) | Full 12 cases, 193 cobidders | **0.924** [0.921, 0.926] (in-sample); **0.864** [0.859, 0.870] (temporal holdout) |

Both readings answer different questions. We adopt the prospective reading as the headline (deployable projection) and the contemporaneous reading as the conservative discriminating reference.

### Robustness to the enforcement record

Dropping all 31,447 CADE-involved tender-items and re-estimating the within-PBU baseline yields &beta;&#x0302; = 0.062 (vs full-sample 0.064). The construct's price imprint operates independently of the enforcement record.

---

## Software and Estimation

| Component | Specification |
|---|---|
| Languages | R 4.5+, Python 3.11, LaTeX |
| Fixed effects | `fixest` (16 threads) |
| Data | `data.table` + `arrow` (Parquet) |
| Tables | `modelsummary` + `kableExtra` |
| Figures | `ggplot2` |
| Clustering | Item level (baseline); PBU and two-way Cameron&ndash;Miller robustness |
| Pipeline | Master script `00_master.R`; replication archive available upon publication |
