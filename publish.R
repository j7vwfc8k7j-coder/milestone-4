run_quarto <- function(arguments) {
  status <- system2("quarto", arguments)
  if (status != 0) {
    stop("Quarto command failed: quarto ", paste(arguments, collapse = " "))
  }
}

run_quarto(c("render", "index.qmd"))
run_quarto(c("publish", "gh-pages"))
