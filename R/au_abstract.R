#' Open file to change the abstract
#'
#' The file abstract.html in your working AUTHOREA directory contains the text
#' of the abstract. The function simply opens the file and the content can be
#' changed. The text should be within <div> tags. Do not forget to save the file
#' after having adapted the abstract.
#' @export
#' 
au_abstract <- function() {
  fpath <- file.path(getOption("authoRea.dir"), "abstract.html")
  avail <- file.exists(fpath)
  if(!avail) {
    file.create(fpath)
    write(fpath, "layout.md", append=TRUE)
  }
  file.edit(fpath)
}
