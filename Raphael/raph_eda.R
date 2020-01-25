library(tidyverse)
d <- read_csv(
  "AB_NYC_2019.csv",
  col_types =  cols(
    neighbourhood_group = col_factor(),
    neighbourhood = col_factor(),
    room_type = col_factor()))






