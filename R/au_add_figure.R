#' Add figure to the manuscript
#'
#' With this function a figure that was build with the svg() or png() engine and
#' that is available on the top level of the repository. This function will
#' replace the figure to the figure directory and prepare the settings for the
#' figure to be loaded into the manuscript. The function also open the file were
#' the caption can be added.
#'
#' @param name Path to figure that should be added to the manuscript.
#' @export
#' 
au_add_figure <- function(name){
  tfig_vonfig <- fig_config
  name_ <- unlist(stringr::str_split(name, "[.]"))[1]
  fpath_ <- file.path(getOption("authoRea.imgdir"), name_)
  fpath <- file.path(getOption("authoRea.imgdir"), name_, name)
  url <- file.path("users", 244977, "articles", 324013 ,"master", "file", fpath)
  
  # Make folder for figures if it does not exist
  if(!file.exists(getOption("authoRea.imgdir"))) dir.create(getOption("authoRea.imgdir"))
  
  if(!file.exists(fpath_)) {
    # Make directory
    dir.create(fpath_)
    
    # Add caption
    file.create(file.path(fpath_, "caption.html"))
    writeLines(paste0("<div data-label=\"", name_, "\">Add the caption here.</div>"), 
               file.path(fpath_, "caption.html"))
    
    # Add config
    writeLines(fig_config, file.path(fpath_, "config.yml"))
    
  }
  
  # Copy figure
  file.copy(name, fpath, overwrite = TRUE)
  
  # Add fig config
  tfig_config <- readLines(file.path(fpath_, "config.yml"))
  tfig_config[11] <- paste0("  - path: ", fpath)
  tfig_config[19] <- paste0("    url: \"/", url, "\"")
  writeLines(tfig_config, file.path(fpath_, "config.yml"))
  
  # Open file with caption to edit
  utils::file.edit(file.path(fpath_, "caption.html"))
  
  # Remove original figure
  file.remove(name)
}

