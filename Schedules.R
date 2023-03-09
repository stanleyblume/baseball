# Installing Packages -----------------------------------------------------

library(tidyverse)
library(baseballr)


# Global Variables --------------------------------------------------------

year <- 2022
level_ids <- c("1", "11", "12", "13", "14")

# Script ------------------------------------------------------------------

##  Pulling all games for specificed year and level
##  1 = MLB
##  11 = Triple-A
##  12 = Doubl-A
##  13 = Class A Advanced
##  14 = Class A
##  15 = Class A Short Season
##  5442 = Rookie Advanced
##  16 = Rookie
##  17 = Winter League

for (i in 1:length(level_ids)) {
  x <- length(level_ids)
  df <- NULL
  df <- mlb_schedule(season = year, level_ids = level_ids[i])
  if (i == 1) {schedule <- df} else {schedule <- rbind(schedule, df, fill = TRUE)}
  print(i)
}
