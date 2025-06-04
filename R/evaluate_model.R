

# evaluate_model
#' Evaluate model on new data
#' @param model_file File path of fine-tuned model
#' @param X Matrix of input features
#' @param y True labels
#' @param weights Sample weights
#' @export
evaluate_model <- function(model_file, X, y, weights) {
  model <- load_model_hdf5(model_file)
  y_prob <- model %>% predict(X)
  y_pred <- ifelse(y_prob > 0.5, 1, 0)

  acc <- Metrics::accuracy(y, y_pred, weights)
  prec <- Metrics::precision(y, y_pred, weights)
  rec <- Metrics::recall(y, y_pred, weights)
  f1 <- Metrics::f1(y, y_pred, weights)
  auc <- pROC::auc(pROC::roc(y, y_prob, weights = weights))

  list(accuracy = acc, precision = prec, recall = rec, f1 = f1, auc = auc)
}

