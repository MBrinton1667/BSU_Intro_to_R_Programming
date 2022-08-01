# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
avgusdrmb <- function()
{
  options(warn = -1)
  Packages <- c("dplyr", "rvest", "priceR", "stringi")
  lapply(Packages, library, character.only = TRUE)
  current_rates <- exchange_rate_latest()
  bloom <- current_rates[which(current_rates$currency == "CNY"),]
  bloom <- bloom[bloom$currency == "CNY", 2]
  boc <- read_html("https://www.boc.cn/sourcedb/whpj/enindex_1619.html")
  tables <- html_elements(boc, "tr")
  tibbles <- html_table(tables)
  boc_data <- data.frame(tibbles[which(stri_detect_fixed(tibbles, "Currency Name") & (stri_detect_fixed(tibbles, "You are here", negate = T)))])
  bocUSDtoRMB <- boc_data[which(boc_data$Currency.Name == "USD"), "Buying.Rate"] / 100
  average <- mean(c(bloom, bocUSDtoRMB))
  USDRMB <<- round(average, 4)
  RMBUSD <<- round(1 / average, 4)
  
  return(c("USD to RMB" = USDRMB, "RMB to USD" = RMBUSD))
}


