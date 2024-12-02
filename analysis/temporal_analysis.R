library(tidyverse)
library(lubridate)

analyze_hourly_patterns <- function(data) {
  data %>%
    mutate(hour = hour(date_time)) %>%
    count(hour)
}

plot_hourly_accidents <- function(hourly_data) {
  ggplot(hourly_data, aes(x = hour, y = n)) +
    geom_line(color = "blue", size = 1) +
    labs(
      title = "Accidents by Hour of Day",
      x = "Hour of Day",
      y = "Number of Accidents"
    ) +
    theme_minimal()
}