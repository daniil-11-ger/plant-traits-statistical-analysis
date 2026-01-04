# plant-traits-statistical-analysis
Statistical pipeline for plant phenomics. Analyzes 1,000+ observations of plant traits (Height, Biomass, Chlorophyll) using Tidyverse and hypothesis testing (t-test) in R.

# Plant Trait Data Science 

This repository demonstrates a complete statistical workflow for analyzing plant phenotypic traits. The analysis transforms "raw" field data into biological insights regarding plant growth and species performance.

## Project Overview
Using the `Plant Trait Dataset` (1000 observations), I investigated key variables such as:
* **Growth Metrics:** Height (cm), Root Length (cm), Leaf Count.
* **Physiological Markers:** Chlorophyll Content.
* **Yield Indicators:** Biomass (g).

## Analysis Pipeline
1. **Exploratory Data Analysis (EDA):** Initial data auditing using `str()`, `summary()`, and `dim()` to ensure data integrity.
2. **Feature Engineering:** Creating new biological indicators (e.g., `Full Length = Height + Root Length`) using `dplyr`.
3. **Comparative Statistics:** Implementing **Student's t-test** to identify significant biomass differences between species like *Herba variabilis* and *Plantus robusta*.
4. **Data Visualization:**
    * **Distribution:** Histograms to check for normality in growth patterns.
    * **Variance Analysis:** Boxplots for cross-species performance comparisons.
    * **Correlation:** Scatter plots to identify links between Chlorophyll levels and Biomass.

## Repository Structure
* `trait_analysis.R`: The core R script containing the statistical pipeline.
* `Plant_Trait_Dataset.csv`: The dataset containing 1,000 plant observations.
* `plots/`: Exported visualizations (Boxplots, Histograms).

## Tech Stack
* **Language:** R
* **Libraries:** `tidyverse` (dplyr, ggplot2), `stats`.
* **Methods:** Descriptive Statistics, Hypothesis Testing, Correlation Analysis.
