#' Open file to change the titel
#'
#' The title.html was produced by AUTHOREA that contains the title of the
#' manuscript. The function simply opens the title file and the content can be
#' changed. The text of the titel should be within <div> tags. Do not forget to
#' save the file after having adapted the title.
#' @export
#' 
au_title <- function() {
  avail <- file.exists("title.html")
  if(!avail) stop("There should be a title.html file at the top level of repository.")
  if(avail) file.edit("title.html")
}