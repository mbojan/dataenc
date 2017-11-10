#' Create a data frame with polish characters in UTF-8
#'
#' @return
#' Data frame.
#'
#' @export
pl <- function() {
  data.frame(
    letter = strsplit(paste(letterspl, toupper(letterspl), sep=""), "")[[1]],
    upper_case = rep(c(FALSE, TRUE), each=nchar(letterspl))
  )
}
