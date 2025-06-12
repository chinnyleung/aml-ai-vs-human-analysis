
# stage_analysis.R
# This script loads and visualises NHS blood cancer staging data for Slide 1

# Load libraries
library(tidyverse)

# Load data (female and male CSVs to be placed in /data/)
female_data <- read.csv("data/cancer_stage_female_2022.csv")
male_data <- read.csv("data/cancer_stage_male_2022.csv")

# Combine datasets with gender label
female_data$Gender <- "Female"
male_data$Gender <- "Male"
combined_data <- rbind(female_data, male_data)

# Shorten long cancer names (optional)
combined_data$CancerType <- recode(combined_data$CancerType,
                                   "Acute Myeloid Leukaemia" = "AML",
                                   "Chronic Lymphocytic Leukaemia" = "CLL",
                                   "Chronic Myeloid Leukaemia" = "CML",
                                   "Multiple Myeloma" = "Myeloma")

# Calculate % of late-stage diagnoses (Stage 3+4)
combined_data <- combined_data %>%
  mutate(LateStage = Stage.3...4 / (Stage.1...2 + Stage.3...4) * 100)

# Create bar plot
ggplot(combined_data, aes(x = CancerType, y = LateStage, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Late-Stage Diagnosis in Blood Cancers (2022)",
       y = "% Diagnosed at Stage 3–4",
       x = "Blood Cancer Type") +
  theme_minimal() +
  scale_fill_manual(values = c("Female" = "#ff66b2", "Male" = "#3399ff"))
