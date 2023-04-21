#' Title
#'
#' @param x an object of class Rttest
#' @param ... other parameters
#' @importFrom kableExtra kable
#'
#' @return prints the object
#' @export
#'
#' @examples
#' \dontrun{print(x)}
print.Rttest <- function(x, ...)
{
  kableExtra::kable(x$data)
}
