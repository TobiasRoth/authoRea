% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/au_add_figure.R
\name{au_add_figure}
\alias{au_add_figure}
\title{Add figure to the manuscript}
\usage{
au_add_figure(name)
}
\arguments{
\item{name}{Path to figure that should be added to the manuscript.}
}
\description{
With this function a figure that was build with the svg() or png() engine and
that is available on the top level of the repository. This function will
replace the figure to the figure directory and prepare the settings for the
figure to be loaded into the manuscript. The function also open the file were
the caption can be added.
}
