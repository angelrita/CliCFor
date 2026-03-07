# CliCFor

**CliCFor — Unravelling seasonal to decadal CLImate influence on the Carbon cycle in FORest**

CliCFor investigates how climate variability, extremes, and long-term trends affect forest carbon cycling across contrasting environments. This repository hosts materials related to the PRIN 2022 project `2022ETAB7T`, a 24-month multidisciplinary study linking climate drivers, ecosystem carbon fluxes, tree growth, and biomass formation to explain when flux-based and biomass-based signals converge or diverge.

The project focuses on the links between:

- climate variability from intra-seasonal to decadal scales
- forest-atmosphere carbon fluxes measured by eddy covariance
- woody biomass formation reconstructed from tree rings and quantitative wood anatomy
- stable carbon isotopes and intrinsic water-use efficiency
- process-based modeling of forest carbon dynamics

## Project rationale

Forest carbon sinks are central to climate-change mitigation, but the relationship between ecosystem carbon uptake and woody biomass accumulation is still only partially understood. CliCFor was designed to investigate the causal relationships between climate, primary productivity, and wood biomass, and to explain why flux-based and biomass-based estimates of forest carbon sequestration may diverge.

The project combines approaches that are often used separately:

- long eddy covariance time series
- tree-ring anatomy and biomass proxies
- stable carbon isotope analyses
- statistical and process-based modeling

## Study sites

The table below reports the actual study sites considered during the project after the later reassessment of site selection.

| Code | Site name | Country | Lat. (deg N) | Lon. (deg E) | Elev. (m a.s.l.) | Tree species | MAT (deg C) | MAP (mm) | EC time-span | GPP (g C m^-2 yr^-1) | N. trees | QWA time-span |
| --- | --- | --- | ---: | ---: | ---: | --- | ---: | ---: | --- | ---: | ---: | --- |
| `OJP` | Old Jack Pine | Canada | 53.916 | -104.692 | 524 | `P. banksiana` | 0.5 | 495 | 1999-2021 | 606 | 8 | 1921-2021 |
| `OBS` | Old Black Spruce | Canada | 53.987 | -105.118 | 629 | `P. mariana` | 0.6 | 451 | 1999-2021 | 806 | 11 | 1909-2021 |
| `TP` | Turkey Point | Canada | 42.710 | -80.357 | 184 | `P. strobus` | 8.0 | 997 | 2003-2018 | 1434 | 12 | 1957-2019 |
| `REN` | Renon | Italy | 46.587 | 11.434 | 1735 | `P. abies` | 6.0 | 964 | 1999-2020 | 1350 | 9 | 1929-2020 |
| `SR` | San Rossore | Italy | 43.731 | 10.910 | 5 | `P. pinea` | 15.3 | 900 | 2013-2024 | 2651 | 9 | 1943-2022 |
| `TOR` | Torgnon | Italy | 45.823 | 7.561 | 2050 | `L. decidua` | 2.9 | 1100 | 2012-2020 | 1322 | 8 | 1935-2021 |

![Global map of CliCFor study sites](docs/figures/study_sites_map.png)

## Research units and roles

- `UNIPD` - University of Padova, PI unit
  - Principal Investigator: Daniele Castagneri
  - Main role: tree-ring analysis, quantitative wood anatomy, project coordination
- `UNINA` - University of Naples Federico II
  - Unit lead: Angelo Rita
  - Main role: integrated data analysis, statistical modeling, process-based modeling
- `UNIBZ` - Free University of Bolzano
  - Unit lead: Leonardo Montagnani
  - Main role: eddy covariance flux analysis and site-level flux data coordination

## Work packages

- `WP1 - C fluxes`: acquisition, validation, and analysis of long-term eddy covariance and climate time series
- `WP2 - Tree rings`: sampling, quantitative wood anatomy, stable carbon isotopes, and climate-growth relationships
- `WP3 - Modeling`: integration of flux, climate, and tree-ring information; hypothesis testing; refinement of `3D-CMCC-FEM`
- `WP4 - Dissemination & communication`: publications, outreach, metadata, and open science outputs
- `WP5 - Project & data management`: coordination, reproducibility, and data organization

## Model used in the project

CliCFor used the process-based forest model `3D-CMCC-FEM` within the modeling component of the project.

- Project repository used for this work: [angelrita/3D-CMCC-FEM](https://github.com/angelrita/3D-CMCC-FEM)
- Original model repository: [Forest-Modelling-Lab/3D-CMCC-FEM](https://github.com/Forest-Modelling-Lab/3D-CMCC-FEM)

## Repository scope

This repository is being updated progressively after the end of the project to better organize documentation, data products, and analysis workflows.

At the moment, the repository contains:

- the project file for RStudio: `CliCFor.Rproj`
- a first project overview in this `README.md`
- xylem anatomy chronology files in `data/processed/xylem_anatomy_chronologies/`

## Repository structure

The repository currently follows this base structure:

```text
CliCFor/
|- docs/                              project notes and documentation
|- data/
|  |- raw/                            original data files kept unchanged
|  |- processed/                      derived datasets ready for analysis
|  |  `- xylem_anatomy_chronologies/  current chronology files
|  `- metadata/                       codebooks, notes, dataset descriptions
|- scripts/                           analysis scripts and workflow steps
|- src/                               reusable R functions
|- outputs/
|  |- figures/                        generated plots
|  `- tables/                         generated tables
|- CliCFor.Rproj
`- README.md
