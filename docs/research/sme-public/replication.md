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

The full v6 structural analysis runs from a single master script under `v6-jpube/`:

```bash
cd v6-jpube
Rscript scripts/00_master.R
```

The master script orchestrates ~25 numbered R scripts (32_historical_sme.R through 58_figures.R) running as separate R subprocesses. The high-level pipeline is:

| Stage | Scripts | Purpose |
|-------|---------|---------|
| Data foundations | `32_historical_sme.R`, `33_pharma_flag.R`, `34_s1_descriptives.R` | Historical SME flag from CNPJ size class, pharma classification at the 6-digit BEC item level, descriptive baseline |
| Pregão drop-out IDs | `35_pregao_dropouts.R`, `36_pregao_fc_dropout.R`, `37_pregao_ht_refined.R` | Drop-out point identification of type-specific F<sub>c</sub><sup>k</sup>, Haile--Tamer bounds refinement |
| UH decomposition | `38_cross_modality.R`, `39_primitive_invariance.R`, `40_uh_variance.R`, `41_uh_clean_bids.R`, `42_uh_rerun_fc.R`, `43_uh_invariance_update.R` | Krasnokutskaya (2011) method-of-moments + best-linear-predictor shrinkage; cross-modality consistency check vs.\ Convite GPV |
| Counterfactuals | `44_entry_pool.R`, `45_bne_simulation.R`, `46_decomp_compare.R` | BNE Monte Carlo (B = 2,000) over S<sub>1</sub>, S<sub>2</sub>, S<sub>3</sub>, V0--V3 |
| Robustness | `47_entry_cost.R`, `48_turnbull_fc.R`, `49_sensitivity_fc.R`, `50_bandwidth_grid.R`, `51_bootstrap_ci.R`, `52_filter_sensitivity.R`, `53_apv.R`, `54_window_sensitivity.R`, `57_strict_invariance.R`, `58_collusion_screen.R` | Strict invariance, F<sub>c</sub> regime, kernel bandwidth, sample filter, temporal window, Conley--Decarolis collusion screen, affiliation pivot value (APV) |
| Welfare | `55_welfare.R`, `56_welfare_bootstrap.R`, `57_welfare_adherence_sensitivity.R` | DWL<sub>alloc</sub> + MCPF arithmetic, λ-grid, Saez--Stantcheva weights, adherence-rate sensitivity for the annual R\$55--128M range |
| Outputs | `58_figures.R` | All cairo-PDF figures, grayscale theme |

## Output structure

```
v6-jpube/output/
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
│   ├── tab_collusion_screen.tex
│   ├── tab_maskin_riley_bound.tex
│   ├── tab_phased_adoption.tex
│   ├── tab_pretrends.tex
│   ├── tab_sample_flow.tex
│   └── values.tex          # single source of truth for headline macros
└── figures/            # cairo_pdf, grayscale
    ├── fig_v3_decomposition.pdf
    ├── fig_v3_entry_insurance.pdf
    ├── fig_v3_welfare_forest.pdf
    ├── fig_v3_welfare_weight.pdf
    ├── fig_v3_cross_modality.pdf
    ├── fig_v3_cross_modality_uh.pdf
    ├── fig_v3_bne_prices.pdf
    ├── fig_v3_pregao_fc_by_stratum.pdf
    ├── fig_v3_pregao_ht_bands.pdf
    ├── fig_v3_optimal_preference.pdf
    ├── fig_v3_gelbach_waterfall.pdf
    ├── fig_paper_dag.pdf
    └── fig_eventstudy_prices.pdf
```

`values.tex` is the macro file consumed by the manuscript: every headline number in `paper_v6.tex` flows from a `\renewcommand` in `values.tex`, so the document is reproducible from the pipeline outputs without ever hardcoding a numeral into the prose.

## Manuscript compilation

```bash
cd v6-jpube/manuscript
pdflatex paper_v6.tex
bibtex paper_v6
pdflatex paper_v6.tex
pdflatex paper_v6.tex
# online appendix
pdflatex online_appendix.tex
bibtex online_appendix
pdflatex online_appendix.tex
pdflatex online_appendix.tex
# highlights + cover letter
pdflatex highlights.tex
pdflatex cover_letter.tex
```

The manuscript uses the `elsarticle` document class and follows JPubE submission formatting.

## Technical notes

- **Memory management.** Pipeline scripts run as separate R subprocesses to prevent OOM on systems with 16 GB RAM. The Krasnokutskaya shrinkage step holds the full bid-level table only briefly; intermediate state is cached as `.rds` at `/tmp/p2_v3_*.rds`.
- **Parquet cache.** First run reads the 6.4 GB CSV file and creates a parquet cache (~73 columns of the original 373). Subsequent runs load from parquet (~5 seconds vs. ~5 minutes).
- **DuckDB for parquet workflows.** Read/filter/join/aggregate operations on the parquet cache use DuckDB with `PRAGMA threads=12; PRAGMA memory_limit='14GB'`. Polars/pandas only as hand-off to model fitting.
- **BNE Monte Carlo.** B = 2,000 simulated auctions per (class × scenario) cell. The cluster bootstrap (B<sub>bs</sub> = 500) is the dominant compute cost; runs in ~15 minutes on a 12-thread machine.
- **Thread configuration.** Both `fixest` and `data.table` use 12 threads by default (deferring 2 threads for the OS / IDE). Adjust in `scripts/00_setup.R` if running on a machine with fewer cores.
