#' @rdname roll
#' @param x an object \code{"roll"}
#' @param \dots further arguments ignored
#' @export
#' @examples
#' roll100 <- roll(die(), times = 100)
#' summary(roll100)
#' 
summary.roll <- function(x, ...) {
  # summary method for object of class "roll"
  freqs <- table(x$rolls)
  relative_freqs <- prop.table(freqs)
  # table of frequencies
  roll_freqs <- as.data.frame(cbind(
    side = x$sides, 
    count = freqs, 
    prop = relative_freqs))
  obj <- list(freqs = roll_freqs)
  class(obj) <- "summary.roll"
  obj
}


#' @export
print.summary.roll <- function(x, ...) {
  # print summary method for object of class "roll"
  cat('summary "roll"\n\n')
  print(x$freqs)
  invisible(x)
}


#' @export
plot.roll <- function(x, ...) {
  # plot method for objects of class "roll"
  freqs <- prop.table(table(x$rolls))
  barplot(freqs, border = NA, las = 1,
          xlab = "sides of die",
          ylab = "relative frequencies")
  title(sprintf("Frequencies in a series of %s die rolls", length(x$rolls)))
}


#' @export
"[<-.roll" <- function(x, i, value) {
  # replacement method for "roll"
  if (all(x$sides != value)) {
    stop(paste('\nreplacing value must be one of', x$sides))
  }
  if (i > length(x$rolls)) {
    stop("\nindex out of bounds")
  }
  x$rolls[i] <- value
  x
}


#' @export
"[.roll" <- function(x, i) {
  # extraction method for objects of class "roll"
  x$rolls[i]
}


#' @export
"+.roll" <- function(obj, incr) {
  # addition method for class "roll"
  if (length(incr) != 1 | incr <= 0) {
    stop("\ninvalid increament")
  }
  more_rolls <- roll_die(obj, times = incr)
  obj$rolls <- c(obj$rolls, more_rolls)
  obj$total <- length(obj$rolls)
  obj
}


#' @rdname roll
#' @param x an R object
#' @export
is.roll <- function(x) {
  # check class "roll"
  inherits(x, "roll")
}
