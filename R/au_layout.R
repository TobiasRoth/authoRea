#' Open Layout-file to change order of content
#'
#' The layout.md is a file that is needed by AUTHOREA to know the order of the
#' files (called 'blocks' in AUTHOREA) that should be included into the
#' manuscript. The function simply opens the layout file and the order of the
#' blocks can then be addapted.
#' @export
#'
au_layout <- function() {
  avail <- file.exists("layout.md")
  if(!avail) stop("There should be a layout.md file at the top level of the repository.")
  if(avail) utils::file.edit("layout.md")
}