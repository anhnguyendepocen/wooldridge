#' traffic2
#'
#' Data loads lazily. Type data(traffic2) into the console.
#'
#' @docType data
#'
#' @usage data(traffic2)
#'
#' @format A data.frame with 108 rows and 48 variables:
#' \itemize{
#'  \item year. 1981 to 1989
#'  \item totacc. statewide total accidents
#'  \item fatacc. statewide fatal accidents
#'  \item injacc. statewide injury accidents
#'  \item pdoacc. property damage only accidents
#'  \item ntotacc. noninterstate total acc.
#'  \item nfatacc. noninterstate fatal acc.
#'  \item ninjacc. noninterstate injur acc.
#'  \item npdoacc. noninterstate property acc.
#'  \item rtotacc. tot. acc. on rural 65 mph roads
#'  \item rfatacc. fat. acc. on rural 65 mph roads
#'  \item rinjacc. inj. acc. on rural 65 mph roads
#'  \item rpdoacc. prp. acc. on rural 65 mph roads
#'  \item ushigh. acc. on U.S. highways
#'  \item cntyrds. acc. on county roads
#'  \item strtes. acc. on state routes
#'  \item t. time trend
#'  \item tsq. t^2
#'  \item unem. state unemployment rate
#'  \item spdlaw. =1 after 65 mph in effect
#'  \item beltlaw. =1 after seatbelt law
#'  \item wkends. # weekends in month
#'  \item feb. =1 if month is Feb.
#'  \item mar. 
#'  \item apr. 
#'  \item may. 
#'  \item jun. 
#'  \item jul. 
#'  \item aug. 
#'  \item sep. 
#'  \item oct. 
#'  \item nov. 
#'  \item dec. 
#'  \item ltotacc. log(totacc)
#'  \item lfatacc. log(fatacc)
#'  \item prcfat. 100*(fatacc/totacc)
#'  \item prcrfat. 100*(rfatacc/rtotacc)
#'  \item lrtotacc. log(rtotacc)
#'  \item lrfatacc. log(rfatacc)
#'  \item lntotacc. log(ntotacc)
#'  \item lnfatacc. log(nfatacc)
#'  \item prcnfat. 100*(nfatacc/ntotacc)
#'  \item lushigh. log(ushigh)
#'  \item lcntyrds. log(cntyrds)
#'  \item lstrtes. log(strtes)
#'  \item spdt. spdlaw*t
#'  \item beltt. beltlaw*t
#'  \item prcfat_1. prcfat[_n-1]
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(traffic2)
"traffic2"
 
 
