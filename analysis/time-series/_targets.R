library(targets); library(tarchetypes)
source("analysis/time-series/R/funs_ts.R")
tar_option_set(packages = c("dplyr","readr","fable","fabletools","tsibble","yardstick"))
list(
  tar_target(raw_path, "data/ts_sample.csv", format = "file"),
  tar_target(ts_data, ts_read(raw_path)),
  tar_target(ts_split, ts_make_splits(ts_data)),
  tar_target(ts_fit, ts_train(ts_split)),
  tar_target(ts_fc, ts_forecast(ts_fit, h = 6)),
  tar_target(ts_metrics, ts_eval(ts_fc, ts_split))
)