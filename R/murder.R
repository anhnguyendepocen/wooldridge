#' murder
#'
#' Data loads lazily. Type data(murder) into the console.
#'
#' @docType data
#'
#' @usage data(murder)
#'
#' @format A data.frame with 153 rows and 13 variables:
#' \itemize{
#'  \item id. state identifier
#'  \item state. postal code
#'  \item year. 87, 90, or 93
#'  \item mrdrte. murders per 100,000 people
#'  \item exec. total executions, past 3 years
#'  \item unem. annual unem. rate
#'  \item d90. =1 if year == 90
#'  \item d93. =1 if year == 93
#'  \item cmrdrte. mrdrte - mrdrte[_n-1]
#'  \item cexec. exec - exec[_n-1]
#'  \item cunem. unem - unem[_n-1]
#'  \item cexec_1. cexec[_n-1]
#'  \item cunem_1. cunem[_n-1]
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(murder)
"murder"
 
 
