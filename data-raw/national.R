## code to prepare `national` dataset goes here

download.file(url = "https://www.ubos.org/wp-content/uploads/statistics/Revised_Subcounty_population_2015_2030_146_Districts.xlsx",
              destfile = "./data-raw/population_2015_2030_146_Districts.xlsx")

download.file(url = "https://www.ubos.org/wp-content/uploads/statistics/Revised_Subcounty_population_2015_2030_146_Districts.xlsx",
              destfile = "./data-raw/population_2015_2030_146_Districts.csv")

library(readxl)
library(readr)
library(purrr)
library(glue)

years <- 2015:2030

sub_column <- c("male_{year}","female_{year}","total_{year}")



column_names <- c("district_city", "lower_local_government")

for (year in years) {
  for (column in sub_column){

    column_name <- glue(column)

    column_names <-  c(column_names, column_name)
  }
}

df <- read_xlsx("data-raw/population_2015_2030_146_Districts.xlsx",
                col_names = column_names,
                skip = 2)

usethis::use_data(national, overwrite = TRUE)
