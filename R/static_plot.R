#' @title Static Plot
#' @description Basic plotting
#' 
#' @param x Time series table
#' 
#' @details XXXXX
#' 
#' @return A plot
#' 
#' @export

static_plot <- function(x) {
  if (class(x) == "ts"){
    forecast::ggseasonplot(x)
  }
  else if (class(x) == "matrix") {
    ggplot2::ggplot(x)
  }
  else if (class(x) == "data.frame") {
    ggplot2::ggplot(x)
  }
  else {
    plot(x)
  }
}