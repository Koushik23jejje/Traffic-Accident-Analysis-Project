library(tidyverse)

analyze_weather_road_conditions <- function(data) {
  data %>%
    count(weather, road_condition, severity)
}

plot_condition_analysis <- function(weather_road_data) {
  ggplot(weather_road_data, aes(x = weather, y = n, fill = road_condition)) +
    geom_bar(stat = "identity", position = "dodge") +
    facet_wrap(~ severity) +
    labs(
      title = "Accidents by Weather, Road Condition, and Severity",
      x = "Weather Condition",
      y = "Number of Accidents",
      fill = "Road Condition"
    ) +
    theme_minimal()
}