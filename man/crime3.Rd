% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crime3.R
\docType{data}
\name{crime3}
\alias{crime3}
\title{crime3}
\format{A data.frame with 106 rows and 12 variables:
\itemize{
 \item district. district number
 \item year. 72 or 78
 \item crime. crimes per 1000 people
 \item clrprc1. clear-up perc, prior year
 \item clrprc2. clear-up perc, two-years prior
 \item d78. =1 if year = 78
 \item avgclr. (clrprc1 + clrprc2)/2
 \item lcrime. log(crime)
 \item clcrime. change in lcrime
 \item cavgclr. change in avgclr
 \item cclrprc1. change in clrprc1
 \item cclrprc2. change in clrprc2
}}
\source{
\url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
}
\usage{
data(crime3)
}
\description{
Data loads lazily. Type data(crime3) into the console.
}
\examples{
 str(crime3)
}
\keyword{datasets}
