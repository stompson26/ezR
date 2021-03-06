% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basic.R
\name{ez.num}
\alias{ez.num}
\title{convert a column (or all columns) in a data frame, or a vector into numeric type, call type.convert or as.numeric}
\usage{
ez.num(x, col = NULL, force = FALSE, ...)
}
\arguments{
\item{x}{a character vector, data frame, list, or a factor}

\item{col}{internally evaluated by eval('dplyr::select()')()
\cr        if x is a data frame, col is specified (e.g., "cond"), convert that col only
\cr        if x is a data frame, col is unspecified (i.e., NULL default), convert all cols in x
\cr        if x is not a data frame, col is ignored}

\item{force}{T/F, if force, will try to convert everything (factor, etc) to character first then to numeric, (no warning for NA coerce)
\cr else only convert a vec/col that only has string of num, eg '1'->1, see example for "gentle" output}
}
\value{
returns a converted vector, data frame
\cr with \code{\link{ez.2value}} if x is a factor with chars, will be converted to 1 2 3 etc, see its example
\cr \code{\link{ez.num}} keeps the same char as is
}
\description{
convert a column (or all columns) in a data frame, or a vector into numeric type, call type.convert or as.numeric
}
\details{
Both value and variable label attributes will be removed when converting variables to characters.

see \url{http://stackoverflow.com/a/22701462/2292993}
}
\examples{
ez.num(c(1,'2','a',3,NA))          # -> same chara vector
ez.num(c(1,'2',3,NA))              # -> 1 2 3 NA int vector
ez.num(factor(c(1,'2','a',3,NA)),force=T)  # -> 1 2 NA 3 NA int (warning is suppressed)
ez.num(factor(c(1,'2','a',3, NA)),force=F)  # factor['1','2','a','3', 'NA']
ez.num(factor(c(1,'2',3, NA)),force=F)  # factor['1','2','3', NA]
ez.num(factor(c(1,'2',3,NA)),force=T)  # 1 2 3 NA int

d <- data.frame(char = letters[1:5], 
                fake_char = as.character(1:5), 
                fac = factor(1:5), 
                char_fac = factor(letters[1:5]), 
                mixed_char = c(1,2,3,'4','f'),
                num = 1:5, stringsAsFactors = FALSE)
#   char fake_char fac char_fac mixed_char num
# 1    a         1   1        a          1   1
# 2    b         2   2        b          2   2
# 3    c         3   3        c          3   3
# 4    d         4   4        d          4   4
# 5    e         5   5        e          f   5
sapply(d, class)
#        char   fake_char         fac    char_fac  mixed_char         num 
# "character" "character"    "factor"    "factor" "character"   "integer" 
sapply(ez.num(d), class)
       char   fake_char         fac    char_fac  mixed_char         num 
"character"   "integer"    "factor"    "factor" "character"   "integer" 
}
\seealso{
\code{\link{ez.2value}}

Other data transformation functions: \code{\link{ez.2char}},
  \code{\link{ez.2factor}}, \code{\link{ez.2label}},
  \code{\link{ez.2long}}, \code{\link{ez.2lower}},
  \code{\link{ez.2value}}, \code{\link{ez.2wide}},
  \code{\link{ez.compute}}, \code{\link{ez.del}},
  \code{\link{ez.label.get}}, \code{\link{ez.label.set}},
  \code{\link{ez.leftjoin}}, \code{\link{ez.move}},
  \code{\link{ez.newcol}}, \code{\link{ez.recode}},
  \code{\link{ez.recols}}, \code{\link{ez.recol}},
  \code{\link{ez.rename}}, \code{\link{ez.replace}},
  \code{\link{ez.rncols}}, \code{\link{ez.rncol}},
  \code{\link{ez.select}}, \code{\link{ez.sort}},
  \code{\link{ez.split}}, \code{\link{ez.str}},
  \code{\link{ez.unique}}, \code{\link{ez.values.get}},
  \code{\link{ez.values.set}}
}
