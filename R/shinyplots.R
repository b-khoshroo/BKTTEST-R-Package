

#' Title
#'
#' @description Dynamic plots using shiny
#'
#' @return Plots
#' @export
#'
#' @examples
#' \dontrun{shinyplots()}
shinyplots <- function()
{
  shiny::runApp(system.file("shinyApp", package="BKTTEST"),
                launch.browser=TRUE)
}
