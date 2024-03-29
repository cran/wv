% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wvar.R
\name{compare_wvar}
\alias{compare_wvar}
\title{Comparison Between Multiple Wavelet Variances}
\usage{
compare_wvar(
  ...,
  split = FALSE,
  add_legend = TRUE,
  units = NULL,
  xlab = NULL,
  ylab = NULL,
  main = NULL,
  col_wv = NULL,
  col_ci = NULL,
  nb_ticks_x = NULL,
  nb_ticks_y = NULL,
  legend_position = NULL,
  ci_wv = NULL,
  point_cex = NULL,
  point_pch = NULL,
  names = NULL,
  cex_labels = 0.8,
  x_range = NULL,
  y_range = NULL
)
}
\arguments{
\item{...}{One or more time series objects.}

\item{split}{A \code{boolean} that, if TRUE, arranges the plots into a matrix-like format.}

\item{add_legend}{A \code{boolean} that, if TRUE, adds a legend to the plot.}

\item{units}{A \code{string} that specifies the units of time plotted on the x axes. Note: This argument will not be used if xlab is specified.}

\item{xlab}{A \code{string} that gives a title for the x axes.}

\item{ylab}{A \code{string} that gives a title for the y axes.}

\item{main}{A \code{string} that gives an overall title for the plot.}

\item{col_wv}{A \code{string} that specifies the color of the wavelet variance lines.}

\item{col_ci}{A \code{string} that specifies the color of the confidence interval shade.}

\item{nb_ticks_x}{An \code{integer} that specifies the maximum number of ticks for the x-axis.}

\item{nb_ticks_y}{An \code{integer} that specifies the maximum number of ticks for the y-axis.}

\item{legend_position}{A \code{string} that specifies the position of the legend (use \code{legend_position = NA} to remove legend).}

\item{ci_wv}{A \code{boolean} that determines whether confidence interval polygons will be drawn.}

\item{point_cex}{A \code{double} that specifies the size of each symbol to be plotted.}

\item{point_pch}{A \code{double} that specifies the symbol type to be plotted.}

\item{names}{A \code{string} that specifies the name of the WVAR objects.}

\item{cex_labels}{A \code{double} that specifies the magnification of the labels (x and y).}

\item{x_range}{A \code{vector} that specifies the range of values on the x axis (default NULL).}

\item{y_range}{A \code{vector} that specifies the range of values on the y axis (default NULL).}
}
\description{
Displays plots of multiple wavelet variances of different time series accounting for CI values.
}
\examples{
set.seed(999)
n = 10^4
Xt = arima.sim(n = n, list(ar = 0.10))
Yt = arima.sim(n = n, list(ar = 0.35))
Zt = arima.sim(n = n, list(ar = 0.70))
Wt = arima.sim(n = n, list(ar = 0.95))

wv_Xt = wvar(Xt)
wv_Yt = wvar(Yt)
wv_Zt = wvar(Zt)
wv_Wt = wvar(Wt)

compare_wvar(wv_Xt, wv_Yt, wv_Zt, wv_Wt)
}
\author{
Stephane Guerrier and Justin Lee
}
