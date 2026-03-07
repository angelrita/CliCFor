# Xylem Anatomy Chronologies Metadata

This file documents the chronology datasets currently stored in `data/processed/xylem_anatomy_chronologies/`.

## General notes

-   File format: tab-delimited text
-   Storage class in the repository: processed data
-   Current metadata status: preliminary
-   Source of metadata: file names, column names, and direct inspection of file contents
-   Additional reference sources used for abbreviation mapping:
    -   ROXAS output parameter page: <https://roxas.wsl.ch/en/forest/tree-ring-research/products/roxas/output-parameters/>
-   Metadata policy for this file: only confirmed information is reported; unresolved items are listed explicitly without inferred definitions.

## ROXAS-derived abbreviation glossary

The following mappings are supported directly by the ROXAS documentation.

| Abbreviation | Meaning | Evidence level | Notes |
|------------------|------------------|------------------|------------------|
| `CNo` | Cell number | direct | Present in the `Annual rings` sheet of the example ROXAS output |
| `CD` | Cell density | direct | ROXAS output page lists cell density in no./mm2; exported as `CD*` in the example file |
| `CTA` | Accumulated cell lumen area / conductive tissue area | direct | Listed on the ROXAS output page for image and ring level; exported as `CTA` in the example file |
| `RCTA` | Percentage of conductive area / relative conductive tissue area | direct | Listed on the ROXAS output page; exported as `RCTA*` in the example file |
| `MLA` or `LA` | Mean lumen area at ring level / lumen area at cell level | direct | `LA` appears in the `Cells` sheet; `MLA` appears in the `Annual rings` sheet |
| `Kh` | Theoretical hydraulic conductivity | direct | Defined in the legend of the example ROXAS file |
| `Ks` | Specific hydraulic conductivity | direct | Listed on the ROXAS output page and exported as `Ks*` |
| `CWTle` | Thickness of left cell wall | direct | Defined in the legend of the example ROXAS file |
| `CWTall` | Thickness of all cell walls, computed as `[CWTrad + CWTtan] / 2` | direct | Defined in the legend of the example ROXAS file |
| `Drad` | Radial cell lumen diameter | direct | Defined in the legend of the example ROXAS file |
| `Dh` | Hydraulic diameter | direct | Listed on the ROXAS output page and exported in the example file |
| `CWA` | Cell wall area | direct | Defined in the legend of the example ROXAS file |
| `RWD` | Relative anatomical cell density, `CWA / (CWA + LA)` | direct | Defined in the legend of the example ROXAS file |

## File inventory

| File | Site code | Site name | Data type | Rows | Columns | Time coverage | Notes |
|---------|---------|---------|---------|--------:|--------:|---------|---------|
| `OBS_DET.CHRONO.txt` | `OBS` | Old Black Spruce, Saskatchewan, Canada | Chronology table | 72 | 14 | 1950-2021 | Filename contains `DET` |
| `OBS_RAW.CHRONO.txt` | `OBS` | Old Black Spruce, Saskatchewan, Canada | Chronology table | 228 | 12 | 1908-2021 | Includes field `EW_LW` with values `EW` and `LW` |
| `OJP_RAW_DET.CHRONO.txt` | `OJP` | Old Jack Pine, Canada | Chronology table | 49 | 5 | 1970-2018 | Contains `_raw` and `_std` variables |

## Variable overview

### `OBS_DET.CHRONO.txt`

Columns:

-   `YEAR`: calendar year
-   `CTA_ring.Chrono`
-   `CWTALL_ring.Chrono`
-   `CWAadj_ring.Chrono`
-   `CWAadj_ew.Chrono`
-   `CWAadj_lw.Chrono`
-   `RWA_ring.Chrono`
-   `RWA_ew.Chrono`
-   `RWA_lw.Chrono`
-   `CN_ring.Chrono`
-   `CN_ew.Chrono`
-   `CN_lw.Chrono`
-   `TRW.Chrono`
-   `RWD.Chrono`

### `OBS_RAW.CHRONO.txt`

Columns:

-   `YEAR`: calendar year
-   `EW_LW`: intra-ring sector, with observed values `EW` and `LW`
-   `CWTALL90.Chrono`
-   `CWTALL50.Chrono`
-   `CWAadj90.Chrono`
-   `CWAadj50.Chrono`
-   `RWDadj90.Chrono`
-   `RWDadj50.Chrono`
-   `CTA90.Chrono`
-   `CTA50.Chrono`
-   `NUM.Chrono`
-   `NUM.TOT.Chrono`

### `OJP_RAW_DET.CHRONO.txt`

Columns:

-   `Year`: calendar year
-   `OJP_CWA_std`
-   `OJP_CWA_raw`
-   `OJP_RWA_std`
-   `OJP_RWA_raw`
