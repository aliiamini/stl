
# train_fnn_model
#' Train the STL model
#'
#' @param model A compiled Keras model
#' @param X_train Feature matrix
#' @param y_train Label vector
#' @param weights Sample weights (optional)
#' @param filename Where to save the model
#' @export
train_fnn_model <- function(model, X_train, y_train, weights = NULL, filename = "ces_pretrained_model.h5") {
  model %>% fit(
    x = X_train,
    y = y_train,
    sample_weight = weights,
    epochs = 20,
    batch_size = 32,
    validation_split = 0.2
  )
  model %>% save_model_hdf5(filename)
  invisible(model)
}
