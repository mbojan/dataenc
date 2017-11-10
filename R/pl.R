#' Create a data frame with polish characters in UTF-8
#'
#' @return
#' Data frame.
#'
#' @export
create_pl <- function() {
  rval <- data.frame(
    letter = strsplit(paste(letterspl, toupper(letterspl), sep=""), "")[[1]],
    upper_case = rep(c(FALSE, TRUE), each=nchar(letterspl))
  )
  ischar <- vapply(rval, is.character, logical(1))
  rval[ischar] <- lapply(rval[ischar], enc2native)
  rval
}

letterspl <- "ąćęłńóśźż"
