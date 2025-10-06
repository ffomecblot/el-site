library(targets); library(tarchetypes)
source("analysis/nlp/R/funs_nlp.R")
tar_option_set(packages = c("dplyr","readr","xgboost","ranger","yardstick","text2vec"))
list(
  tar_target(raw_path, "data/nlp_sample.csv", format = "file"),
  tar_target(nlp_df, nlp_read(raw_path)),
  tar_target(nlp_emb, nlp_embed(nlp_df$text)),
  tar_target(nlp_fit_xgb, nlp_train_xgb(nlp_emb, nlp_df$label)),
  tar_target(nlp_metrics, nlp_eval(nlp_fit_xgb, nlp_emb, nlp_df$label))
)