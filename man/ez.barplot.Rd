% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{ez.barplot}
\alias{ez.barplot}
\title{barplot with ggplot}
\usage{
ez.barplot(df, cmd, color = "color", bar.gap = 0.7, bar.width = 0.7,
  error.size = 0.7, error.gap = 0.7, error.width = 0.3,
  error.direction = "both", ylab = NULL, xlab = NULL, zlab = NULL,
  legend.position = "top", legend.direction = "horizontal",
  legend.box = T, legend.size = c(0, 10), xangle = 0, vjust = NULL,
  hjust = NULL)
}
\arguments{
\item{df}{data frame in long format (but be careful that standard error might be inaccurate depending on grouping in the long format)}

\item{cmd}{like "y|x, y|x z, y|x z a" where y (axis) is continous, x (axis) z/a (legend) are discrete; during plot x z a ->x za(combined)}

\item{color}{"bw" or "color"  black/white or colorblind-friendly color}

\item{bar.gap}{the gap between bars}

\item{bar.width}{the width of bar itself}

\item{error.size}{the thickness of error bar line}

\item{error.gap}{the location of errorbar, should be equal to bar.width(?)}

\item{error.width}{the width of the bar of error}

\item{error.direction}{"both", "max", "min"}

\item{ylab}{y label NULL}

\item{xlab}{x label NULL}

\item{zlab}{z/a/fill/legend label, only applicable when there is z provided NULL}

\item{legend.position}{legend position 'top', 'bottom', 'left', 'right', 'none', c(x,y,two-element numeric vector)
\cr         c(0,0) corresponds to the "bottom left" and c(1,1) corresponds to the "top right" position.
\cr         if no z/a (legend) provided, auto force to 'none'}

\item{legend.direction}{horizontal or vertical}

\item{legend.box}{box of legend, T or F}

\item{legend.size}{c(0,10) the first number 0 controls the legend title, 0=hide; the second number controls legend.key.size, legend.text}

\item{xangle}{angle of x text 0}

\item{vjust}{vjust of x text NULL}

\item{hjust}{hjust of x text NULL}
}
\value{
a ggplot object (+theme_apa() to get apa format plot), +scale_y_continuous(limits=c(-5,8),breaks=seq(-5,8,by=2),oob=scales::rescale_none)
\cr see http://stackoverflow.com/a/31437048/2292993 for discussion
}
\description{
barplot with ggplot
}
