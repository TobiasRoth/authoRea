#' Add textblock to the manuscript
#'
#' With this function a new textblock is added at the end of the manuscript. If
#' you want to change the order use au_layout()
#'
#' @param name Name of textblock to be added.
#' @export
#' 
au_add_textblock <- function(name) {
  fpath <- file.path(getOption("authoRea.dir"), paste0(name, ".html"))
  if(file.exists(fpath)) stop("A textblock with this name already exists.")
  write(fpath, "layout.md", append=TRUE)
  file.create(fpath)
  utils::file.edit(fpath)
}

