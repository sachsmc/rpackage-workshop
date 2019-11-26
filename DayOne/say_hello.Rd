\name{say_hello}
\alias{say_hello}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to say hello
}
\description{
Specify a name and a punctuation character, and the function will print a personalized greeting.
}
\usage{
say_hello(name = "my little friend", punct = ".")
}
\arguments{
  \item{name}{Character string containing the name of the gretee, with a reasonable default
}
  \item{punct}{Character to terminate the greeting with; default is full stop (\code{.})
}
}
\details{
Ths function works by concatenating strings. Note that by the power R, this function is inherently vectorized, see Examples.
}
\value{\code{NULL}. This function is called for its side effect, to print a greeting to the console.
}
\references{
For an overview of earlier, less flexible implementations, see \url{https://en.wikipedia.org/wiki/\%22Hello,_World!\%22_program}
}
\author{
Alexander Ploner <Alexander.Ploner@ki.se>
}
\note{
Currently, this function will only greet in English.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{paste}}
}
\examples{
# Generic defaults
say_hello()

# Note: two very different use cases
say_hello("LETTERS")
say_hello(LETTERS)

# Much flexibility
say_hello(name = c("Brian", "Fritz"), punct = "!\n")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{utilities}% use one of  RShowDoc("KEYWORDS")
\keyword{misc}% __ONLY ONE__ keyword per line
