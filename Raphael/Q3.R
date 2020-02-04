# http://www.sthda.com/english/wiki/chi-square-test-of-independence-in-r
tab_Q3 <- d %>% select(neighbourhood_group, room_type) %>% table
test_Q3 <- chisq.test(tab_Q3) # p < 1e-16 (but with such a large sample, any test would be statistically significant...)

contrib <- 100*test_Q3$residuals^2/test_Q3$statistic # contribution to statistic

contrib %>% as_tibble() %>% mutate(`Contribution (in %)` = n/100) %>% # contribution
  ggplot(aes(x = neighbourhood_group, y = room_type)) +
  geom_count(aes(size = `Contribution (in %)`)) +
  scale_size_continuous(range = c(0, 15)) +
  labs(x = "neighbourhood groups", y = "room type")

test_Q3$residuals %>% as_tibble() %>% # standardized residuals
  ggplot(aes(x = neighbourhood_group, y = room_type)) +
  geom_count(aes(size = abs(n), col = n)) +
  scale_color_gradient2(low="red", mid = "white", high="blue") +
  scale_size_continuous(range = c(0, 15)) +
  labs(x = "neighbourhood groups", y = "room type")
