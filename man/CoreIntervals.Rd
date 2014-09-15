\name{CI.emprical}
\alias{CI.emprical}
\title{
Computing the Core Intervals for Both Classes.
}
\description{
\code{CI.emprical} is used to compute the core interval boundaries for each class.
}
\usage{
CI.emprical(ES, Y)
}
\arguments{
  \item{ES}{
  gene (feature) matrix: P, number of genes, by N, number of samples(observations).
  }
  \item{Y}{
  a vector of length N for samples' class label.
  }
}
\value{
\code{CI.emprical} returns an object of class ``data.frame'' which has P rows and 4 columns. The first two columns represent a1, the minimum boundary of the first class, and b1, the maximum boundary of the first class, respectively. Whereas, the last two columns represent a2, the minimum boundary of the second class, and b2, the maximum boundary of the second class, respectively.
}
\references{Mahmoud O., Harrison A., Perperoglou A., Gul A., Khan Z., Metodiev M. and Lausen B. (2014) \emph{A feature selection method for classification within functional genomics experiments based on the proportional overlapping score}. BMC Bioinformatics, 2014, 15:274.
}
\author{
Osama Mahmoud \email{ofamah@essex.ac.uk}
}

\examples{
data(lung)
GenesExpression <- lung[1:12533,]   #define the features matrix
Class           <- lung[12534,]     #define the observations' class labels
CoreIntervals   <- CI.emprical(GenesExpression, Class)
CoreIntervals[1:10,]                #show classes' core interval for the first 10 features
}
\keyword{robust}
\keyword{univar}