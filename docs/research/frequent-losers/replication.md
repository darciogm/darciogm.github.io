---
paper: frequent-losers
---

# Replication

Everything is reproducible from raw data to the final PDF. The construct is built entirely from contract-award records, and the analytical pipeline runs on a single workstation in roughly ten minutes.

---

## Replication Package

The replication archive contains the analysis pipeline (R + Python), the construction scripts for the derived datasets, and the LaTeX sources for the manuscript. It will be released through the journal's data-availability portal at publication.

The repository is organized under `paper3-frequent-losers/` in the source monorepo:

| Directory | Contents |
|---|---|
| `scripts/` | Python data-build scripts (numbered `00_*.py`) and R analysis scripts (numbered `01_*.R` through `64_*.R`) |
| `data/processed/` | Parquet files produced by the data build (git-ignored; built from raw inputs) |
| `output/tables/` | All regression tables in LaTeX |
| `output/figures/` | All figures in PDF |
| `work/v17-editor/` | LaTeX manuscript sources for the current version (v17) |
| `work/v16-editor/` | v16 byte-frozen as recoverable hedge |

---

## Software Requirements

### Python (data build)

| Software | Version | Purpose |
|---|---|---|
| Python | 3.10+ | Data preprocessing |
| `pandas` | latest | Data manipulation |
| `pyarrow` | latest | Parquet I/O |

### R (analysis pipeline)

| Software | Version | Purpose |
|---|---|---|
| R | 4.5+ | Statistical computing |
| `fixest` | latest | High-dimensional fixed effects, IV, two-way clustering |
| `data.table` | latest | Fast data manipulation |
| `arrow` | latest | Parquet readers |
| `modelsummary` | latest | Regression tables |
| `kableExtra` | latest | LaTeX table formatting |
| `ggplot2` | latest | Figures |
| `sensemakr` | latest | Cinelli–Hazlett robustness value |
| `MatchIt` | latest | CEM matching, IPW, common-support trimming |
| `pROC` | latest | ROC curves and DeLong AUC tests |
| `randomForest` | latest | Imhof full-pipeline classifier |

### Manuscript

| Software | Version | Purpose |
|---|---|---|
| LaTeX | TeX Live 2024+ | Document typesetting |
| `elsarticle` | latest | Document class |
| `chicago` | latest | Bibliography style (natbib + bibtex) |

---

## Data Sources

### Primary datasets

The pipeline reads from `data/processed/`:

| File | Rows | Description |
|---|---|---|
| `firm_loss_stats.parquet` | 41,444 | Per-firm aggregated stats (win rate, tenders count, always-loser flag) |
| `firm_tender_map.parquet` | 16.8M | Firm × tender-item participation with win flag |
| `LOSERS_rebuilt.parquet` | 85K | Frequent-loser counts per (OC, item) |
| `FREQ_PARTICIP_rebuilt.parquet` | 16,843 | Always-losers with participation counts |
| `BEC_collapse_final.parquet` | 4.5M | Collapsed tender-item dataset |
| `Firms_final.parquet` | 39.6K | Firm registry (CNPJ, CNAE, size, location) |
| `bid_level_full.parquet` | 40M | Raw bid-level data (used by some robustness checks) |

### CADE validation data

| File | Rows | Description |
|---|---|---|
| `cade_carteis_licitacoes_2009_2019.csv` | 65 | CADE cartel-defendant firm records relevant to the BEC sample |
| `cade_bec_crossmatch.csv` | 47 | CADE-defendant firms active in BEC during the sample window |
| `cade_fl_cobidders.csv` | 193 | Always-loser firms that co-participate with CADE defendants in the same tender-items |

!!! warning "Data access"
    The BEC procurement records are publicly available through the São Paulo state transparency portal. CADE adjudications are public records hosted at gov.br/cade. The processed Parquet files are built from raw `.dta` and `.csv` exports via `scripts/00_build_bidlevel.py`.

### Key variables

