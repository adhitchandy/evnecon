# Load packages ---------------------------------------------------------------
library(tidyverse)
library(magrittr)
library(glue)
library(here)
library(MatchIt)


# Set reference point for relative paths --------------------------------------
here()

#reading the data
#setwd("empirical/data/zaklan_replication")

electricity_market_data <- read.csv("electricity_market_data.csv")
eutl_oha_data <- read.csv("EUTL_OHA_data.csv")
fuel_eua_p <- read.csv("fuel_eua_p.csv")
fuel_type_info <- read.csv("fuel_type_info.csv")
nace <- read.csv("nace.csv")
trading_banking_data <- read.csv("trading_banking_data.csv")

#Task 1:
data_inst <- eutl_oha_data %>%
  filter(year %in% c(2009:2017))

colnam <- colnames(data_inst)
todel <- colnam[!colnam %in% c(
        "installationidentifier",
        "account_holder",
        "registry_code",
        "installation_name",
        "year",
        "allocated",
        "verified_emiss"
)]
data_inst <- data_inst %>%
  select(-todel)
data_inst <- data_inst %>%
  mutate(verified_emiss = case_when(
    verified_emiss %in% c("Excluded", "Not Reported") ~ NA_character_,
    TRUE ~ as.character(verified_emiss)
  )) %>%
  mutate(verified_emiss = as.numeric(verified_emiss))