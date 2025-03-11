# Load necessary libraries
library(tidyverse)

# Create a tibble with your data (assuming it's read from a CSV file)
stock_data <- read_csv("tidy_practice_data.csv", col_types = cols(
  月別 = col_character(),
  股價指數 = col_character(),
  股價 = col_double()
))

# Convert '月別' to a date format (assuming YYYY-MM format)
stock_data <- stock_data %>%
  mutate(日期 = as.Date(paste0(月別, "-01")), .before = 月別)

# Summary statistics
summary_stats <- stock_data %>%
  group_by(股價指數) %>%
  summarise(
    最小值 = min(股價, na.rm = TRUE),
    最大值 = max(股價, na.rm = TRUE),
    平均值 = mean(股價, na.rm = TRUE),
    標準差 = sd(股價, na.rm = TRUE),
    .groups = "drop"
  )

# Print summary statistics
print(summary_stats)

# Plot trends for each stock index
ggplot(stock_data, aes(x = 日期, y = 股價, color = 股價指數)) +
  geom_line() +
  labs(title = "Stock Index Trends", x = "Date", y = "Stock Index Value") +
  theme_minimal()
