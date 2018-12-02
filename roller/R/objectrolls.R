# auxiliar function to check 'times'
check_times <- function(times) {
  if (times <= 0 | !is.numeric(times)) {
    stop("\nargument 'times' must be a positive integer")
  } else {
    TRUE
  }
}

# auxiliar function to roll a die
roll_die <- function(x, times = 1) {
  sample(x$sides, size = times, replace = TRUE, prob = x$prob)
}

# roll_die <- function(x, times = 1) {
#   rolls <- sample(x$sides, size = times, replace = TRUE, prob = x$prob)
#   object <- list(
#     rolls = rolls,
#     sides = x$sides,
#     prob = x$prob,
#     total = times)
#   class(object) <- "roll"
#   object
# }


# internal constructor function for object "roll"
make_roll <- function(die, rolls) {
  object <- list(
    rolls = rolls,
    sides = die$sides,
    prob = die$prob,
    total = length(rolls))
  class(object) <- "roll"
  object
}


#' @title Roll object
#' @description main roll function
#' @param die object of class "die"
#' @param times number of times to roll the die
#' @return an object of class "roll"
#' @export
#' @examples 
#' # fair die
#' die1 <- die()
#' 
#' # roll a coin 5 times
#' roll5 <- roll(die1, times = 5)
roll <- function(die, times = 1) {
  rolls <- roll_die(die, times = times)
  make_roll(die, rolls)
}



#' @export
print.roll <- function(x, ...) {
  # print method for object of class "roll"
  cat('object "roll"\n\n')
  cat('$rolls\n')
  print(x$rolls)
  invisible(x)
}
