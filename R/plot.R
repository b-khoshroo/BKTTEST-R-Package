

#' Boxplot
#'
#' @param x an object of class Rttest
#' @param ... other parameters
#'
#' @return a boxplot
#' @import ggplot2
#' @export
#'
#' @examples
#'\dontrun{print(x)}
plot.Rttest <- function(x,...)
{
  #data_long <- melt(x$data,)

  #ggplot(data_long, aes(x = variable, y= value)) +
   # geom_boxplot()

  #extracting each data set in the list as a vector
  x_vector <- unlist(x$data[1])
  y_vector <- unlist(x$data[2])

  #creating the difference vector
  d <- x_vector - y_vector

  #converting d to a data frame
  d_df <- data.frame(d)

  #ggplot(d_df, aes(x = "difference", y= d)) +
  #     geom_boxplot()

  #for the confidence interval
  ci <- x$summary_stats$conf.int

  #converting ci to data frame
  ci_df <- data.frame(ci)

  #ggplot(ci_df, aes(x="",y=ci)) +
  #       geom_line()

  ggplot() +
    geom_boxplot(data=d_df, aes(x="",y=d), fill = "orange") +
    geom_line(data=ci_df,aes(x="",y=ci), linewidth = 2.5) +
    labs(x = "Difference", y = "myd") +
    ggtitle("Differences Boxplot with the Confidence Interval")
}
