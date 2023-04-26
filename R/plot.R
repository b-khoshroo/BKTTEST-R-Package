

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

  #If we have done a paired t.test:
  if(x$test_type == "Paired")
  {
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

  #If we have done non-paired t.test:
  else
  {
    X <- unlist(x$data[1])
    Y <- unlist(x$data[2])
    data_df <- data.frame(X,Y)

    data_long <- melt(data_df,)

    colnames(data_long) <- c("Category", "Samples")

    ggplot(data_long, aes(x=Category, y=Samples, fill=Category)) +
      geom_boxplot() +
      ggtitle('Boxplots')

  }

}
