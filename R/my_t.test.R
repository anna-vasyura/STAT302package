#' T test function
#'
#' This function runs a t test on a vector of numbers.
#' 
#' @param x Numeric vector input of data to be subjected to a t test by \code{my_t.test}.
#' @param alternative Character string input specifying the alternative hypothesis for
#'   \code{my_t.test} is being run. This should only accept `"two.sided"`, `"less"`, or 
#'   `"greater"`. Otherwise, your function should throw an informative error.
#' @param mu Numeric input indicating the null hypothesis of the mean that \code{my_t.test}
#'   will compare the mean to.
#' @keywords inference
#' 
#' @return List with elements: 
#'   "test_stat": the numeric test statistic.
#'   "df": the degrees of freedom.
#'   "alternative": the value of the parameter `alternative`.
#'   "p_val": the numeric p-value.
#'   
#' @examples
#' x <- as.vector(subset(data.frame(my_gapminder), select = c("lifeExp")))
#' alternative <- c("two.sided", "less", "greater")
#' mu <- 60
#' 
#' my_t.test(x, alternative = "two.sided", mu)
#' 
#' my_t.test(x, alternative = "less", mu)
#' 
#' my_t.test(x, alternative = "greater", mu)
#' 
#' @export
my_t.test <- function(x, alternative, mu){
  my_se <- sd(x)/sqrt(length(x))
  test_stat <- (mean(x) - mu)/my_se
  my_df <- length(x) - 1
  if (alternative == "greater") {
    p_val <- pt(test_stat, my_df, lower.tail = FALSE)
  } else if (alternative == "two.sided") {
    p_val <- 2 * pt(abs(test_stat), my_df, lower.tail = FALSE)
  } else if (alternative == "less") {
    p_val <- pt(test_stat, my_df, lower.tail = TRUE)
  } else {
    stop("Alternative must be 'two.sided', 'less', or 'greater'.")
  }
  my_results <- data.frame(
    "test_stat" = test_stat, 
    "df" = my_df, 
    "alternative" = alternative, 
    "p-val" = p_val,
    "mean" = mean(x),
    check.names = FALSE)
  return(as.list(my_results))
}