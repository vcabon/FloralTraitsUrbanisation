# Run analysis on floral trait metrics and urbanisation

# Load useful R-packages

library("rsq")
library("car")
library("ggplot2")
library("patchwork")

# Load dataset

data_traits_predictors <- read.csv("Data/ANALYSES_floral_traits_urbanisation.csv", header=TRUE, sep=",", row.names=1)
attach(data_traits_predictors)

# Set data for analysis

source("Scripts/Set_data.R")

# Run GLMs

source("Scripts/Run_glms.R")

# Create and export plots

source("Scripts/Export_plots.R")
