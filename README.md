# Traffic Accident Analysis Project

This project analyzes synthetic traffic accident data to identify patterns and trends in accident occurrence, severity, and contributing factors.

## Project Structure

```
├── data_generation/
│   └── synthetic_data.R      # Functions for generating synthetic accident data
├── analysis/
│   ├── temporal_analysis.R   # Time-based analysis functions
│   ├── condition_analysis.R  # Weather and road condition analysis
│   ├── spatial_analysis.R    # Geographic distribution analysis
│   └── severity_analysis.R   # Accident severity analysis
├── main.R                    # Main script to run the complete analysis
├── .gitignore               # Git ignore file
└── README.md                # Project documentation
```

## Requirements

Required R packages:
- tidyverse
- lubridate
- sf
- ggmap

## Installation

```R
install.packages(c("tidyverse", "lubridate", "sf", "ggmap"))
```

## Usage

1. Clone the repository
2. Install required packages
3. Run `main.R` to execute the complete analysis

## Analysis Components

1. **Temporal Analysis**: Examines accident patterns by time of day
2. **Condition Analysis**: Analyzes relationships between weather, road conditions, and accidents
3. **Spatial Analysis**: Visualizes accident hotspots on a map
4. **Severity Analysis**: Investigates factors contributing to accident severity

## Contributing

Feel free to submit issues and enhancement requests!