# Geographic Distribution Maps

## Comparison Panel: All Purchase Types

The panel below shows the geographic distribution of purchases per 1,000 inhabitants across Sao Paulo municipalities (2009-2019), using common quintile breaks for comparability.

![Comparison Panel](assets/figures/fig_map_panel_comparison_v8.png)

*Quintile breaks; SIRGAS 2000 / UTM Zone 23S projection. Source: BEC procurement data and IBGE population estimates (SIDRA table 6579).*

!!! info "Key Pattern"
    Litigated purchases are geographically concentrated around the state capital and major urban centers, while ordinary purchases are more evenly distributed. Administrative purchases show the most sparse distribution, reflecting the limited adoption of the administrative request mechanism.

---

## Individual Maps

### Litigated Purchases per 1,000 Inhabitants

![Litigated per capita](assets/figures/fig_map_litigated_per_capita_v8.png)

### Administrative Purchases per 1,000 Inhabitants

![Admin per capita](assets/figures/fig_map_admin_per_capita_v8.png)

### Ordinary Purchases per 1,000 Inhabitants

![Ordinary per capita](assets/figures/fig_map_ordinary_per_capita_v8.png)

---

## Technical Notes

- **Projection:** SIRGAS 2000 / UTM Zone 23S (EPSG:31983)
- **Breaks:** Quintile (5 equal-frequency categories)
- **Population:** IBGE SIDRA table 6579, 2009-2019 average
- **Shapefile:** IBGE via `geobr` R package (2010 municipal boundaries)
- **Color palette:** Sequential grayscale (5 levels), print-friendly
