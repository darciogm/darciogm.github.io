---
paper: beneath-surface
---

# Changelog

---

## v1.2 --- April 7, 2026 (bold-thesis pivot)

**Strategic decision:** after consolidating every cartel-detection screen produced by the Track A pipeline into a unified table (script `22_consolidate_screens.py`, [commit `92055e6`](https://github.com/darciogm/bitter-pills/commit/92055e6)), the empirical picture sharpened enough to justify a substantive reframe of the paper. Author and coauthors (Galletta, Giommoni) approved the new direction on 2026-04-07.

**The new headline finding:**

Classical detection screens (variance, CV, n_firms, Kawai-style RDD) systematically misfire in this developing-country procurement setting --- when they detect a signal at all, they frequently do so with magnitudes or signs *opposite* to those predicted by canonical bid-rotation theory. In contrast, network-based screens built from worker-flow and co-bidding overlap reach AUCs above 0.80 against the same CADE ground truth.

**Three money numbers from the multi-screen consolidated table:**

- **Pair-matched LISTED (n=107 pregão auctions where both winner and runner-up are CADE-convicted cartel firms):** classical screens are statistically significant but with *positive* signs --- `cv_bid` Δ=+0.107 (p=0.012, AUC=0.605); `spread` Δ=+0.286 (p=0.020, AUC=0.625); `n_firms` Δ=+0.819 (p=0.003, AUC=0.628). The positive signs are inconsistent with the variance-compression prediction of inner-circle bid rotation and consistent with hub-and-spoke and cover-bidding patterns documented in 5 of the 7 SP cartels in our ground truth.
- **Cartel-active broad sample (n≈2,300--3,900 pregão auctions during cartel period):** network screens crush classical screens. `shared_workers` AUC=0.825 vs. `cv_bid` AUC=0.484; `jaccard` AUC=0.815 vs. `spread` AUC=0.476.
- **Within-period strict subsample (n=10--14 auctions):** all screens are underpowered, documenting empirically the cost of restricting to the "purest" head-to-head comparison.

**Revised abstract** (sent to SIOE OC ahead of the 2026-07-01 deadline):

> This study leverages convictions from Brazil's antitrust authority (CADE) as ground truth to validate a Regression Discontinuity design inspired by Kawai (2023) and a portfolio of complementary detection screens, applied to 3.8 million public procurement auctions conducted in São Paulo, Brazil. By comparing narrowly winning and losing bids within auctions involving convicted cartel members, we identify statistically significant signals across multiple screen families---but with magnitudes and signs that diverge sharply from those predicted by canonical bid-rotation theory. Network-based screens (worker-flow and co-bidding overlap) substantially outperform classical variance and incumbency screens, achieving AUCs above 0.80 against AUCs near chance for variance-based detectors. Our findings highlight that in developing countries, anti-competitive behaviors---even when unrelated to explicit corruption---generate detection signatures distinct from those documented in advanced economies, with direct implications for the design of antitrust screening programs in emerging markets.

**12-week roadmap to the SIOE 2026-07-01 deadline:** within-pair robustness on the 107 pair-matched (weeks 1--3) → Introduction and Methodology rewrites (weeks 4--5) → Results and Tables (weeks 6--7) → Background, Literature review and Conclusion (weeks 8--9) → coauthor iteration and slide deck (weeks 10--11) → submission (week 12). Three escape hatches built in: if the inverted-sign signal does not survive robustness, the paper falls back to a hybrid framing that preserves the network-screen contribution as a secondary finding.

The v1.1 framing (worker-flow as a *complement* to the original incumbency/last-bid story) is now superseded. The new framing places the network-vs-classical contrast at the center.

---

## v1.1 --- April 2026 (extension in progress)

**Conference acceptance:**

- :material-trophy: **Accepted for presentation at [SIOE 2026](https://www.sioe.org/conference/2026)** (Society for Institutional & Organizational Economics), INSEAD Fontainebleau, July 13–15 2026

**Working-paper extension toward the SIOE presentation:**

Ahead of the SIOE presentation and the eventual journal revision, the empirical strategy is being extended with a new hidden-coordination screen based on firm-to-firm worker-flow networks, evaluated against a CADE cartel ground-truth database.

- **Worker-flow network screen (novel):** residual AUC of **0.76** (pregão) and **0.72** (convite) within same CNAE-2dig sector, after controlling for the co-bidding baseline, in the 2012–2015 treatment window
- **Co-bidding baseline (designated-rotation signature):** AUC of **0.25** (pregão) and **0.29** (convite) --- strongly *below* chance, consistent with mature cartels avoiding joint bids in close-margin auctions and substituting observable coordination with hidden labor-market ties
- **CADE ground truth:** 35 SP firms across 7 cartel processes, cartel periods audited against CADE primary sources (per-process citations documented)
- **Rolling-window edges (look-ahead correction):** firm-to-firm worker-flow network rebuilt with year-specific backward windows $[2009, t-1]$, eliminating the forward-looking contamination present in snapshot approaches
- **Last-bid effect retained:** the +7.94 pp last-bid discontinuity remains the primary RDD finding, robust to clustering
- **Incumbency effect moved to appendix:** the incumbency RD is fragile to clustering and is now reported as a balance check rather than a main result

The extension is framed as a mechanism substitution: the original paper documented *that* close-bid SP auctions exhibit anomalous patterns; the v1.1 extension documents *how* coordination is organized when cartel firms meet head-to-head.

Current analysis pipeline: scripts 12–21 in `paper4-thresholds/03_analysis/`, commit [`01ab0c5`](https://github.com/darciogm/bitter-pills/commit/01ab0c5).

---

## v1.0 --- April 2026

**Initial site deployment:**

- Full research site: summary, paper, results, robustness, replication, authors
- Main estimates: incumbency advantage (1.8 pp), last-bid effect (6.4 pp)
- R replication pipeline: `01_replicate_estimates.R`, `02_rdd_validity_tests.R`
- RAIS-BEC firm linkage: `linkage_rais_bec.py` (95.8% match rate)
- RAIS harmonization fix: recovered `sexo` and `idade` for 2009-2010
- Manuscript under review at *International Journal of Industrial Organization*

---

## Paper History

| Version | Date | Event |
|:--------|:-----|:------|
| First draft | July 2024 | Initial version |
| LACEA presentation | October 2024 | Conference presentation |
| ETH v1 | Late 2024 | Revised after feedback |
| ETH v2 / paper_beneath | Early 2025 | Current manuscript version |
| IJIO submission | 2025 | Submitted for review |
| v1.1 extension (in progress) | April 2026 | Worker-flow network screen + CADE ground truth |
| SIOE 2026 | July 2026 | Conference presentation at INSEAD Fontainebleau |
