library(tidyverse)
d <- read_csv(
  "AB_NYC_2019.csv",
  col_types =  cols(
    id = col_double(),
    name = col_character(),
    host_id = col_double(),
    host_name = col_character(),
    neighbourhood_group = col_factor(),
    neighbourhood = col_character(),
    latitude = col_double(),
    longitude = col_double(),
    room_type = col_character(),
    price = col_double(),
    minimum_nights = col_double(),
    number_of_reviews = col_double(),
    last_review = col_date(format = ""),
    reviews_per_month = col_double(),
    calculated_host_listings_count = col_double(),
    availability_365 = col_double()
  ))

# Own strengths & weaknesses

### ideas:
## feature engineering
# property names: sentiment analysis, length
# host name: frequency of names, origin of name (systematic way?)
# longitude/latitude: proximity to attractions/metro
## clean data
# removing noise: people with no reviewpeople whose last review is 6 years ago, ...

# Q1: BMA, random forest (Variable Importance)
# Q3: hierarchical model?
# Q4: sentiment analysis on name





