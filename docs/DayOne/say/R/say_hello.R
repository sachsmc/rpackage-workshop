#' A function to say hello
#'
#' Specify a name and a punctuation character,
#' and the function will print a personalized greeting.
#'
#' @param name  Character string containing the name of the
#'              gretee, with a reasonable default
#' @param punct Character to terminate the greeting with;
#'              default is full stop (\code{.})
#'
#' @details This function works by concatenating strings. Note
#'          that by the power of R, this function is inherently
#'           vectorized, see Examples.
#'
#' @return \code{NULL}. This function is called for its side effect,
#'         to print a greeting to the console.
#'
#' @note Currently, this function will only greet in English.
#'
#' @references For an overview of earlier, less flexible implementations,
#'    see \url{https://en.wikipedia.org/wiki/\%22Hello,_World!\%22_program}
#'
#' @author Alexander Ploner \email{Alexander.Ploner@ki.se}
#'
#' @seealso \code{\link[base]{paste}}
#'
#' @examples
#' # Generic defaults
#' say_hello()
#'
#' # Note: two very different use cases
#' say_hello("LETTERS")
#' say_hello(LETTERS, punct = ". ")
#'
#' # Much flexibility
#' say_hello(name = c("Brian", "Fritz"), punct = "!\n")
#' @export
say_hello <-
function(name = "my little friend", punct = ".")
{
  cat( paste0("Hello, ", name, punct), "\n", sep ="")
}