| Variable | Description |
|---|---|
| `losers` | Frequent-loser presence indicator (1 if at least one FL participant in the tender-item) |
| `lneg_price` | Log negotiated unit price (headline DV) |
| `ln_firms`, `ln_bids`, `ln_firms_excl` | Auxiliary outcomes (number of firms, number of bids, number of non-FL firms) |
| `tenders_count` | Per-firm participation count over the sample window |
| `win_rate` | Per-firm wins divided by participations |
| `item_f`, `year_f`, `pbu_f` | Item, year, and procuring-unit fixed effects |
| `convite` | Procurement modality indicator (1 = convite, 0 = pregão) |

---

## Running the Analysis

### Step 1 — data build (Python, ~6 min)

```bash
cd paper3-frequent-losers
python3 scripts/00_build_bidlevel.py
```

Only needed when the Parquet files in `data/processed/` are missing. The script reads the raw exports from BEC and writes the four primary parquets plus the bid-level archive.

### Step 2 — analysis pipeline (R, ~10 min on 16 cores)

```bash
cd paper3-frequent-losers
Rscript scripts/00_master.R
```

The master script runs the analysis blocks in order. The blocks below correspond to the v17 manuscript sections:

| Block | Scripts | Manuscript section |
|---|---|---|
| Data prep + FL classification | `01_clean.R` | §4 (data) |
| Headline regressions (4 specs, 4 DVs) | `02_analysis.R`, `03_tables.R` | §6.1 (broad-sample β) |
| Figures (FL distribution, IQR, oversight gradient) | `04_figures.R`, `41_fix_figures.R` | §6, appendix |
| Threshold and clustering robustness | `05_robustness.R` | §9.1 |
| Modal falsification + within-PBU oversight | `07_heterogeneity.R` | §6.1, §6.3 |
| Auxiliary outcomes | `08_additional_dvs.R` | §6 (auxiliary) |
| CEM, IPW, IV diagnostics | `09_matching.R` | §9.1, §9.2 |
| FL firm characteristics | `10_fl_characteristics.R` | §4.4 |
| Item-value panel + RDD diagnostic | `12_build_item_value.R`, `13_rdd_cap.R` | §5.1 |
| DiD with 2018 cap raise | `14_did_decreto_2018.R` | §5.1, appendix F |
| Imhof full-pipeline horse race | `31_imhof_full_pipeline.R`, `49_imhof_incremental_value.R` | §10 (architecture) |
| Direct-CADE AUC (47 defendants) | `33_auc_direct_cade.R` | §7, §10.2 |
| Horse race binary vs continuous | `34_horse_race_fl_continuous.R`, `36_gate_d1_harmonized.R` | §8.1, §9.1 |
| Modal-by-modal AUC (gate D2) | `37_gate_d2_modal_auc.R` | §8.2 |
| Continuous loser-side discrimination (gate D3) | `38_gate_d3_continuous_only.R` | §8.1 |
| CADE winner-heavy diagnostic (gate D4) | `39_gate_d4_cade_winner_heavy.R` | §7 |
| Anti-leakage audit | `40_leakage_audit_d3.R` | §9.2 |
| Operational metrics (in-sample + temporal holdout) | `42_operational_metrics.R`, `43_precision_at_k_audit.R` | §9.3 |
| Strict-overlap matching | `51_item_level_scope_match.R` | §6.2, §9.2 |
| Strict-train threshold (temporal) | `53_strict_train_period_threshold.R` | §4.2 |
| Threshold table (Q3 IQR alt) | `54_threshold_table_q3iqr.R` | §9.1, appendix |
| **Sign-reversal segment decomposition** (Q4 finding + trim sensitivity) | `61_sign_reversal_segment_decomp.R` | §6.2 (segment-level decomposition) |
| **Bid-level theory bridge** (R1/R2 distinction) | `62_theory_bridge_bidlevel.R` | §7 (within-stratum bid-level bridge) |
| **Architecture / sequential gatekeeper** (precision/recall envelope) | `63_architecture_gatekeeper.R` | §10 (gatekeeper rule) |
| **Temporal-holdout audit of the gatekeeper** | `64_gatekeeper_temporal_holdout.R` | §10 (out-of-time robustness) |

### Step 3 — manuscript compilation

