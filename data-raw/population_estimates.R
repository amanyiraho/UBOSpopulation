## code to prepare `population_estimates` dataset goes here


download.file(url = "https://www.ubos.org/wp-content/uploads/statistics/Revised_Subcounty_population_2015_2030_146_Districts.xlsx",
              destfile = "./data-raw/population_2015_2030_146_Districts.xlsx")

library(glue)
library(tidyverse)
library(readxl)

years <- 2015:2030

sub_column <- c("male_{year}","female_{year}","total_{year}")



column_names <- c("district_city", "lower_local_government")

for (year in years) {
  for (column in sub_column){

    column_name <- glue(column)

    column_names <-  c(column_names, column_name)
  }
}

untidy_national <- read_xlsx("data-raw/population_2015_2030_146_Districts.xlsx",
                             col_names = column_names,
                             skip = 2)

population_estimates <- untidy_national |>
  filter(!(is.na(district_city) & is.na(lower_local_government))) |>
  pivot_longer(cols = -c("district_city", "lower_local_government"),names_to = "cat_year", values_to = "population") |>
  tidyr::fill(district_city,.direction = "down") |>
  mutate(lower_local_government = replace_na(lower_local_government, "District_level")) |>
  separate(cat_year, into = c("categroy", "year"),sep = "_" ) |>
  mutate(across(c(district_city, lower_local_government, categroy), as.factor))

usethis::use_data(population_estimates, overwrite = TRUE)
