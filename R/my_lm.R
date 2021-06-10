#' Linear model function
#'
#' This function fits a linear model of data in R.
#' 
#' @param formula Formula class object that \code{lm} will use.
#' @param data Input data frame for \code{lm}.
#' @keywords inference
#' 
#' @return Table with rows for each coefficient, including "Intercept",
#'   and columns for "Estimate", "Std. Error", "t value", and "Pr(>|t|):.
#' 
#' @examples
#' my_lm(formula = lifeExp ~ gdpPercap + continent, data = my_gapminder)
#' 
#' @export