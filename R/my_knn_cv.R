#' k-nearest neighbors cross-validation function
#'
#' This function predicts an output class using covariates.
#' 
#' @param train Input data frame.
#' @param cl True class value of your training data.
#' @param k_nn Integer representing the number of neighbors.
#' @param k_cv Integer representing the number of folds.
#' @keywords prediction
#' 
#' @return List with objects:
#'   "class": a vector of the predicted class $\hat{Y}_{i}$ for all observations
#'   "cv_err": a numeric with the cross-validation misclassification error
#' 
#' @examples
#' 
#' @export