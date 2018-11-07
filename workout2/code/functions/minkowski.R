#' @title minkowski
#' @description calculate minkowski distance 
#' @param x numeric vector for one point
#' @param y numeric vector for the other point
#' @param p either a numeric value greater than 1, or a character string max (default 1)
#' @return minkowski distance order p between x and y
minkowski = function(x, y, p = 1){
  if (length(x) != length(y)){
    stop("x and y have different lengths.")
  }
  if (is.numeric(p)){ 
    if (p < 1) {
      stop("p should be less than 1")
    }
    dist = 0
    for (i in 1:length(x)) {
      dist = dist + abs(x[i] - y[i])^p
    }
    return(dist^(1/p))
  }
  else if (p == 'max') {
    dist = abs(x[1] - y[1])
    for (i in 2:length(x)) {
      newdist = abs(x[i] - y[i])
      if (newdist > dist){
        dist = newdist
      }
    }
    return(dist)
  } 
  else {
    stop("p is Invalid value")
  }
}
