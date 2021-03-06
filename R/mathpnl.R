#' mathpnl
#'
#' Data loads lazily. Type data(mathpnl) into the console.
#'
#' @docType data
#'
#' @usage data(mathpnl)
#'
#' @format A data.frame with 3850 rows and 52 variables:
#' \itemize{
#'  \item distid. district identifier
#'  \item intid. intermediate school district
#'  \item lunch. percent eligible for free lunch
#'  \item enrol. school enrollment
#'  \item ptr. pupil/teacher: 1995-98
#'  \item found. foundation grant, $:  1995-98
#'  \item expp. expenditure per pupil
#'  \item revpp. revenue per pupil
#'  \item avgsal. average teacher salary
#'  \item drop. high school dropout rate, percent
#'  \item grad. high school grad. rate, percent
#'  \item math4. percent satisfactory, 4th grade math
#'  \item math7. percent satisfactory, 7th grade math
#'  \item choice. number choice students
#'  \item psa. # public school academy studs.
#'  \item year. 1992-1998
#'  \item staff. staff per 1000 students
#'  \item avgben. avg teacher fringe benefits
#'  \item y92. =1 if year == 1992
#'  \item y93. =1 if year == 1993
#'  \item y94. =1 if year == 1994
#'  \item y95. =1 if year == 1995
#'  \item y96. =1 if year == 1996
#'  \item y97. =1 if year == 1997
#'  \item y98. =1 if year == 1998
#'  \item lexpp. log(expp)
#'  \item lfound. log(found)
#'  \item lexpp_1. lexpp[_n-1]
#'  \item lfnd_1. lfnd[_n-1]
#'  \item lenrol. log(enrol)
#'  \item lenrolsq. lenrol^2
#'  \item lunchsq. lunch^2
#'  \item lfndsq. lfnd^2
#'  \item math4_1. math4[_n-1]
#'  \item cmath4. math4 - math4_1
#'  \item gexpp. lexpp - lexpp_1
#'  \item gexpp_1. gexpp[_n-1
#'  \item gfound. lfound - lfnd_1
#'  \item gfnd_1. gfound[_n-1]
#'  \item clunch. lunch - lunch[_n-1]
#'  \item clnchsq. lunchsq - lunchsq[_n-1]
#'  \item genrol. lenrol - lenrol[_n-1]
#'  \item genrolsq. genrol^2
#'  \item expp92. expp in 1992
#'  \item lexpp92. log(expp92)
#'  \item math4_92. math4 in 1992
#'  \item cpi. consumer price index
#'  \item rexpp. real spending per pupil, 1997$
#'  \item lrexpp. log(rexpp)
#'  \item lrexpp_1. lrexpp[_n-1]
#'  \item grexpp. lrexpp - lrexpp_1
#'  \item grexpp_1. grexpp[_n-1]
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(mathpnl)
"mathpnl"
 
 
