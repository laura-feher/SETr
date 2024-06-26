% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_cumu_arm.R
\name{plot_cumu_arm}
\alias{plot_cumu_arm}
\title{Make a graph of change over time by arm position}
\usage{
plot_cumu_arm(data, columns = 4, pointsize = 2, scales = "fixed")
}
\arguments{
\item{data}{data frame (e.g. `$arm` piece of output from `calc_change_cumu()`) with one row per faceting variable, and the following columns, named exactly: event_date_UTC, set_id, SET_direction, mean_cumu. `mean_cumu` should be an already-calculated field of change since baseline.}

\item{columns}{number of columns you want in the faceted output}

\item{pointsize}{size of points you want (goes into the `size` argument of `ggplot2::geom_point`)}

\item{scales}{free or fixed (goes into `scales` arg of `facet_wrap`)}
}
\value{
a ggplot object
}
\description{
x-axis is date; y-axis is the average of the 9 pin heights' difference from baseline (first measurement) for each arm. One facet per SET id.
}
\examples{
cumu_set <- calc_change_cumu(example_sets)
plot_cumu_arm(cumu_set$arm)
plot_cumu_arm(cumu_set$arm, columns = 1, pointsize = 2)
}
