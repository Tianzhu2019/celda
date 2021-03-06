% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/celda_CG.R
\docType{methods}
\name{celdaUmap,celda_CG-method}
\alias{celdaUmap,celda_CG-method}
\title{umap for celda_CG}
\usage{
\S4method{celdaUmap}{celda_CG}(counts, celda.mod, max.cells = 25000,
  min.cluster.size = 100, modules = NULL,
  umap.config = umap::umap.defaults)
}
\arguments{
\item{counts}{Integer matrix. Rows represent features and columns represent cells. This matrix should be the same as the one used to generate `celda.mod`.}

\item{celda.mod}{Celda object of class `celda_CG`.}

\item{max.cells}{Integer. Maximum number of cells to plot. Cells will be randomly subsampled if ncol(counts) > max.cells. Larger numbers of cells requires more memory. Default 25000.}

\item{min.cluster.size}{Integer. Do not subsample cell clusters below this threshold. Default 100.}

\item{modules}{Integer vector. Determines which features modules to use for tSNE. If NULL, all modules will be used. Default NULL.}

\item{umap.config}{Object of class `umap.config`. Configures parameters for umap. Default `umap::umap.defaults`}
}
\value{
A two column matrix of t-SNE coordinates
}
\description{
Embeds cells in two dimensions using umap based on a `celda_CG` model. umap is run on module probabilities to reduce the number of features instead of using PCA. Module probabilities square-root trasformed before applying tSNE.
}
\examples{
umap.res = celdaUmap(celda.CG.sim$counts, celda.CG.mod)
}
\seealso{
`celda_CG()` for clustering features and cells  and `celdaHeatmap()` for displaying expression
}
