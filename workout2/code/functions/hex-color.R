#' @title is_hex
#' @description checking whether an input string is a valid hex color without an alpha transparency value
#' @param hec a string represents a hex color
#' @return a logical value(True or False) whether the string is a valid hex color without an alpha transparency value
is_hex = function(hec){
  if (!is.character(hec)){
    stop("invalid input: a string was expected")
  }
  if (nchar(hec) != 7){
    return(FALSE)
  }
  
  hec_char = toupper(strsplit(hec, split = "")[[1]])
  
  if (hec_char[1] == "#"){
    for (i in 2:length(hec_char)) {
      if (!hec_char[i] %in% c(LETTERS[1:6], 0:9)){
        return(FALSE)
      }
    }
    return(TRUE)
  }
  return(FALSE)
}

#' @title is_hex_alpha
#' @description checking whether an input string is a valid hex color with an alpha transparency value
#' @param hec a string represents a hex color
#' @return a logical value(True or False) whether the string is a valid hex color with an alpha transparency value
is_hex_alpha = function(hec){
  if (!is.character(hec)){
    stop("invalid input: a string was expected")
  }
  if (nchar(hec) != 9){
    return(FALSE)
  }
  
  hec_char = toupper(strsplit(hec, split = "")[[1]])
  
  if (hec_char[1] == "#"){
    for (i in 2:7) {
      if (!hec_char[i] %in% c(LETTERS[1:6], 0:9)){
        return(FALSE)
      }
    }
    return(TRUE)
  }
  return(FALSE)
}