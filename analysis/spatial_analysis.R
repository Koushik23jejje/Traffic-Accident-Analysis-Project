library(tidyverse)
library(ggmap)

plot_accident_hotspots <- function(data) {
  map <- get_stamenmap(
    bbox = c(left = -74.2, bottom = 40.5, right = -73.8, top = 40.9),
    maptype = "terrain",
    zoom = 12
  )
  
  ggmap(map) +
    geom_point(
      data = data, 
      aes(x = longitude, y = latitude, color = severity), 
      alpha = 0.5
    ) +
    scale_color_manual(
      values = c("Minor" = "green", "Moderate" = "orange", "Severe" = "red")
    ) +
    labs(
      title = "Traffic Accident Hotspots",
      x = "Longitude",
      y = "Latitude",
      color = "Severity"
    ) +
    theme_minimal()
}