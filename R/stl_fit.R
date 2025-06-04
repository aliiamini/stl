


# stl_fit
#' Fit Survey Transfer Learning (STL) Model
#'
#' This function fits a deep feedforward neural network on a source survey dataset (e.g., CES),
#' and optionally fine-tunes it on a target dataset (e.g., ANES) using shared demographic variables.
#'
#' @param source_df A data frame containing the source survey (e.g., CES). Must include outcome and predictors.
#' @param target_df Optional data frame for the target survey (e.g., ANES) used for fine-tuning.
#' @param outcome A string. The name of the binary outcome variable (e.g., "votetrump").
#' @param freeze_layers Logical. If TRUE, freezes early layers before fine-tuning.
#' @return A trained Keras model object.
#' @export
stl_fit <- function(source_df, target_df = NULL, outcome, freeze_layers = TRUE) {
  features <- setdiff(names(source_df), outcome)
  X_train <- scale(source_df[, features])
  y_train <- source_df[[outcome]]

  model <- build_fnn_model(input_shape = ncol(X_train))
  model <- train_fnn_model(model, X_train, y_train, filename = "ces_pretrained_model.h5")

  if (!is.null(target_df)) {
    X_target <- scale(target_df[, features])
    y_target <- target_df[[outcome]]

    if (freeze_layers) {
      for (layer in model$layers[1:(length(model$layers) - 2)]) {
        layer$trainable <- FALSE
      }
    }

    model %>% compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = 'accuracy')
    model %>% fit(x = X_target, y = y_target, epochs = 10, batch_size = 32)
  }

  return(model)
}
