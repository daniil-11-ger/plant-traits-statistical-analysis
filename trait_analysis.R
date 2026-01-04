# =========================================================================
# Title: Plant Phenomics Statistical Analysis
# Purpose: Species comparison and trait correlation analysis
# Author: Daniil Gerasimov
# =========================================================================

library(tidyverse)

# 1. Data Loading & Audit -------------------------------------------------
df <- read.csv("data/Plant_Trait_Dataset.csv", header = TRUE, row.names = 1)

cat("Dataset Structure:\n")
str(df)
print(summary(df))

# 2. Advanced Data Transformation -----------------------------------------
# Calculating 'Total Plant Length' and grouping statistics by Species
processed_data <- df %>%
  mutate(Total_Length = Height_cm + Root_Length_cm) %>%
  group_by(Species) %>%
  mutate(Avg_Species_Height = mean(Height_cm)) %>%
  ungroup()

# 3. Statistical Hypothesis Testing ---------------------------------------
# Comparing Biomass between two specific species
species_1 <- df %>% filter(Species == "Herba variabilis") %>% pull(Biomass_g)
species_2 <- df %>% filter(Species == "Plantus robusta") %>% pull(Biomass_g)

t_test_results <- t.test(species_1, species_2)
print(t_test_results)

# 4. Visualization 

# 4.1 Comparison Boxplot
ggplot(df, aes(x = Species, y = Height_cm, fill = Species)) +
  geom_boxplot(alpha = 0.7) +
  theme_minimal() +
  labs(title = "Height Distribution by Species", y = "Height (cm)")

# 4.2 Correlation Scatter Plot
ggplot(df, aes(x = Chlorophyll_Content, y = Biomass_g, color = Species)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  theme_classic() +
  labs(title = "Biomass vs Chlorophyll Content", x = "Chlorophyll", y = "Biomass (g)")

# 5. Export Summary 
write.csv(processed_data, "results/processed_plant_traits.csv")
