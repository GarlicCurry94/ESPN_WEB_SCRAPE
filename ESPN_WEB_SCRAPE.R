setwd("~/GitHub/ESPN_WEB_SCRAPE")

install.packages("rvest")
install.packages("dplyr")
install.packages("stringr")
install.packages("tidyverse")
install.packages("writex1")

library(rvest)
library(dplyr)
library(stringr)
library(tidyverse)
library(writexl)

shedule_url <- read_html("https://www.espn.co.uk/nba/team/schedule/_/name/phx/phoenix-suns")

suns_shedule <- shedule_url %>% html_node("table") %>% html_table(fill = TRUE)

data(suns_shedule)
View(suns_shedule)

write_xlsx(suns_shedule, "Phoenix_Suns_Shedule.xlsx")