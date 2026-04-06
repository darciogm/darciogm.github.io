---
paper: beneath-surface
---

# Replication

All analysis code is available. Data access requires authorization from the BEC-SP platform.

---

## Repository Structure

```
paper4-thresholds/
  01_manuscript/                    # LaTeX source (multiple versions)
    paper_beneath/                  # Current manuscript
  02_data/                          # Data (not distributed; see below)
    final/                          # Analysis-ready dataset
    intermediate/                   # Processing intermediaries
    firms/                          # Firm characteristics
  03_analysis/                      # Analysis code
    01_replicate_estimates.R        # Main RDD estimates (fixest)
    02_rdd_validity_tests.R         # Validity tests (rddensity, rdrobust)
    linkage_rais_bec.py             # RAIS-BEC firm linkage (polars)
    Dario_Vacchini/                 # Co-author Stata cluster scripts
    Sergio/                         # Co-author Stata scripts
  RAIS/                             # RAIS microdata processing
    harmonize_panel.py              # Harmonize 2009-2017 vinculos
    convert_to_parquet.py           # Raw .dta → .parquet conversion
```

---

## Software Requirements

### R (Main Analysis)

| Package | Version | Purpose |
|:--------|:--------|:--------|
| **R** | 4.3+ | Statistical computing |
| `fixest` | latest | High-dimensional FE estimation |
| `rdrobust` | latest | RDD estimation (CCT bandwidth) |
| `rddensity` | latest | Density tests (McCrary/CJM) |
| `arrow` | latest | Parquet I/O |
| `data.table` | latest | Data manipulation |

### Python (Data Engineering)

| Package | Version | Purpose |
|:--------|:--------|:--------|
| **Python** | 3.10+ | Data processing |
| `polars` | latest | Fast DataFrame operations |
| `pyarrow` | latest | Parquet I/O |

### Stata (Legacy / Co-author Code)

| Package | Purpose |
|:--------|:--------|
| `rdrobust` | RDD estimation |
| `reghdfe` | Fixed effects |
| `rangestat` | Rolling calculations |

---

## Data Access

| Dataset | Source | Access | Size |
|:--------|:-------|:-------|:-----|
| **BEC-SP** | Bolsa Eletronica de Compras | Public portal (scraping required) | ~1 GB (processed) |
| **RAIS Identificada** | Ministry of Labor (MTE) | Restricted; institutional authorization | ~58 GB (harmonized) |
| **Firms** | Receita Federal (CNPJ database) | Public | ~3 MB |

!!! info "Main analysis dataset"
    The file `df_convite_winner_looser.parquet` (~1 GB) contains all sealed-bid auctions with pre-computed winner-loser pairs, margin of victory, incumbency indicators, and market definitions. This file is sufficient to replicate all main results.

!!! warning "RAIS linkage"
    The RAIS-BEC linkage (`rais_bec_linked.parquet`, 10 MB) provides firm-level characteristics (employees, sector, legal form, wages) for 95.8% of BEC suppliers. Access to the underlying RAIS Identificada requires institutional authorization from MTE.

---

## Running the Analysis

### Step 1: Main RDD Estimates

```bash
Rscript 03_analysis/01_replicate_estimates.R
```

Produces four blocks of results:

1. **Paper specifications** (Dario): incumbency and last-bid at BW = 0.01, 0.02
2. **LACEA specifications** (Sergio): buyer-level incumbency and backlog
3. **Cross-comparison**: market vs. buyer definitions, same bandwidth
4. **Bandwidth sensitivity**: grid from 0.005 to 0.05

### Step 2: Validity Tests

```bash
Rscript 03_analysis/02_rdd_validity_tests.R
```

Runs seven tests:

1. McCrary / Cattaneo-Jansson-Ma density test
2. `rdrobust` with CCT data-driven bandwidth
3. Covariate balance at threshold (age, limited liability, same municipality)
4. Placebo cutoffs ($\Delta = -0.03, \ldots, +0.03$)
5. Donut-hole RDD (holes from 0 to 0.005)
6. Summary statistics
7. Sample attrition table

### Step 3: RAIS-BEC Linkage (Optional)

```bash
python3 03_analysis/linkage_rais_bec.py            # full pipeline
python3 03_analysis/linkage_rais_bec.py --estb-only # ESTB only
python3 03_analysis/linkage_rais_bec.py --check     # verify linkage rates
```

### Step 4: RAIS Harmonization (Optional)

```bash
python3 RAIS/harmonize_panel.py              # all years (2009-2017)
python3 RAIS/harmonize_panel.py --year 2012  # single year
python3 RAIS/harmonize_panel.py --dry-run    # show plan
```
