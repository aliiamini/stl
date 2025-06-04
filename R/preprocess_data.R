
# preprocess_data
#' Preprocess data for STL model
#'
#' @param df A data frame with features and outcome
#' @param outcome Column name of outcome
#' @param features Vector of predictor column names
#' @return A list with processed X, y
#' @export
preprocess_data <- function(df, outcome, features) {
  X <- scale(df[, features])
  y <- df[[outcome]]
  list(X = X, y = y)
}
