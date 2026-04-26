---
paper: sme-public
---

# Replication

## Software requirements

| Component | Version |
|-----------|---------|
| R | 4.5+ |
| `fixest` | 0.12+ |
| `data.table` | 1.15+ |
| `arrow` | 14+ |
| `duckdb` | 0.10+ |
| `ggplot2` | 3.5+ |
| `scales` | 1.3+ |
| `Rcpp` / `RcppArmadillo` | (BNE Monte Carlo) |
| `interval` | (Turnbull NPMLE) |
| `boot` | (cluster bootstrap) |
| `kdensity` / `np` | (GPV kernel inversion) |

## Data

The structural sample is derived from the BEC (Bolsa Eletronica de Compras) administrative microdata, accessed through a research agreement with the Secretaria da Fazenda e Planejamento do Estado de Sao Paulo (Sefaz-SP). The raw extract is **not publicly redistributable** under the access agreement.

| Sample | Window | Auctions | Bids |
|---|---|---|---|
| Full DiD sample | Jan 2016 -- Dec 2019 | 832,984 | ~3.7M |
| Structural sample (Pregao, Group 65) | Sep 2016 -- Aug 2019 | 97,993 | 297,967 |

!!! warning "Data access"
    The raw extract is not publicly redistributable. Researchers interested in replication should contact the author. Aggregated cell-level data, the structural-sample auction-level cleaned residuals, and replication code in R are available on request and at the project replication repository (URL on acceptance).

## Pipeline

The full v5 structural analysis runs from a single master script:

```bash
Rscript scripts/00_master.R
```

Sequence of subprocesses:

| Script | Purpose |
|--------|---------|
| `01_clean.R` | CSV → parquet conversion, variable creation, sample filters |
| `02_did.R` | Reduced-form DiD against 76 never-treated product groups (Appendix B) |
| `10_uh_decomposition.R` | Method-of-moments σ<sub>a</sub><sup>2</sup>/σ<sub>e</sub><sup>2</sup> + Krasnokutskaya shrinkage |
| `11_fc_estimation.R` | Type-specific F<sub>c</sub><sup>k</sup> via all-bidders ECDF + Turnbull NPMLE |
| `12_gpv_convite.R` | Cross-modality GPV inversion on Convite first-price sealed-bid auctions |
| `13_entry_rates.R` | Stratum-specific Poisson arrival rate calibration |
| `14_bne_simulation.R` | Bayes-Nash counterfactual Monte Carlo (B = 2,000) over scenarios S<sub>1</sub>, S<sub>2</sub>, S<sub>3</sub>, V0--V3 |
| `15_bootstrap.R` | Cluster bootstrap at the auction level (B<sub>bs</sub> = 500) |
| `16_welfare.R` | DWL<sub>alloc</sub> + MCPF arithmetic, λ-grid, Saez--Stantcheva weights |
| `17_robustness.R` | Strict invariance, F<sub>c</sub> regime, kernel bandwidth, sample filter, window |
| `03_tables.R` | LaTeX tables (threeparttable + booktabs) |
| `04_figures.R` | PDF figures (grayscale, cairo) |

## Output structure

```
v5-jpube/output/
├── tables/             # threeparttable + booktabs
│   ├── tab_v3_bne_decomp.tex
│   ├── tab_v3_apv.tex
│   ├── tab_v3_strict_invariance.tex
│   ├── tab_v3_sensitivity_fc.tex
│   ├── tab_v3_decomp_grid.tex
│   ├── tab_did_structural_bridge.tex
│   ├── tab_v3_bootstrap_ci.tex
│   ├── tab_v3_entry_cost.tex
│   ├── tab_v3_welfare.tex
│   ├── tab_v3_welfare_ci.tex
│   ├── tab_welfare_ranking_lambda.tex
│   ├── tab_v3_window_sensitivity.tex
│   ├── tab_v3_filter_sensitivity.tex
│   ├── tab_v3_bandwidth_grid.tex
│   ├── tab_v3_pregao_fc_summary.tex
│   ├── tab_v3_turnbull_fc.tex
│   ├── tab_v3_uh_variance.tex
│   ├── tab_v3_primitive_invariance.tex
│   ├── tab_v3_uh_invariance.tex
│   ├── tab_v3_cross_modality.tex
│   └── tab_preview.tex
└── figures/            # cairo_pdf, grayscale
    ├── fig_v3_decomposition.pdf
    ├── fig_v3_entry_insurance.pdf
    ├── fig_v3_welfare_forest.pdf
    ├── fig_v3_welfare_weight.pdf
    ├── fig_v3_cross_modality_uh.pdf
    ├── fig_v3_bne_prices.pdf
    ├── fig_v3_pregao_fc_by_stratum.pdf
    ├── fig_v3_pregao_ht_bands.pdf
    ├── fig_v3_optimal_preference.pdf
    ├── fig_v3_gelbach_waterfall.pdf
    └── fig_eventstudy_prices.pdf
```

## Manuscript compilation

```bash
cd v5-jpube/manuscript
pdflatex paper_v5.tex
bibtex paper_v5
pdflatex paper_v5.tex
pdflatex paper_v5.tex
# online appendix
pdflatex online_appendix.tex
bibtex online_appendix
pdflatex online_appendix.tex
pdflatex online_appendix.tex
```

The manuscript uses the `elsarticle` document class and follows JPubE submission formatting.

## Technical notes

- **Memory management.** Pipeline scripts run as separate R subprocesses to prevent OOM on systems with 16 GB RAM. The Krasnokutskaya shrinkage step holds the full bid-level table only briefly; intermediate state is cached as `.rds` at `/tmp/p2_v3_*.rds`.
- **Parquet cache.** First run reads the 6.4 GB CSV file and creates a parquet cache (~73 columns of the original 373). Subsequent runs load from parquet (~5 seconds vs. ~5 minutes).
- **DuckDB for parquet workflows.** Read/filter/join/aggregate operations on the parquet cache use DuckDB with `PRAGMA threads=12; PRAGMA memory_limit='14GB'`. Polars/pandas only as hand-off to model fitting.
- **BNE Monte Carlo.** B = 2,000 simulated auctions per (class × scenario) cell. The cluster bootstrap (B<sub>bs</sub> = 500) is the dominant compute cost; runs in ~15 minutes on a 12-thread machine.
- **Thread configuration.** Both `fixest` and `data.table` use 12 threads by default (deferring 2 threads for the OS / IDE). Adjust in `scripts/00_setup.R` if running on a machine with fewer cores.
