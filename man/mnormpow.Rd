\name{mnormpow}
\alias{pmnormpow}
\alias{imnormpow}
\title{Univariate partial moments of the multivariate normal distribution}
\description{
   Computes the integral of \eqn{f(x) x_i^k}{f(x)*x_i^k} on a product of intervals,
   where \eqn{f} is the density probability function of a centered multivariate
   Gaussian distribution.
}
\usage{
imnormpow(lower,upper,varcov,...)
pmnormpow(x,varcov,...)
}
\arguments{
  \item{x}{ a vector of length \code{d}, where \code{d=ncol(varcov)},
    giving the right-end values for the integral (when using
    pnormpow, the left-ends are -Inf)}
  \item{lower,upper}{ two vectors of length \code{d},
    where \code{d=ncol(varcov)},
    giving the intervals bounds for integration}
  \item{varcov}{ a positive definite matrix representing the 
    variance-covariance  matrix of the distribution}
  \item{...}{additional arguments, such as:
    \describe{
      \item{\code{ipuiss}}{ coordinate to be added to the integrand (\eqn{i}) }
      \item{\code{puiss}}{ power (\eqn{k}) }
    }
  }
}
\seealso{\code{pmnorm}}
\examples{
pmnormpow(c(0,0),varcov=matrix(c(4,0,0,2),ncol=2),ipuiss=1,puiss=2)
# =1
}

