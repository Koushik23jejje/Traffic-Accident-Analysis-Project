library(tidyverse)
library(lubridate)

generate_synthetic_data <- function(n_records = 1000, seed = 42) {
  set.seed(seed)
  
  tibble(
    accident_id = 1:n_records,
    date_time = as.POSIXct("2023-01-01 00:00:00", tz = "UTC") + 
      runif(n_records, 0, 60*60*24*365),
    weather = sample(
      c("Clear", "Rainy", "Snowy", "Foggy"), 
      size = n_records, 
      replace = TRUE, 
      prob = c(0.5, 0.3, 0.1, 0.1)
    ),
    road_condition = sample(
      c("Dry", "Wet", "Icy"), 
      size = n_records, 
      replace = TRUE, 
      prob = c(0.6, 0.3, 0.1)
    ),
    severity = sample(
      c("Minor", "Moderate", "Severe"), 
      size = n_records, 
      replace = TRUE, 
      prob = c(0.7, 0.2, 0.1)
    ),
    latitude = runif(n_records, min = 40.5, max = 40.9),
    longitude = runif(n_records, min = -74.2, max = -73.8)
  )
}