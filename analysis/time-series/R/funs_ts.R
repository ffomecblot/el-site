ts_read <- function(path) {
  readr::read_csv(path)
}

ts_make_splits <- function(df) {
  df # placeholder: add time-based split
}

ts_train <- function(splits) {
  # placeholder training
  list(model="ets")
}

ts_forecast <- function(model, h=6) {
  # placeholder
  data.frame(h = seq_len(h), value = NA_real_)
}

ts_eval <- function(fc, splits) {
  data.frame(metric = "MASE", value = NA_real_)
}