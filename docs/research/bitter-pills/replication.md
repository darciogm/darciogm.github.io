---
paper: bitter-pills
---

# Replication

This page describes how to replicate the current results. The active version of
the paper is **v9-jpube-short** (JPubE short paper, May 2026): *Sourcing under
Sanctions: Judicial Urgency and Pharmaceutical Procurement Costs.*

---

## Repository Structure

```
paper1-bitter-pills/
├── v9-jpube-short/             # ACTIVE (JPubE short paper)
│   ├── analysis/               # R + Python scripts (40_… 54_…) + _macros.R
│   ├── manuscript/paper/       # main.tex, OnlineAppendix.tex, *.tex sections, values.tex
│   ├── output/figures/         # vector PDFs (sourcing-vs-pricing, event study, …)
│   ├── output/tables/          # generated .tex / .csv tables
│   ├── build_v9.sh             # regenerate outputs + compile main + appendix
│   └── V9_CHANGELOG.md         # detailed build and revision log
├── v8-sourcing-reframe/        # frozen — earlier sourcing reframe
├── v7-r2round1/                # frozen — referee R2 round 1 baseline
├── v4/                         # legacy R pipeline (prepares the input data cache)
├── docs/                       # MkDocs site source (this site)
└── deploy.sh                   # build site + push to darciogm.github.io
```

The **v4 pipeline** prepares the input data cache (`/tmp/v4_prepared.rds`) used
by the v9 analysis scripts; v9 builds analysis on top of that prepared dataset
rather than re-deriving it from raw BEC.

---

## Software Requirements

### Primary Analysis (R + Python)

| Package | Purpose |
|---------|---------|
| `R` 4.5+ | Statistical computing |
| `fixest` | High-dimensional fixed-effects estimation (`lean=TRUE` default) |
| `data.table` | Fast data manipulation |
| `ggplot2` | Publication figures (grayscale, serif) |
| `arrow` / `duckdb` | Parquet I/O (DuckDB is the default engine for parquet) |
| `Python` 3 + `duckdb` / `pyarrow` | Classifier macros and presentation tables |

Lee trimming bounds and the Rademacher wild-cluster bootstrap are implemented
manually in the v9 scripts. `HonestDiD` requires `CVXR`/`clarabel` system deps;
where unavailable, the Honest-DiD sensitivity is computed as a manual
linear-extrapolation fallback that produces the same diagnostic verdict.

### Manuscript

| Tool | Purpose |
|------|---------|
| TeX Live 2024+ | LaTeX typesetting |
| `elsarticle` | Journal class (review format) |
| `natbib` + `bibtex` | Bibliography (NOT biblatex/biber in this project) |
| `booktabs` + `threeparttable` | Tables |

---

## Data Sources

**BEC-G65** — bid-level pharmaceutical procurement on the São Paulo state
electronic procurement platform.

| Feature | Description |
|---------|-------------|
| Source | Bolsa Eletrônica de Compras (BEC), São Paulo state |
| Coverage | Pharmaceutical purchases (BEC Group 65) |
| Period | January 2009 – December 2019 |
| Observations | 479,330 purchase-offer-item observations |
| Regimes | Ordinary; Administrative urgent; Litigated urgent |

The classifier operates at the purchase-order/tender-notice level; the empirical
analysis is at the purchase-offer-item level after classified regimes are linked
to BEC item records. Price regressions use accepted winning bids. The processed
dataset is included in the replication package; raw BEC data is publicly
available through the São Paulo state transparency portal.

### Selection and the Lee bounds

The administrative urgent channel is selected and larger — the closest feasible
urgent-procurement comparison, not a randomized one. The Lee trimming bounds
discipline that selection: within item × year × PBU strata the overrepresented
administrative group is trimmed from the high and low tails of its price
distribution, producing lower and upper bounds for the litigated-over-
administrative gap under a monotonicity restriction. A parametric (Heckman-type)
selection correction is non-informative in this design and is reported only as a
diagnostic.

---

## Pipeline

The v9 analysis runs on top of the v4 prepared cache. The numbered scripts emit
macros into `manuscript/paper/values.tex`, which the LaTeX manuscript reads.

```bash
# 1. Prepare input data (one-off; ~1 minute)
Rscript v4/analysis/00_prepare_data.R

# 2. Regenerate outputs and compile (one command)
./v9-jpube-short/build_v9.sh
```

`build_v9.sh` runs the analysis scripts — among them
`40_utg_lee_bounds.R` (Lee bounds), `43_rambachan_roth.R` (BJS event study +
Honest-DiD), `44_wild_bootstrap.R` (Rademacher wild-cluster bootstrap),
`45_reconciliation.R` (pricing-vs-sourcing decomposition),
`46_procurement_cost_bound.R` (fiscal procurement-cost calculation),
`48_mechanism_evidence.R` (within firm-buyer-item pricing, winner switching,
aggregation), and the Python classifier/table layer
(`49_classifier_macros.py`, `50_v9_outputs.py`, `54_sample_flow_diagnostics.py`)
— checks required outputs, and compiles `main.pdf` and `OnlineAppendix.pdf`.

Each numbered script emits a block into `values.tex` (delimited by auto-markers).
The manuscript reads those macros — every numerical claim, table input, and
figure path is regenerated by the script that owns it. **No hardcoded numerals
in the manuscript.**

---

## Output Files

| Path | Content |
|------|---------|
| `v9-jpube-short/output/figures/` | Vector PDFs: pricing-vs-sourcing decomposition, BJS event study, Honest-DiD sensitivity, quantity-ratio density |
| `v9-jpube-short/output/tables/` | Generated `.tex` tables: combined urgent-margins-and-Lee-bounds, within firm-buyer-item robustness, winner switching, placebo, dynamic sensitivity, procurement cost, classifier validation, sample construction, and more |
| `v9-jpube-short/manuscript/paper/main.pdf` | Compiled main paper (17 pp, JPubE short-paper review format) |
| `v9-jpube-short/manuscript/paper/OnlineAppendix.pdf` | Compiled Online Appendix (5 pp) |

---

## Computational Environment

The analysis was developed and tested on **DarcioWork** (a WSL2 development
workstation):

| Component | Specification |
|-----------|---------------|
| OS | Ubuntu (WSL2 on Windows) |
| CPU | Intel i7-1260P (12 cores / 14 threads visible to WSL2) |
| RAM | 21 GB |
| GPU | None (CPU-only) |
| R | 4.5 |
| `fixest` threads | `setFixest_nthreads(12)` |
| DuckDB threads | `PRAGMA threads=12; PRAGMA memory_limit='14GB'` |

!!! note "Reproducibility"
    Scripts that draw random numbers (bootstrap) set explicit seeds. Re-running
    the pipeline produces identical `values.tex` macro blocks, and a
    LaTeX-only rebuild reproduces both PDFs without changing any estimate.
