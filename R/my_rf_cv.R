#' Random forest cross-validation function
#'
#' This function predicts an output class using covariates.
#' 
#' @param k Number of folds.
#' @keywords prediction
#' 
#' @return Numeric with cross-validation error.
#' 
#' @examples
#' 
#' @export
my_rf_cv <- rf.cv