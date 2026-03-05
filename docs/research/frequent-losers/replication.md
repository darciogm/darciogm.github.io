---
paper: frequent-losers
---

# Replication

This page describes how to replicate the results presented in the paper.

---

## Replication Package

The full replication package includes all code, processed datasets, and manuscript source files needed to reproduce every table and figure in the paper.

!!! info "Repository Structure"
    The replication materials are organized in version-specific directories. The **v4** directory contains the current primary analysis, with **v2** and **v3** containing earlier implementations.

---

## Software Requirements

### Python (Data Build)

| Software | Version | Purpose |
|----------|---------|---------|
| **Python** | 3.10+ | Data preprocessing |
| `pandas` | latest | Data manipulation |
| `pyarrow` | latest | Parquet I/O |

### R (Analysis Pipeline)

| Software | Version | Purpose |
|----------|---------|---------|
| **R** | 4.5+ | Statistical computing |
| `fixest` | latest | High-dimensional fixed effects, IV, Sun & Abraham |
| `data.table` | latest | Fast data manipulation |
| `arrow` | latest | Reading Parquet files |
| `modelsummary` | latest | Regression tables |
| `kableExtra` | latest | LaTeX table formatting |
| `ggplot2` | latest | Publication-quality figures |
| `sensemakr` | latest | Cinelli & Hazlett (2020) sensitivity |
| `did` | latest | Callaway & Sant'Anna (2021) DiD |
| `HonestDiD` | latest | Rambachan & Roth (2023) bounds |
| `MatchIt` | latest | Matching estimators |

### Manuscript

| Software | Version | Purpose |
|----------|---------|---------|
| **LaTeX** | TeX Live 2024+ | Document typesetting |
| `elsarticle` | latest | Journal document class |
| `chicago` | latest | Bibliography style |

---

## Data Sources

### Primary Datasets

The pipeline reads from `data/processed/`:

| File | Rows | Description |
|------|------|-------------|
| `BEC_collapse_final.parquet` | 4.5M | Collapsed tender-item dataset |
| `Firms_final.parquet` | 39.6K | Firm registry (CNPJ, CNAE, size) |
| `LOSERS_rebuilt.parquet` | 85K | FL counts per tender-item |
| `FREQ_PARTICIP_rebuilt.parquet` | 16.8K | Always-losers with participation counts |
| `firm_tender_map.parquet` | 16.8M | Firm x tender participation + won flag |
| `firm_loss_stats.parquet` | 41K | Per-firm aggregated stats |
| `bid_level_full.parquet` | 40M | Raw bid-level data |

### CADE Validation Data

| File | Rows | Description |
|------|------|-------------|
| `cade_carteis_licitacoes_2009_2019.csv` | 65 | CADE cartel convictions |
| `cade_bec_crossmatch.csv` | 49 | CADE firms matched to BEC |
| `cade_fl_cobidders.csv` | 193 | FL firms co-bidding with CADE cartelists |

!!! warning "Data Access"
    The BEC procurement data is publicly available through the Sao Paulo state transparency portal. The processed Parquet files are built from raw Stata `.dta` files via `00_build_bidlevel.py`.

### Key Variables

| Variable | Description |
|----------|-------------|
| `losers` | FL presence indicator (1 = at least one FL bidder) |
| `lneg_price` | Log negotiated price (DV) |
| `ln_firms` | Log number of firms |
| `ln_bids` | Log number of bids |
| `ln_firms_excl` | Log number of non-FL firms |
| `fl_supply_loo` | Leave-one-out FL supply instrument |
| `item_f` | Item fixed effect |
| `year_f` | Year fixed effect |
| `pbu_f` | PBU fixed effect |
| `convite` | Procurement modality indicator |

---

## Running the Analysis

### Step 1: Data Build (Python, ~6 min)

```bash
# Only needed if Parquet files are missing
cd paper3-frequent-losers
python3 scripts/00_build_bidlevel.py
```

### Step 2: Full R Pipeline (~8 min on 16 cores)

```bash
Rscript v4/code/00_master.R
```

This executes 13 scripts sequentially:

| Script | Purpose | Key Output |
|--------|---------|------------|
| `01_data_prep.R` | Load Parquets, merge, filter | `/tmp/p3_prepared.rds` |
| `02_network_analysis.R` | Co-bidding networks, FL classification | Network metrics |
| `03_cade_validation.R` | CADE cross-match, permutation test | `tab_cade_permutation.tex` |
| `04_iv_regressions.R` | 2SLS, balance tests, placebo IV | `tab_iv_main.tex` |
| `05_main_regressions.R` | OLS, network split, interactions | `tab_prices.tex` |
| `06_bajari_ye_test.R` | Exchangeability, independence, placebo | `tab_bajari_ye.tex` |
| `07_mechanisms.R` | Selection, calibration, reverse causality | `tab_mechanisms.tex` |
| `08_did_revised.R` | Callaway & Sant'Anna, Rambachan--Roth | `tab_did_revised.tex` |
| `09_regime_test.R` | Regime 1 vs 2 simulation | `tab_regime_test.tex` |
| `10_robustness.R` | Threshold, matching, clustering, CV | Multiple tables |
| `11_welfare_bounds.R` | OLS/IV/cross-fit welfare estimates | `tab_welfare_bounds.tex` |
| `12_tables.R` | Compile publication-ready tables | All `.tex` tables |
| `13_figures.R` | Generate all figures | All `.pdf` figures |

### Step 3: Manuscript Compilation

```bash
cd v4/manuscript
pdflatex -interaction=nonstopmode paper_v4.tex
bibtex paper_v4
pdflatex paper_v4.tex
pdflatex paper_v4.tex
```

---

## Output Files

### Tables

| Directory | Format | Count | Description |
|-----------|--------|-------|-------------|
| `v4/output/tables/` | LaTeX (.tex) | 35 | All regression tables (booktabs + threeparttable) |

### Figures

| Directory | Format | Count | Description |
|-----------|--------|-------|-------------|
| `v4/output/figures/` | PDF | 17 | All publication-quality figures |

### Manuscript

| File | Pages | Description |
|------|-------|-------------|
| `v4/manuscript/paper_v4.pdf` | 59 | Complete manuscript with appendix |

---

## Computational Environment

| Component | Specification |
|-----------|--------------|
| **OS** | Ubuntu 24.04 (WSL2 on Windows) |
| **CPU** | 16 cores |
| **RAM** | 15 GB |
| **R** | 4.5 |
| **fixest** | OpenMP for parallel estimation (16 threads) |
| **data.table** | Multi-threaded (`setDTthreads(16)`) |

!!! note "Runtime"
    The full pipeline (`00_master.R`) takes approximately 8 minutes on the reference system. The most time-intensive steps are `06_bajari_ye_test.R` (bid-level analysis on 40M rows) and `08_did_revised.R` (staggered DiD with 144K market-year observations).

!!! tip "Caching"
    Intermediate data is cached at `/tmp/` for fast reload. The prepared dataset (`/tmp/p3_prepared.rds`, ~800 MB) is created by `01_data_prep.R` and reused by all subsequent scripts.
