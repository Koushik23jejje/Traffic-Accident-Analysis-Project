source("data_generation/synthetic_data.R")
source("analysis/temporal_analysis.R")
source("analysis/condition_analysis.R")
source("analysis/spatial_analysis.R")
source("analysis/severity_analysis.R")

# Generate synthetic data
accident_data <- generate_synthetic_data()

# Perform temporal analysis
hourly_data <- analyze_hourly_patterns(accident_data)
temporal_plot <- plot_hourly_accidents(hourly_data)

# Analyze weather and road conditions
weather_road_data <- analyze_weather_road_conditions(accident_data)
conditions_plot <- plot_condition_analysis(weather_road_data)

# Create hotspot visualization
hotspots_plot <- plot_accident_hotspots(accident_data)

# Analyze severity patterns
severity_data <- analyze_severity_weather(accident_data)
severity_plot <- plot_severity_proportions(severity_data)

# Display plots
print(temporal_plot)
print(conditions_plot)
print(hotspots_plot)
print(severity_plot)