#' @title counting vowels
#' @description count number of vowels in string
#' @param s a string which need to be checked
#' @return a vector containing vowels and counts
count_vowels = function(s){
  if (!is.character(s)){
    stop("invalid input: a string was expected")
  }
  s_chars = tolower(strsplit(s, split = "")[[1]])
  a = 0
  e = 0
  i = 0
  o = 0
  u = 0
  for (j in 1:nchar(s)){
    if (s_chars[j] == "a"){
      a = a + 1
    }else if(s_chars[j] == "e"){
      e = e + 1
    }else if(s_chars[j] == "i"){
      i = i + 1
    }else if(s_chars[j] == "o"){
      o = o + 1
    }else if(s_chars[j] == "u"){
      u = u + 1
    }
  }
  count = c(a, e, i, o, u)
  names(count) = c('a', 'e', 'i', 'o', 'u')
  return(count)
}
