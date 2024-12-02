library(tidyverse)

analyze_severity_weather <- function(data) {
  data %>%
    count(weather, severity) %>%
    group_by(weather) %>%
    mutate(prop = n / sum(n))
}

plot_severity_proportions <- function(severity_data) {
  ggplot(severity_data, aes(x = weather, y = prop, fill = severity)) +
    geom_bar(stat = "identity") +
    labs(
      title = "Proportion of Severity by Weather Condition",
      x = "Weather Condition",
      y = "Proportion",
      fill = "Severity"
    ) +
    theme_minimal()
}