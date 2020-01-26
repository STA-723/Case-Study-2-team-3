
load("d_clean.RDATA")

# price & proximity to metro (upward trend)
d_clean %>%
  ggplot(aes(y = price_log, x = proximity_metro)) +
  geom_point(alpha = 0.1) +
  geom_smooth()
cor(d_clean$proximity_metro, d_clean$price_log)


# price & proximity {no clear trend}
d_clean %>%
  filter(name_listing_sentiment %>% between(-2, 3)) %>%
  ggplot(aes(y = price_log, x = name_listing_sentiment)) +
  geom_point(alpha = 0.1) +
  geom_smooth()

# price & name frequency (strong trend)
d_clean %>%
  ggplot(aes(y = price_log, x = name_host_freq)) +
  geom_point(alpha = 0.1) +
  geom_smooth()

d_clean %>% 
  filter(!is.na(name_host_freq)) %>% # quick an dirty way to remove people with no name
  select(name_host_freq, price_log) %>% cor

