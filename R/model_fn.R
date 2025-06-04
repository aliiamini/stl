

# model_fn
#' Build and compile the FNN model
#'
#' @param input_shape Number of input features
#' @return A compiled Keras model
#' @export
build_fnn_model <- function(input_shape) {
  model <- keras_model_sequential() %>%
    layer_dense(units = 16, activation = 'relu', input_shape = input_shape, kernel_regularizer = regularizer_l2(0.01)) %>%
    layer_batch_normalization() %>%
    layer_dropout(0.3) %>%
    layer_dense(units = 64, activation = 'relu', kernel_regularizer = regularizer_l2(0.01)) %>%
    layer_batch_normalization() %>%
    layer_dropout(0.4) %>%
    layer_dense(units = 32, activation = 'relu', kernel_regularizer = regularizer_l2(0.01)) %>%
    layer_batch_normalization() %>%
    layer_dropout(0.4) %>%
    layer_dense(units = 32, activation = 'relu', kernel_regularizer = regularizer_l2(0.01)) %>%
    layer_batch_normalization() %>%
    layer_dropout(0.3) %>%
    layer_dense(units = 16, activation = 'relu', kernel_regularizer = regularizer_l2(0.01)) %>%
    layer_batch_normalization() %>%
    layer_dropout(0.3) %>%
    layer_dense(units = 8, activation = 'relu', kernel_regularizer = regularizer_l2(0.01)) %>%
    layer_batch_normalization() %>%
    layer_dropout(0.2) %>%
    layer_dense(units = 1, activation = 'sigmoid')

  model %>% compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = 'accuracy')
  return(model)
}

