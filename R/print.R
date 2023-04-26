

#' Title
#'
#' @param x object Rttest
#' @param ... other parameters
#'
#' @return. nothing
#' @export
#'
#' @examples
#' \dontrun{print(x)}
print.Rttest <- function(x, ...)
{
  t <- x$summary_stats
  cat("$ci\n")
  print(t$conf.int)
  cat("\n$Test_type\n")
  print(x$test_type)
}
