% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/demographic_fns.R
\name{generation_time}
\alias{generation_time}
\title{Generation time}
\usage{
generation_time(Amat, Fmat)
}
\arguments{
\item{Amat}{The full population projection matrix}

\item{Fmat}{The fertility elements of the population projection matrix.}
}
\value{
The generation time, as a single number, given in the same units as
the projection time step. If the projection interval is two weeks, the
generation time will be the number of two-week intervals. You may wish to
convert to a standard time step, like days or years.
}
\description{
Generation time has been defined in multiple ways. This calculation comes
from Bienvenu and Legendre (2015, The American Naturalist;
\doi{10.1086/681104}). They define the generation time as
the average time between two events in the genealogy of the population.
}
\examples{
A1<- matrix(data=c(0,0.8,0, 0,0,0.7, 5,0,0.2), nrow=3, ncol=3)
F1<- matrix(0, nrow=3, ncol=3)
F1[1,3]<- A1[1,3]
#F1 is all zeros, except the upper right corner which matches A1 for adult fertility
T<- generation_time(A1, F1)
}
