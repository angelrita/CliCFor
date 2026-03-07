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

CliCFor compares three pure conifer stands under contrasting climatic conditions:

- `OBS` (Old Black Spruce), Saskatchewan, Canada
- `Renon`, northern Italy
- `Yatir`, central Israel

These sites were selected because they represent boreal, temperate/oceanic, and semi-arid conditions and include long eddy covariance records, making them suitable for cross-site analyses of climate effects on the forest carbon cycle.

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