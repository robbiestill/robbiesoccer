#' Import a PNG image for use in ggplot.
#'
#' @param filename the location of the image.
#'
#' @return a png object.
#' @examples
#'logo <- get_png(RCurl::getURLContent("https://cdn.freebiesupply.com/logos/large/2x/tottenham#'-hotspur-logo-png-transparent.png"))

get_png <- function(filename) {
  grid::rasterGrob(png::readPNG(filename), interpolate = TRUE)
}