```bash
cd paper3-frequent-losers/work/v17-editor
pdflatex -interaction=nonstopmode paper_v17editor_online_appendix.tex
bibtex paper_v17editor_online_appendix
pdflatex paper_v17editor_online_appendix.tex
pdflatex paper_v17editor.tex
bibtex paper_v17editor
pdflatex paper_v17editor.tex
pdflatex paper_v17editor.tex
pdflatex paper_v17editor_online_appendix.tex
```

!!! note "Bibliography and cross-references"
    The manuscript uses **natbib + bibtex** (not biblatex/biber). Run `bibtex` for the bibliography pass. The `xr` package cross-references between main paper and online appendix require the OA `.aux` to exist before the main paper compiles for the first time, hence the OA-then-main sequence above.

The outputs are `paper_v17editor.pdf` (47 pages, body) and `paper_v17editor_online_appendix.pdf` (20 pages, online appendix containing the four formal results, supporting tables, identification audits, threshold robustness, generalisation audits, adversarial-adaptation simulation, and the staggered-design failures).

---

## Output Files

### Tables

`output/tables/` contains 30+ LaTeX table fragments (booktabs + threeparttable). The tables actually input by the v15 manuscript and appendix are listed in the manuscript source under `\input{...}` directives.

### Figures

`output/figures/` contains the PDF figures. The two figures included in the published manuscript are:

| Figure | File | Manuscript section |
|---|---|---|
| FL participation distribution | `fig_01_losses_distribution.pdf` | Appendix B |
| IQR threshold identification | `fig_02_iqr_identification.pdf` | Appendix B |

### Manuscript

| File | Pages | Description |
|---|---|---|
| `work/v17-editor/paper_v17editor.pdf` | 47 | Main manuscript (current version) |
| `work/v17-editor/paper_v17editor_online_appendix.pdf` | 20 | Online appendix |
| `work/v16-editor/paper_v16editor.pdf` | 47 | v16 byte-frozen as recoverable hedge |

---

## Computational Environment

| Component | Specification |
|---|---|
| OS | Ubuntu 24.04 (WSL2 on Windows) |
| CPU | 14 threads (Intel i7-1260P, 4 P-cores + 8 E-cores) |
| RAM | 21 GB |
| R | 4.5+ |
| `fixest` | OpenMP, 12 threads (saturating CPU within the workstation budget) |
| `data.table` | Multi-threaded via `setDTthreads(12)` |
| Parquet | DuckDB engine (`PRAGMA threads=12, memory_limit='14GB'`) for any non-trivial read/filter/join |

!!! note "Runtime"
    The full pipeline takes approximately 10 minutes on the reference workstation. The most time-intensive steps are the bid-level horse race (`31_imhof_full_pipeline.R`) and the strict-overlap matching (`51_item_level_scope_match.R`), each of which processes a few million rows under random forests or propensity-score trimming.

!!! tip "Caching"
    Intermediate data is cached at `/tmp/` for fast reload. The prepared dataset (`/tmp/p3_prepared.rds`) is created by `01_clean.R` and reused by all subsequent scripts. Cache invalidation is manual: delete the rds files when the underlying parquets change.

---

## Reproducibility Note

The numerical claims in the paper come from a single pipeline run on the canonical 2009–2019 BEC parquet files plus the CADE crossmatch CSV. The pipeline applies a strict 14-character CNPJ zero-padding convention before every merge: this padding is required to recover the full 193 FL–CADE co-bidder set, and alternative conventions yield a smaller subset that appears in earlier draft tables. The convention is flagged at the top of `scripts/00_build_bidlevel.py` so future replications reproduce either count deterministically.

The headline AUC of 0.924 against 193 cobidders corresponds to point estimate 0.9389 on the always-loser pool of 16,843 firms; the 95% confidence interval [0.921, 0.926] uses DeLong's method, with stratified percentile and BCa bootstrap intervals (B = 5,000 and 2,000 respectively) agreeing to three decimal places. The temporal-holdout AUC of 0.864 (train 2009–2016, test 2017–2019) is computed in `40_leakage_audit_d3.R`. The full sequence of commits that produced the final tables and figures is preserved in the replication archive's git log.
