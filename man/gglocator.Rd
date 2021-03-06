% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/gglocator.R
\name{gglocator}
\alias{gglocator}
\title{Locator for ggplots.}
\usage{
gglocator(n = 1, message = FALSE, xexpand = c(0.05, 0),
  yexpand = c(0.05, 0))
}
\arguments{
\item{n}{number of points to locate.}

\item{message}{turn messaging from grid.ls on/off}

\item{xexpand}{expand argument in scale_x_continuous}

\item{yexpand}{expand argument in scale_y_continuous}
}
\value{
a data frame with columns according to the x and y aesthetics
}
\description{
Locator for ggplots. (Note : only accurate when extent = "normal" when using ggmap.)
}
\examples{
\dontrun{
df <- expand.grid(x = 0:-5, y = 0:-5)
(p <- qplot(x, y, data = df) +
  annotate(geom = 'point', x = -2, y = -2, colour = 'red'))
gglocator()

p +
  scale_x_continuous(expand = c(0,0)) +
  scale_y_continuous(expand = c(0,0))
gglocator(1, xexpand = c(0,0), yexpand = c(0,0))

}
}
\author{
Tyler Rinker with help from Baptiste Auguie and StackOverflow user DWin with additions and canning by David Kahle \email{david.kahle@gmail.com}.
}

