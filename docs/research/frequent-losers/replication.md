---
paper: frequent-losers
---

# Replication

Everything is reproducible---from raw data to final PDF. Start here.

---

## Replication Package

The replication package contains all code, processed datasets, and manuscript sources needed to reproduce every table and figure from scratch.

!!! info "Repository Structure"
    The replication materials are organized under `papers_finais/paper1_screening/`. The `code/` directory contains the analysis pipeline, `manuscript/v4/` the LaTeX source, and `output/` the generated tables and figures.

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
| `survival` | latest | Cox proportional hazards |

### Manuscript

| Software | Version | Purpose |
|----------|---------|---------|
| **LaTeX** | TeX Live 2024+ | Document typesetting |
| `elsarticle` | latest | Journal document class |
| `chicago` | latest | Bibliography style (natbib) |

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
cd papers_finais/paper1_screening
Rscript code/00_master_v4.R
```

This executes 22 scripts sequentially, plus `figures_new.R` for the v5 figures:

| Script | Purpose | Key Output |
|--------|---------|------------|
| `00_setup.R` | Package loading, thread config, paths | Environment setup |
| `01_data_prep.R` | Load Parquets, merge, filter | `/tmp/p3v4_prepared.rds` |
| `02_network_analysis.R` | Co-bidding networks, FL classification | Network metrics |
| `03_iv_construction.R` | Build leave-one-out instrument | IV variables |
| `04_iv_regressions.R` | 2SLS, balance tests, placebo IV | `tab_iv_main.tex`, `tab_iv_balance.tex` |
| `05_main_regressions.R` | OLS, network split, interactions | `tab_prices.tex`, `tab_network_split.tex` |
| `06_bajari_ye_test.R` | Exchangeability, independence, placebo | `tab_bajari_ye_corrected.tex` |
| `07_mechanism_tests.R` | Selection, calibration, reverse causality | `tab_mechanisms.tex` |
| `08_did_revised.R` | Callaway & Sant'Anna, Rambachan--Roth | `tab_did_revised.tex` |
| `09_cade_permutation.R` | CADE cross-match, permutation test | `tab_cade_permutation.tex` |
| `10_robustness.R` | Threshold, matching, clustering, CV | Multiple tables |
| `11_welfare_bounds.R` | Cost-benefit calculations | `tab_welfare_bounds.tex` |
| `12_tables.R` | Compile publication-ready tables | All `.tex` tables |
| `13_figures.R` | Generate all figures | All `.pdf` figures |
| `14_quality_checks.R` | Consistency diagnostics | Validation logs |
| `15_fl_definition_robustness.R` | Low-win-rate variants, cross-fit | `tab_fl_lowwinrate.tex` |
| `16_regime_test.R` | Regime 1 vs 2 simulation and BIC | `tab_structural_params.tex` |
| `17_stacked_did.R` | Stacked DiD estimator | `tab_stacked_did.tex` |
| `18_oster_delta.R` | Oster coefficient stability | `tab_oster_delta.tex` |
| `19_dyadic_permutation.R` | FL--winner pair permutation test | `tab_dyadic_permutation.tex` |
| `20_cox_survival.R` | Cox proportional hazards model | `tab_cox_survival.tex` |
| `21_network_graph.R` | Network visualization | `fig_network_graph.pdf` |
| `22_threshold_heatmap.R` | 2D threshold sensitivity heatmap | `fig_threshold_heatmap.pdf` |
| `figures_new.R` | Corner solution, dispersion paradox | New v5 figures |

### Step 3: Manuscript Compilation

```bash
cd manuscript/v4
pdflatex -interaction=nonstopmode paper_screening_v4.tex
bibtex paper_screening_v4
pdflatex paper_screening_v4.tex
pdflatex paper_screening_v4.tex
```

!!! note "Bibliography"
    The manuscript uses **natbib/bibtex** (NOT biblatex/biber). Use `bibtex` for the bibliography pass.

---

## Output Files

### Tables

| Directory | Format | Count | Description |
|-----------|--------|-------|-------------|
| `output/tables/` | LaTeX (.tex) | 35+ | All regression tables (booktabs + threeparttable) |

### Figures

| Directory | Format | Count | Description |
|-----------|--------|-------|-------------|
| `output/figures/` | PDF | 26 | All publication-quality figures |

### Manuscript

| File | Pages | Description |
|------|-------|-------------|
| `manuscript/v4/paper_screening_v4.pdf` | ~56 | Complete manuscript with appendix |

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
    The full pipeline takes approximately 8 minutes on the reference system. The most time-intensive steps are `06_bajari_ye_test.R` (bid-level analysis on 40M rows) and `08_did_revised.R` (staggered DiD with 144K market-year observations).

!!! tip "Caching"
    Intermediate data is cached at `/tmp/` for fast reload. The prepared dataset (`/tmp/p3v4_prepared.rds`, ~800 MB) is created by `01_data_prep.R` and reused by all subsequent scripts.
