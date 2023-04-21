

#' Boxplot
#'
#' @param x an object of class Rttest
#' @param ... other parameters
#'
#' @return a boxplot
#' @import ggplot2
#' @importFrom reshape2 melt
#' @export
#'
#' @examples
#'\dontrun{print(x)}
plot.Rttest <- function(x,...)
{
  data_long <- melt(x$data)

  ggplot(data_long, aes(x = variable, y= value)) +
    geom_boxplot()
}
