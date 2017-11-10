#' @export ab
#' @export pl
.onLoad <- function(libname, pkgname) {
  makeActiveBinding("ab", abf, env=asNamespace("dataenc"))
  makeActiveBinding("pl", create_pl, env=asNamespace("dataenc"))
}
