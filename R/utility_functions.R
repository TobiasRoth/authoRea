.onLoad <- function(libname, pkgname) {
  # Set some global options when loading the package
  op <- options()
  op.authoRea <- list(
    authoRea.dir = "AUTHOREA",
    authoRea.imgdir = "figures",
    authoRea.userID = NA,
    authoRea.msID = NA
  )
  toset <- !(names(op.authoRea) %in% names(op))
  if(any(toset)) options(op.authoRea[toset])
  
  invisible()
}

#' Set custom name of AUTHOREA directory
#'
#' Set the directory name that contains the content of blocks of the manuscript.
#' Defeault setting is "AUTHOREA". Best leave it like that.
#' 
#' @param name Name of directory that contains the AUTHOREA blocks.
#' @export
#' 
au_directory <- function(name) {
  options(authoRea.dir = name)
}

#' Set custom name of directory for figures
#'
#' Set the directory name that contains the figures for the manuscript.
#' Defeault setting is "figures". Best leave it like that.
#' 
#' @param name Name of directory that contains the AUTHOREA blocks.
#' @export
#' 
au_image_directory <- function(name) {
  options(authoRea.imgdir = name)
}

#' Set user-ID and manuscript ID
#'
#' Set the user ID and the manuscript ID. Both number you can obtain from the
#' url to your manuscript in AUTHOREA.
#'
#' @param userID ID number of of the owner of the manuscript in AUTHOREA.
#' @param msID ID number of of the manuscript.
#' @export
#' 
au_set_IDs <- function(userID, msID) {
  options(authoRea.userID = userID)
  options(authoRea.msID = msID)
}
