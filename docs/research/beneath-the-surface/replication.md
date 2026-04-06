---
paper: beneath-the-surface
---

# Replication

All analysis code is available. Data access requires authorization from the BEC-SP platform.

---

## Repository Structure

The replication materials are organized under `paper4-thresholds/` in the main repository:

```
paper4-thresholds/
  01_manuscript/          # LaTeX source (multiple versions)
    paper_beneath/        # Current manuscript
  02_data/                # Data (not distributed; see below)
    final/                # Analysis-ready parquet
    intermediate/         # Processing intermediaries
    firms/                # Firm characteristics
  03_analysis/            # Analysis code
    01_replicate_estimates.R    # Main RDD estimates
    02_rdd_validity_tests.R     # Validity and robustness tests
    linkage_rais_bec.py         # RAIS-BEC firm linkage
    Dario_Vacchini/             # Stata cluster scripts
    Sergio/                     # Co-author Stata scripts
  RAIS/                   # RAIS microdata (not distributed)
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

| Dataset | Source | Access |
|:--------|:-------|:-------|
| **BEC-SP** | Bolsa Eletronica de Compras, SP state | Public portal (scraping required) |
| **RAIS Identificada** | Ministry of Labor (MTE) | Restricted; requires institutional authorization |
| **Firms** | Receita Federal (CNPJ database) | Public |

The main analysis file `df_convite_winner_looser.parquet` (~1 GB) contains all sealed-bid auctions with winner/loser pairs and pre-computed variables.

---

## Running the Analysis

```bash
# Step 1: Main RDD estimates
Rscript 03_analysis/01_replicate_estimates.R

# Step 2: Validity tests (density, balance, placebo, donut-hole)
Rscript 03_analysis/02_rdd_validity_tests.R

# Step 3: RAIS-BEC linkage (optional, requires RAIS data)
python3 03_analysis/linkage_rais_bec.py
```
