---
paper: frequent-losers
---

# Replication

This page describes how to reproduce every table and figure in the paper.

---

## Replication Package

The package contains all code, processed datasets, and manuscript source
files needed to reproduce the results. The pipeline runs in two stages: a
Python data build that produces the analysis Parquets once, and an R
analysis pipeline driven by a single master script.

!!! info "Repository structure"
    Materials live under `paper3-frequent-losers/`. `scripts/` contains the
    Python build and the numbered R pipeline; `data/processed/` holds the
    Parquet inputs (git-ignored); `output/tables/` and `output/figures/`
    hold generated artifacts; the submission-clean manuscript source is in
    `work/v20-editor/submission_clean/`.

---

## Software Requirements

### Python (data build)

| Software | Version | Purpose |
|----------|---------|---------|
| **Python** | 3.12 | Data preprocessing |
| `pandas` / `pyarrow` | latest | Parquet I/O |
| `duckdb` | latest | Out-of-core joins and aggregation |

### R (analysis pipeline)

| Software | Version | Purpose |
|----------|---------|---------|
| **R** | 4.5+ | Statistical computing |
| `fixest` | latest | High-dimensional fixed effects (OpenMP, 12 threads) |
| `data.table` + `arrow` | latest | Fast manipulation and Parquet reads |
| `duckdb` | latest | Joins and aggregation over Parquet |
| `modelsummary` + `kableExtra` | latest | LaTeX regression tables |
| `ggplot2` | latest | Publication-quality figures |
| `pROC` | latest | AUC and DeLong tests |
| `sensemakr` | latest | Cinelli & Hazlett (2020) sensitivity |
| `MatchIt` | latest | CEM / IPW matching |
| `did` | latest | Callaway & Sant'Anna (2021) staggered DiD |

### Manuscript

| Software | Version | Purpose |
|----------|---------|---------|
| **LaTeX** | TeX Live 2024+ | Typesetting |
| `elsarticle` | latest | Journal document class |
| `chicago` | latest | Bibliography style (natbib + bibtex) |

---

## Data Sources

### Primary datasets

The pipeline reads from `data/processed/` (built once by the Python stage):

| File | Rows | Description |
|------|------|-------------|
| `BEC_collapse_final.parquet` | 4.5M | Collapsed tender-item dataset |
| `Firms_final.parquet` | 39.6K | Firm registry (CNPJ, CNAE, size, location) |
| `LOSERS_rebuilt.parquet` | 85K | FL counts per tender-item |
| `FREQ_PARTICIP_rebuilt.parquet` | 16.8K | Always-losers with participation counts |
| `firm_tender_map.parquet` | 16.8M | Firm × tender participation + won flag |
| `firm_loss_stats.parquet` | 41K | Per-firm aggregated stats (win rate, always-loser flag) |
| `bid_level_full.parquet` | 40M | Raw bid-level data (forensic-recoverable layer) |

### CADE validation data

| File | Rows | Description |
|------|------|-------------|
| `cade_carteis_licitacoes_2009_2019.csv` | 65 | CADE cartel convictions |
| `cade_bec_crossmatch.csv` | 49 | CADE firms matched to BEC |
| `cade_fl_cobidders.csv` | 193 | Always-loser firms co-bidding with CADE defendants |

!!! warning "Data access"
    BEC procurement data is publicly available through the São Paulo state
    transparency portal. The processed Parquet files are built from the raw
    Stata `.dta` export via `00_build_bidlevel.py`.

### Frequent-loser construct

| Step | Definition |
|------|------------|
| Always-losers | Firms with `win_rate == 0` across all 2009–2019 tenders (≈16,843 firms) |
| IQR threshold | `median + 1.5 × IQR` of always-loser participation counts ≈ 14 |
| Frequent losers | Always-losers above the threshold → 2,735 firms |
| Treatment | `losers = 1` if a tender-item has ≥1 FL participant |

