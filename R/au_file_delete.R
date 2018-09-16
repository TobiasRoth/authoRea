#' Remove blocks that were unintentionally created in AUTHOREA
#'
#' Quite often new files with cryptic names are created when a new block is
#' unintentionally added in AUTHOREA. The function deletes one such block and
#' also deletes the entry in layout.rm. The function is not vectorized. Several
#' blocks need to be deleted by applying the function one by one.
#' 
#' @param path File name inkluding the entire path.
#' @export
#' 
au_file_delete <- function(path) {
  file.remove(path)
  tmp <- readLines("layout.md")
  tmp <- tmp[tmp != path]
  writeLines(tmp, "layout.md")
}

