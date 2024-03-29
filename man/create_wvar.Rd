% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wvar.R
\name{create_wvar}
\alias{create_wvar}
\title{Create a \code{wvar} object}
\usage{
create_wvar(
  obj,
  decomp,
  filter,
  robust,
  eff,
  alpha,
  scales,
  unit,
  mean_diff,
  N,
  ranged,
  J
)
}
\arguments{
\item{obj}{A \code{matrix} with dimensions N x 3 that contains Wavelet Variance, Lower CI, and Upper CI.}

\item{decomp}{A \code{string} that indicates whether to use a "dwt" or "modwt" decomposition.}

\item{filter}{A \code{string} that specifies the type of wavelet filter used in the decomposition.}

\item{robust}{A \code{boolean} that triggers the use of the robust estimate.}

\item{eff}{A \code{double} that indicates the efficiency as it relates to an MLE.}

\item{alpha}{A \code{double} that specifies the significance level which in turn specifies the \eqn{1-\alpha} confidence level.}

\item{scales}{A \code{vec} that contains the amount of decomposition performed at each level.}

\item{unit}{A \code{string} that indicates the unit expression of the frequency.}

\item{mean_diff}{A \code{double} that specified the empirical mean of the first difference.}

\item{N}{A \code{integer} that specified the empirical length of the time series.}

\item{ranged}{A \code{double} that specified the scaled range of the data, i.e. (max(x) - min(x))/length(x).}

\item{J}{A \code{integer} that specified the number of scales.}
}
\value{
A \code{list} with the structure:
\itemize{
  \item "variance": Wavelet variance
  \item "ci_low": Lower CI
  \item "ci_high": Upper CI
  \item "robust": Robust active
  \item "eff": Efficiency level for robust calculation
  \item "alpha": p value used for CI
  \item "unit": String representation of the unit
  \item "mean_diff": Empirical mean of the first difference
  \item "N": Length of the time series
  \item "ranged": Scaled range of the data, i.e. (max(x) - min(x))/length(x)
  \item "J": Number of scales
}
}
\description{
Structures elements into a \code{wvar} object
}
\keyword{internal}
