% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iSCMEB.R
\name{iscmeb_run}
\alias{iscmeb_run}
\title{Fit an iSC-MEB model using specified multi-section embeddings}
\usage{
iscmeb_run(
  VList,
  AdjList,
  K,
  beta_grid = seq(0, 5, by = 0.2),
  maxIter = 25,
  epsLogLik = 1e-05,
  verbose = TRUE,
  int.model = "EEE",
  init.start = 1,
  Sigma_equal = FALSE,
  Sigma_diag = TRUE,
  seed = 1
)
}
\arguments{
\item{VList}{a M-length list of embeddings. The i-th element is a ni * q matrtix, where ni is the number of spots of sample i, and q is the number of embeddings. We provide this interface for those users who would like to define the embeddings by themselves.}

\item{AdjList}{an M-length list of sparse matrices with class \code{dgCMatrix}, specify the adjacency matrix used for intrisic CAR model in FAST. We provide this interface for those users who would like to define the adjacency matrix by themselves.}

\item{K}{an integer, specify the number of clusters.}

\item{beta_grid}{an optional vector of positive value, the candidate set of the smoothing parameter to be searched by the grid-search optimization approach, defualt as a sequence starts from 0, ends with 5, increase by 0.2.}

\item{maxIter}{the maximum iteration of ICM-EM algorithm. The default is 25.}

\item{epsLogLik}{a string, the species, one of 'Human' and 'Mouse'.}

\item{verbose}{an optional intger, spcify the number of housekeeping genes to be selected.}

\item{int.model}{an optional string, specify which Gaussian mixture model is used in evaluting the initial values for iSC.MEB, default as "EEE"; and see \code{\link{Mclust}} for more models' names.}

\item{init.start}{an optional number of times to calculate the initial value (1 by default). When init.start is larger than 1, initial value will be determined by log likelihood of mclust results.}

\item{Sigma_equal}{an optional logical value, specify whether Sigmaks are equal, default as \code{FALSE}.}

\item{Sigma_diag}{an optional logical value, specify whether Sigmaks are diagonal matrices, default as \code{TRUE}.}

\item{seed}{an optional integer, the random seed in fitting iSC-MEB model.}
}
\value{
returns a iSCMEBResObj object which contains all model results.
}
\description{
Integrate multiple SRT data based on the PRECASTObj by FAST and iSC-MEB model fitting.
}
