# Codebook for Stock Index Dataset

## Dataset Description:
This dataset contains monthly stock index values for different countries and regions from January 2024 to January 2025. Each entry includes the date, the corresponding stock market index, and its value for various countries, including Taiwan, the United States, Japan, South Korea, Singapore, the UK, China, and Hong Kong.

### Variables:

| Variable Name      | Class   | Meaning                                         |
|--------------------|---------|-------------------------------------------------|
| `月別`              | Date    | The month and year of the stock index value     |
| `股價指數`          | Factor  | The stock market index (e.g., "台灣-加權指數" for Taiwan Weighted Index) |
| `股價`              | Numeric | The stock index value for that month and index  |

### Dataset Structure:
- **`月別`**: A date field representing the month and year (e.g., "2024-01" for January 2024).
- **`股價指數`**: A factor variable indicating the name of the stock market index, such as "台灣-加權指數" (Taiwan Weighted Index) or "美國-道瓊工業指數" (US Dow Jones Industrial Index).
- **`股價`**: A numeric variable representing the value of the respective stock index for the given month.

### Description of Stock Market Indices:
- **台灣-加權指數**: Taiwan Weighted Index
- **台灣-上櫃指數**: Taiwan Over-the-Counter Index
- **美國-那斯達克指數**: US Nasdaq Index
- **美國-道瓊工業指數**: US Dow Jones Industrial Index
- **日本-日經225指數**: Japan Nikkei 225 Index
- **新加坡-海峽時報指數**: Singapore Straits Times Index
- **南韓-綜合指數**: South Korea KOSPI Index
- **倫敦-金融時報指數**: London Financial Times Stock Exchange Index (FTSE 100)
- **中國-上海綜合指數**: China Shanghai Composite Index
- **中國-香港恆生指數**: Hong Kong Hang Seng Index

## Summary of Data
- **Time Period:** January 2024 - January 2025
- **Number of Observations:** 132
- **Number of Unique Stock Indices:** 10
- **Geographic Coverage:** Taiwan, U.S., Japan, Singapore, South Korea, U.K., China, Hong Kong
- **Notable Trends:**
  - The U.S. and Taiwan stock indices show a general upward trend.
  - The Hang Seng Index (Hong Kong) shows significant fluctuations.
  - The Nikkei 225 (Japan) reached a peak in December 2024 before slightly declining in January 2025.
  - The Financial Times Index (UK) shows steady growth.

