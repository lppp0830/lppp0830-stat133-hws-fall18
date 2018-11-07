#' @title reverse character
#' @description reverse characters in a string
#' @param s reversed string
#' @return a reversed string
reverse_chars = function(s){
  library(stringr)
  reversed = ""
  s_chars = strsplit(s, split = "")[[1]]
  n = nchar(s)
  
  for (i in 1:n){
    reversed = paste0(reversed, s_chars[n + 1 - i])
  }
  return(reversed)
}