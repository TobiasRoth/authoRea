% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/au_file_delete.R
\name{au_file_delete}
\alias{au_file_delete}
\title{Remove blocks that were unintentionally created in AUTHOREA}
\usage{
au_file_delete(path)
}
\arguments{
\item{path}{File name inkluding the entire path.}
}
\description{
Quite often new files with cryptic names are created when a new block is
unintentionally added in AUTHOREA. The function deletes one such block and
also deletes the entry in layout.rm. The function is not vectorized. Several
blocks need to be deleted by applying the function one by one.
}
