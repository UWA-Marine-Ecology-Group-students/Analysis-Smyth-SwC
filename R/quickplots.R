
###
# Project: South-west Corner
# Data:    BRUV habitat
# Task:    Quick plots and map of bruv habitat data
# author:  Kingsley Griffin
# date:    June 2021
##

library(ggplot2)
library(dplyr)

# bring in bruv and habitat data

bfish <- read.csv('data/tidy/2020_south-west_stereo-BRUVs.complete.maxn.csv')
bhab  <- read.csv('data/tidy/2020-south-west_stereo-BRUVS_habitat_with_metadata.csv')
all   <- merge(bfish, bhab, by = "sample")

head(all)

# quick plots of habitat-maxn relationships as random example

ggplot(data = all, aes(broad.macroalgae, maxn, colour = family)) + 
  geom_point() + geom_smooth() + facet_wrap( ~ family, scales = "free_y")

