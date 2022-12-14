% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_fns.R
\name{collapse_mat_list}
\alias{collapse_mat_list}
\title{Collapse a list of matrices}
\usage{
collapse_mat_list(Alist)
}
\arguments{
\item{Alist}{A list of matrices, of any length.}
}
\value{
A matrix where each row contains the column-wise vectorization of one
of the original matrices.
}
\description{
Collapse a list of square matrices into a matrix where each row contains the
column-wise vectorization of one of the original matrices.
}
\examples{
A1<- matrix(data=c(0,0.8,0, 0,0,0.7, 5,0,0.2), nrow=3, ncol=3)
A2<- matrix(data=c(0,0.9,0, 0,0,0.5, 4,0,0.3), nrow=3, ncol=3)
A3<- matrix(data=c(0,0.4,0, 0,0,0.6, 6,0,0.25), nrow=3, ncol=3)
A_all<- collapse_mat_list(list(A1, A2, A3))
}
