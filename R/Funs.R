#' Hello World
#'
#' `hello` says _"Hello, world!"_
#'
#' @return `"Hello, world!"`
#' @param
#' \describe{
#'   \item{lang}{ a `character` vector of length 1 thaht correspond to one of the code in the dataset language (see ?language) }
#'   \item{name}{ a `character` vector of lenth 1 that specifies the name of the person to whom the message is}
#' }
#'
#' @export


hello <- function(lang = 'en', name="") {
  lang= tolower(lang)
  if(lang %in% ex1::language$code){
    hello_word = ex1::language$hello[language$code==lang]
    cat(stringr::str_c(hello_word, name, '!', sep=' '))
    #cat(paste(hello_word,name, "!", sep=' '))
  }
  else{
    cat('Please provide correct code, \ntype see `?language` for more ')
  }
}
