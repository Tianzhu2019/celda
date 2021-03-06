% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/celda_C.R
\docType{methods}
\name{celdaUmap,celda_C-method}
\alias{celdaUmap,celda_C-method}
\title{umap for celda_C}
\usage{
\S4method{celdaUmap}{celda_C}(counts, celda.mod, max.cells = 25000,
  min.cluster.size = 100, modules = NULL,
  umap.config = umap::umap.defaults)
}
\arguments{
\item{counts}{Integer matrix. Rows represent features and columns represent cells. This matrix should be the same as the one used to generate `celda.mod`.}

\item{celda.mod}{Celda object of class `celda_C`.}

\item{max.cells}{Integer. Maximum number of cells to plot. Cells will be randomly subsampled if ncol(counts) > max.cells. Larger numbers of cells requires more memory. Default 25000.}

\item{min.cluster.size}{Integer. Do not subsample cell clusters below this threshold. Default 100.}

\item{modules}{Integer vector. Determines which features modules to use for UMAP. If NULL, all modules will be used. Default NULL.}

\item{umap.config}{An object of class "umap.config" specifying parameters to the UMAP algorithm.}

\item{...}{Additional parameters.}
}
\value{
A two column matrix of t-SNE coordinates
}
\description{
Embeds cells in two dimensions using umap based on a `celda_C` model. PCA on the normalized counts is used to reduce the number of features before applying umap.
}
\examples{
umap.res = celdaUmap(celda.C.sim$counts, celda.C.mod)
}
\seealso{
`celda_C()` for clustering cells and `celdaHeatmap()` for displaying expression
}
