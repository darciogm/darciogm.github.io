# Replication

This page describes how to replicate the results presented in the paper.

---

## Replication Package

The full replication package includes all code, processed datasets, and manuscript source files needed to reproduce every table and figure in the paper.

!!! info "Repository Structure"
    The replication materials are organized in version-specific directories. The **v4** directory contains the current primary analysis in R, while **v2** and **v3** contain legacy Stata implementations.

---

## Software Requirements

### Primary Analysis (v4 -- R)

| Software | Version | Purpose |
|----------|---------|---------|
| **R** | 4.5+ | Statistical computing |
| `fixest` | latest | High-dimensional fixed effects estimation |
| `data.table` | latest | Fast data manipulation |
| `modelsummary` | latest | Regression tables |
| `ggplot2` | latest | Publication-quality figures |
| `arrow` | latest | Reading Parquet files |

Additional R packages: `kableExtra`, `sandwich`, `lmtest`, `broom`, `scales`, `sf`, `viridis`.

### Legacy Analysis (v2/v3 -- Stata)

| Software | Version | Purpose |
|----------|---------|---------|
| **Stata/SE** | 17+ | Statistical computing |
| `reghdfe` | latest | High-dimensional fixed effects |
| `ftools` | latest | Fast Stata tools |

### Manuscript

| Software | Version | Purpose |
|----------|---------|---------|
| **LaTeX** | TeX Live 2024+ | Document typesetting |
| `elsarticle` | latest | Journal document class |
| `chicago` | latest | Bibliography style |

---

## Data Sources

### Primary Dataset

**BEC-G65-WORK1.parquet**

- **Source:** Bolsa Eletronica de Compras (BEC), Sao Paulo state electronic procurement platform
- **Format:** Apache Parquet (~125 MB)
- **Observations:** 479,330 bids
- **Variables:** 180 columns
- **Coverage:** All bids for BEC Group 65 (medical, dental, and hospital supplies), January 2009 -- December 2019
- **Unit:** Bid level (firm x item x procurement event)

!!! warning "Data Access"
    The BEC procurement data is publicly available through the Sao Paulo state transparency portal. The processed dataset used in the analysis is included in the replication package.

### Key Variables

| Variable | Description |
|----------|-------------|
| `purchase_type` | 0 = Ordinary, 1 = Administrative, 2 = Litigated |
| `bid_price_ref` | Reference price (maximum the government will pay), in BRL |
| `bid_price` | Negotiated (final) bid price, in BRL |
| `bid_qty` | Quantity demanded in tender notice |
| `n_firms_bids` | Number of distinct firms submitting bids |
| `po_item_winner` | Tender success indicator (1 = successful purchase) |
| `item_id` | Product identifier (used for item FE) |
| `pbu_code` | Public buyer unit code (used for PBU FE and clustering) |
| `year_n` | Year (used for time FE) |

A full data dictionary is available in the replication package (`DATA_DICTIONARY.md`).

---

## Running the Analysis

### Quick Start (v4 -- R)

```bash
# 1. Clone the repository and navigate to the project
cd paper1-bitter-pills

# 2. Run the full v4 pipeline (~5 minutes on 16 cores)
Rscript v4/run_all.R
```

This single command executes all analysis scripts in sequence:

1. `00_prepare_data.R` -- Load and prepare the dataset (cached at `/tmp/v4_prepared.rds`)
2. `01_desc_stats.R` -- Descriptive statistics
3. `02_balance_table.R` -- Balance table for urgent subsample
4. `03_main_regressions.R` -- Main regression tables (4 FE specs x 3 clustering variants)
5. `04_heterogeneity.R` -- Heterogeneous effects analysis
6. `05_fiscal_costs.R` -- Fiscal cost estimates
7. `06_robustness.R` -- Robustness checks (120+ regressions)
8. `07_graphs.R` -- Generate all figures
9. `08_pub_tables.R` -- Publication-ready LaTeX tables
10. `09_pub_figures.R` -- Publication-ready PDF figures

### Running Individual Scripts

```bash
# Must run data preparation first
Rscript v4/analysis/00_prepare_data.R

# Then any individual analysis script
Rscript v4/analysis/03_main_regressions.R
Rscript v4/analysis/07_graphs.R
```

### Legacy Analysis (Stata)

```bash
# Install required Stata packages
stata-se -b -q do v2/analysis/install_packages.do

# Run the v3 pipeline
bash v3/analysis/run_all.sh
```

---

## Output Files

### Tables

| Directory | Format | Count | Description |
|-----------|--------|-------|-------------|
| `v4/pub/tables/` | LaTeX (.tex) | 17 | Publication-ready tables (booktabs + threeparttable) |
| `v4/manuscript/` | LaTeX (.tex) | 59 | Full regression tables (tabularray format) |
| `v4/results/` | HTML (.html) | 59 | Browser-viewable tables |

### Figures

| Directory | Format | Count | Description |
|-----------|--------|-------|-------------|
| `v4/pub/figures/` | PDF | 8 | Publication-ready figures (grayscale, 6.5 x 4 in) |
| `v4/graphs/` | PDF | 8 | Color figures for presentations |

### Manuscript

```bash
# Compile the manuscript
cd v5/manuscript/paper
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

---

## Computational Environment

The analysis was developed and tested on the following system:

| Component | Specification |
|-----------|--------------|
| **OS** | Ubuntu 24.04 (WSL2 on Windows) |
| **CPU** | 16 cores |
| **RAM** | 15 GB |
| **R** | 4.5 |
| **fixest** | Uses OpenMP for parallel estimation (16 threads) |

!!! note "Runtime"
    The full v4 pipeline (`run_all.R`) takes approximately 5 minutes on the reference system. The most time-intensive step is the robustness analysis (`06_robustness.R`), which estimates 120+ regressions across three winsorization levels.

---

[:material-arrow-left: Back to Bitter Pills Summary](index.md) · [:material-book-open-variant: Back to Research](../working-papers.md)
