
# finetune_model
#' Fine-tune a pretrained STL model
#'
#' @param model_file Path to the pretrained model file
#' @param X_target Feature matrix of the target dataset
#' @param y_target Outcome vector of the target dataset
#' @param freeze_layers Logical, whether to freeze the early layers
#' @return A fine-tuned Keras model
#' @export
finetune_model <- function(model_file, X_target, y_target, freeze_layers = TRUE) {
  model <- load_model_hdf5(model_file)

  if (freeze_layers) {
    for (layer in model$layers[1:(length(model$layers) - 2)]) {
      layer$trainable <- FALSE
    }
  }

  model %>% compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = 'accuracy')
  model %>% fit(x = X_target, y = y_target, epochs = 10, batch_size = 32)
  return(model)
}
