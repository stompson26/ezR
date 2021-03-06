% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{ez.reads}
\alias{ez.reads}
\title{read spss .sav file with foreign package}
\usage{
ez.reads(file, atm2fac = 2, usrna = TRUE, tolower = FALSE,
  stringsAsFactors = TRUE, ...)
}
\arguments{
\item{atm2fac}{c(1,2,3). atomic means logic,numeric/double,integer,character/string etc. Char to factor controlled separately by stringsAsFactors.
\cr 1: atomic with a value.label/attribute kept as is (eg, gender 1/2 numeric). SPSS value label kept as R attribute (Male/Female). 
\cr 2: atomic with a value.label/attribute converted to factor (eg, gender 1/2 factor). SPSS value label kept as R attribute (Male/Female). Should be desirable most of time.
\cr 3: atomic with a value.label/attribute converted to factor, also factor values replaced by value labels (eg, gender Male/Female factor). No R attribute. Useful for plotting.}

\item{usrna}{if TRUE, honor/convert user-defined missing values in SPSS to NA after reading into R; if FALSE, keep user-defined missing values in SPSS as their original codes after reading into R. Should generally be TRUE, because most R stuff does not auto recognize attr well.}

\item{tolower}{whether to convert all column names to lower case}

\item{stringsAsFactors}{T/F}
}
\description{
internally trim (leading and trailing) string spaces (The leading could be user written, the trailing could come from SPSS padding to Width). 
\cr SPSS numeric -> R numeric
\cr SPSS string (could be string of num) -> R character...then, when stringsAsFactors=T... -> R factor.
\cr SPSS Type (numeric, string) matters, but Measure (scale, ordinal, nominal) seems to not matter
\cr See param for more other details.
\cr Also somehow auto replace irregular chars in the col names (eg, @-->.)
}
\note{
As of Nov, 2017, haven package eariler version is somewhat buggy, less powerful, but has been evolving a lot. I am not going to update haven right now. So stick with foreign. Potentially, one can also use SPSS R plugin to pass data between SPSS and R.
}
