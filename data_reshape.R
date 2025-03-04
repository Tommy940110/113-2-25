# Load necessary libraries
library(tidyr)
library(dplyr)
library(readr)

# Read the dataset
file_path <- "歷年中華民國國民出國目的地人數統計2002-2024.csv"
raw_data <- read_csv(file_path, col_types = cols(.default = "c"))  # Read all columns as character

# Convert to long format
tidy_data <- raw_data %>% 
  pivot_longer(
    cols = -c(首站抵達地, 細分), 
    names_to = "年份", 
    values_to = "旅客人數"
  )

# Clean and convert "旅客人數" column
tidy_data <- tidy_data %>%
  mutate(
    旅客人數 = as.numeric(gsub(",", "", 旅客人數)), # Remove commas and convert to numeric
    旅客人數 = ifelse(is.na(旅客人數), 0, 旅客人數) # Replace missing values with 0
  )

# View the cleaned dataset
head(tidy_data)

write_csv(tidy_data, "tidy_data.csv")

#練習
# 載入必要套件
library(tidyr)
library(dplyr)
library(readr)

# 讀取 CSV 檔案（假設第一列是標題）
file_path <- "每月國際主要股價指數.csv"
raw_practice_data <- read_csv(file_path, col_types = cols(.default = "c"))  # 先讀取為字符，避免格式錯誤

# 轉換為 long format（假設第 1 欄是指數名稱，後面是月份）
tidy_practice_data <- raw_practice_data %>%
  pivot_longer(
    cols = -1,  # 除了第一欄，其他都轉為長格式
    names_to = "月份",  # 新增欄位：月份
    values_to = "股價指數"  # 新增欄位：股價數值
  )

# 移除可能的逗號並轉為數值類型
tidy_practice_data <- tidy_practice_data %>%
  mutate(
    股價指數 = as.numeric(gsub(",", "", 股價指數)),  # 去除千分位逗號
    股價指數 = ifelse(is.na(股價指數), 0, 股價指數)  # 轉換 NA 為 0
  )

# 檢查結果
head(tidy_practice_data)

# 存成 CSV 檔案
write_csv(tidy_practice_data, "tidy_practice_data.csv")