nlp_read <- function(path) {
  readr::read_csv(path)
}
nlp_embed <- function(texts) {
  # placeholder embeddings (random)
  set.seed(42); matrix(rnorm(length(texts)*16), ncol=16)
}
nlp_train_xgb <- function(X, y) {
  list(model="xgb")
}
nlp_eval <- function(model, X, y) {
  data.frame(metric="f1_macro", value=NA_real_)
}