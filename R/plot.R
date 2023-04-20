

#' Boxplot
#'
#' @param x an object of class Rttest
#' @param ... other parameters
#'
#' @return a boxplot
#' @importFrom ggplot2
#' @importFrom reshape2 melt
#' @export
#'
#' @examples
#' plot(x)
#'
plot.Rttest <- function(x,...)
{
  data_long <- melt(x$data)

  ggplot(data_long, aes(x = variable,y=value)) +
    geom_boxplot()
}
