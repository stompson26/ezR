% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{ez.readx2}
\alias{ez.readx2}
\title{read an xlsx file, wrapper of \code{\link[xlsx]{read.xlsx}} from the xlsx package, internally trim (leading and trailing) string spaces}
\usage{
ez.readx2(file, sheetIndex = 1, tolower = FALSE, stringsAsFactors = TRUE,
  ...)
}
\arguments{
\item{tolower}{whether to convert all column names to lower case}

\item{stringsAsFactors}{T/F}
}
\value{
when stringsAsFactors=T, in the returned data frame, string to factor
\cr number stored as text in excel (->string) -> factor
}
\description{
read an xlsx file, wrapper of \code{\link[xlsx]{read.xlsx}} from the xlsx package, internally trim (leading and trailing) string spaces
}
\examples{
read.xlsx(file, sheetIndex, sheetName=NULL, rowIndex=NULL,
          startRow=NULL, endRow=NULL, colIndex=NULL,
          as.data.frame=TRUE, header=TRUE, colClasses=NA,
          keepFormulas=FALSE, encoding="unknown", ...)
colClasses: Only numeric, character, Date, POSIXct, column types are accepted
colClasses=c("Date", "character","integer", rep("numeric", 2),  "POSIXct")
}
