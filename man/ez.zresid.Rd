% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{ez.zresid}
\alias{ez.zresid}
\title{z residual}
\usage{
ez.zresid(model, center = TRUE, scale = TRUE)
}
\description{
z residual, as.vector(scale(resid(model),center=T,scale=T))
}
\note{
according to jerry's test, \code{\link[stats]{rstandard}} and \code{\link[MASS]{stdres}} give the same results
\cr this function gives slightly different result (but very close)
\cr all three functions give different results from spss: linear regression->save->residuals, standarized
}
