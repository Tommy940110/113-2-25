library(tidyverse)
library(lubridate)  # For handling date formats

# Import CSV
tidy_practice_data <- read_csv("tidy_practice_data.csv",
                               col_names = c("month", "stock_index_name", "stock_value"),
                               col_types = cols(
                                 month = col_character(),
                                 stock_index_name = col_character(),
                                 stock_value = col_double()
                               )
)

# Convert `month` to Date using lubridate::ym()
tidy_practice_data <- tidy_practice_data %>%
  mutate(month = ym(month))  # Convert "YYYY-MM" to proper Date format

# View cleaned data
glimpse(tidy_practice_data)