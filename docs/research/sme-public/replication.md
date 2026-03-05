# Replication

## Requirements

| Component | Version |
|-----------|---------|
| R | 4.5+ |
| `fixest` | 0.12+ |
| `data.table` | 1.15+ |
| `arrow` | 14+ |
| `ggplot2` | 3.5+ |
| `scales` | 1.3+ |
| `grf` | 2.3+ |
| `quantreg` | 5.98+ |
| `gridExtra` | 2.3+ |

## Data

The primary dataset is administrative data from BEC (Bolsa Eletronica de Compras), the electronic procurement platform for the state of Sao Paulo. The data contains 373 columns covering all standardized goods procurement from January 2016 to December 2019.

!!! warning "Data access"
    The raw data files are not publicly available due to confidentiality agreements. Researchers interested in replication should contact the authors directly.

## Pipeline

The full analysis pipeline runs from a single master script:

```bash
# From the project root directory
Rscript scripts/00_master.R
```

This executes the following scripts in sequence, each as a separate R subprocess:

| Script | Purpose | Duration |
|--------|---------|----------|
| `01_clean.R` | CSV to parquet conversion, variable creation | ~5 min (first run) |
| `02_analysis.R` | 24 DiDiR regressions + 4 event studies | ~30 sec |
| `05_robustness.R` | Placebo, alt. clustering, winsorization, permutation | ~45 sec |
| `06_extensions.R` | Real prices, extensive margin, efficiency, heterogeneity | ~30 sec |
| `07_advanced.R` | HonestDiD, Lee bounds, causal forest, quantile DiD, Gelbach | ~3 min |
| `03_tables.R` | 18 LaTeX tables | ~5 sec |
| `04_figures.R` | 15 PDF figures | ~10 sec |

## Output Structure

```
output/
├── tables/           # 18 .tex files (threeparttable + booktabs)
│   ├── tab_desc_stats.tex
│   ├── tab_prices.tex
│   ├── tab_participants.tex
│   ├── tab_validbids.tex
│   ├── tab_distance.tex
│   ├── tab_placebo.tex
│   ├── tab_altcluster.tex
│   ├── tab_winsorize.tex
│   ├── tab_prices_real.tex
│   ├── tab_extensive.tex
│   ├── tab_efficiency.tex
│   ├── tab_sme_winner.tex
│   ├── tab_heterog_pbu.tex
│   ├── tab_heterog_value.tex
│   ├── tab_lee_bounds.tex
│   ├── tab_cforest.tex
│   ├── tab_quantile_did.tex
│   └── tab_mediation.tex
└── figures/          # 15 .pdf files (grayscale, cairo)
    ├── fig_01_logprices_es.pdf
    ├── fig_02_distance_es.pdf
    ├── fig_03_numfirms_es.pdf
    ├── fig_04_numbids_es.pdf
    ├── fig_05_trends_prices.pdf
    ├── fig_06_trends_firms.pdf
    ├── fig_07_trends_bids.pdf
    ├── fig_08_trends_distance.pdf
    ├── fig_09_permutation.pdf
    ├── fig_10_sme_share.pdf
    ├── fig_11_honestdid.pdf
    ├── fig_12_cforest_varimp.pdf
    ├── fig_13_cforest_gate.pdf
    ├── fig_14_quantile_did.pdf
    └── fig_15_mediation.pdf
```

## Manuscript Compilation

```bash
cd manuscript
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Technical Notes

- **Memory management:** Each pipeline script runs as a separate R subprocess to prevent OOM on systems with 15 GB RAM. The `fixest` lean estimation mode (`setFixest_estimation(lean = TRUE)`) reduces model storage from ~4 GB to ~2.5 MB.

- **Parquet cache:** The first run reads the 6.4 GB CSV file and creates a parquet cache (~73 columns). Subsequent runs load directly from parquet (~5 seconds vs. ~5 minutes).

- **Thread configuration:** Both `fixest` and `data.table` use 16 threads by default. Adjust in `scripts/utils.R` if running on a machine with fewer cores.
