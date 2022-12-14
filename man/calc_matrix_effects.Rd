% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_fns.R
\name{calc_matrix_effects}
\alias{calc_matrix_effects}
\title{Effects of matrix parameters}
\usage{
calc_matrix_effects(responses, list_ind_vary)
}
\arguments{
\item{responses}{A vector of the responses due to the parameters of a matrix
population model and their interactions.}

\item{list_ind_vary}{A list object, where each entry is a vector
containing the indices (the combinations of the elements of \code{ind_vary}, an
input parameter) that varied (were \emph{not} held fixed) for the corresponding
entry in the \code{responses} vector.}
}
\value{
A vector of effects, which are the responses due to a given interaction
order, controlling for the lower-level interaction terms. These are the epsilon
terms in an fANOVA decomposition.
}
\description{
Calculate the effects of differences or variance in vital rate entries in a
set of matrix population models, for a given set of interaction terms.
}
\examples{
A1<- matrix(data=c(0,0.8,0, 0,0,0.7, 5,0,0.2), nrow=3, ncol=3)
A2<- matrix(data=c(0,0.9,0, 0,0,0.5, 4,0,0.3), nrow=3, ncol=3)
A3<- matrix(data=c(0,0.4,0, 0,0,0.6, 6,0,0.25), nrow=3, ncol=3)
A_all<- collapse_mat_list(list(A1, A2, A3))
nu_var<- calc_matrix_responses(A_all, c(2,6,7,9), FUN=lamVar, maxint="all")
nu_diff<- calc_matrix_responses(list(A1,A2), c(2,6,7,9), FUN=lamDiff_symmetric, maxint="all")
epsilon_var<- calc_matrix_effects(nu_var$nus, nu_var$list_ind_vary)
epsilon_diff<- calc_matrix_effects(nu_diff$nus, nu_diff$list_ind_vary)
}
