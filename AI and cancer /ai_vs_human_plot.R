
# ai_vs_human_plot.R
# This script creates a bar chart comparing AI vs Human performance in AML diagnosis

# Load library
library(ggplot2)

# Create dataset manually
performance_data <- data.frame(
  Metric = c("Accuracy", "Sensitivity", "Specificity"),
  AI = c(97.8, 98.1, 96.7),
  Human = c(88.5, 85.0, 89.0)
)

# Convert to long format for plotting
performance_long <- pivot_longer(performance_data, cols = c("AI", "Human"),
                                 names_to = "Method", values_to = "Value")

# Plot
ggplot(performance_long, aes(x = Metric, y = Value, fill = Method)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "AI vs Human Performance in AML Diagnosis",
       y = "Percentage (%)",
       x = "Performance Metric") +
  theme_minimal() +
  scale_fill_manual(values = c("AI" = "#5ec962", "Human" = "#3b528b"))
