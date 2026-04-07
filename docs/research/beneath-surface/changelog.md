---
paper: beneath-surface
---

# Changelog

---

## v1.1 --- April 2026 (R1 response in progress)

**Conference acceptance:**

- :material-trophy: **Accepted for presentation at [SIOE 2026](https://www.sioe.org/conference/2026)** (Society for Institutional & Organizational Economics), INSEAD Fontainebleau, July 13–15 2026

**R1 revision in progress for *International Journal of Industrial Organization*:**

The R1 revision substantially extends the empirical strategy with a new hidden-coordination screen based on firm-to-firm worker-flow networks, evaluated against a CADE cartel ground-truth database.

- **Worker-flow network screen (novel):** residual AUC of **0.76** (pregão) and **0.72** (convite) within same CNAE-2dig sector, after controlling for the co-bidding baseline, in the 2012–2015 treatment window
- **Co-bidding baseline (designated-rotation signature):** AUC of **0.25** (pregão) and **0.29** (convite) --- strongly *below* chance, consistent with mature cartels avoiding joint bids in close-margin auctions and substituting observable coordination with hidden labor-market ties
- **CADE ground truth:** 35 SP firms across 7 cartel processes, cartel periods audited against CADE primary sources (per-process citations documented)
- **Rolling-window edges (look-ahead correction):** firm-to-firm worker-flow network rebuilt with year-specific backward windows $[2009, t-1]$, eliminating the forward-looking contamination present in snapshot approaches
- **Last-bid effect retained:** the +7.94 pp last-bid discontinuity remains the primary RDD finding, robust to clustering
- **Incumbency effect moved to appendix:** the incumbency RD is fragile to clustering and is now reported as a balance check rather than a main result

The R1 response treats these extensions as a mechanism substitution: the original paper documented *that* close-bid SP auctions exhibit anomalous patterns; the R1 revision documents *how* coordination is organized when cartel firms meet head-to-head.

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
| R1 response (in progress) | April 2026 | Addressing referee report + worker-flow network extension |
| SIOE 2026 | July 2026 | Conference presentation at INSEAD Fontainebleau |