!!! note "Threshold convention"
    The threshold is `median + 1.5 × IQR` (not the standard Tukey
    `Q3 + 1.5 × IQR`). This is intentional and is preserved across
    `00_build_bidlevel.py`, `04_figures.R`, and `05_robustness.R`.

---

## Running the Analysis

### Step 1 — data build (Python, ~6 min, only if Parquets are missing)

```bash
cd paper3-frequent-losers
python3 scripts/00_build_bidlevel.py
```

### Step 2 — full R pipeline (~8 min on 16 cores)

```bash
cd paper3-frequent-losers
Rscript scripts/00_master.R
```

The master script runs the core pipeline sequentially as subprocesses:

| Script | Purpose | Key output |
|--------|---------|------------|
| `01_clean.R` | Load Parquets, extract BEC keys, merge LOSERS, filter | `/tmp/p3_prepared.rds` |
| `02_analysis.R` | Main regressions (4 DVs × 4 specs) | `/tmp/p3_models.rds` |
| `03_tables.R` | LaTeX tables | `output/tables/tab_*.tex` |
| `04_figures.R` | FL distribution, IQR threshold, summary figures | `output/figures/fig_*.pdf` |
| `05_robustness.R` | Threshold sensitivity, continuous treatment, clustering, sensemakr, placebo | `tab_threshold_*.tex` |
| `06_did_temporal.R` | Callaway & Sant'Anna staggered DiD | `tab_did_temporal.tex` |
| `07_heterogeneity.R` | By procedure type, buyer size, item group | `tab_heterogeneity*.tex` |
| `08_additional_dvs.R` | Price ratio, procedure duration | `tab_additional_dvs.tex` |
| `09_matching.R` | CEM + IPW matching, balance table | `tab_matching.tex` |
| `10_fl_characteristics.R` | FL firm characterization (size, age, CNAE) | `tab_fl_characteristics.tex` |

!!! note "Validation, gate, and architecture scripts"
    The discrimination, leakage-audit, horse-race, gate-diagnostic, and
    sequential-gatekeeping results are produced by additional numbered
    scripts (e.g. `31_imhof_full_pipeline.R`, `40_leakage_audit_d3.R`,
    `43_precision_at_k_audit.R`, and the architecture/gatekeeper scripts).
    Each `\val*` macro in `values.tex` carries an explicit `% src:` line
    naming the producing script.

### Step 3 — manuscript compilation

```bash
cd paper3-frequent-losers/work/v20-editor/submission_clean
pdflatex -interaction=nonstopmode paper_submission_clean.tex
bibtex paper_submission_clean
pdflatex paper_submission_clean.tex
pdflatex paper_submission_clean.tex
```

!!! note "Bibliography"
    The manuscript uses **natbib + bibtex** with the `chicago` style (NOT
    biblatex/biber). Use `bibtex` for the bibliography pass.

---

## Reproducibility Discipline

| Component | Specification |
|-----------|--------------|
| **Macro binding** | Every numeric claim is bound to a `\val*` macro in `values.tex`; no numerals are hardcoded into prose, captions, or table cells. |
| **Provenance** | Each macro carries a `% src:` comment naming the script and output CSV that produced it. |
| **Caching** | `/tmp/p3_prepared.rds` (analysis dataset) and `/tmp/p3_models.rds` (fitted models) for fast reload. |
| **Threads** | `fixest` and `data.table` use `min(detectCores(logical = FALSE), 16)`; DuckDB joins use `PRAGMA threads = 12`. |

---

## Computational Environment

| Component | Specification |
|-----------|--------------|
| **OS** | WSL2 on Windows (kernel 6.6) |
| **CPU** | 12–16 cores |
| **RAM** | 21 GiB |
| **R** | 4.5 |
| **Python** | 3.12 |

!!! tip "Runtime"
    The full pipeline takes approximately 8 minutes on the reference
    system. The most memory-intensive steps operate on the 40M-row
    bid-level data; these use DuckDB for out-of-core processing.
