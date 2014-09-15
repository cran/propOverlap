\name{GMask}
\alias{GMask}
\title{
Producing Gene Masks.
}
\description{
\code{GMask} produces the masks of features (genes). Each gene mask reports the samples that can unambiguously be assigned to their correct target classes by this gene.
}
\usage{
GMask(ES, Core, Y)
}
\arguments{
  \item{ES}{
gene (feature) matrix: P, number of genes, by N, number of samples(observations).
}
\item{Core}{
a \code{data.frame} of the core interval boundaries for both classes. It should have the same number of rows as \code{ES} and 4 columns (the minimum and the maximum of the first class's core interval followed by the minimum and the maximum of the second class's core interval). See the returned value of the \code{\link{CI.emprical}}.
}
\item{Y}{
a vector of length N for samples' class label.
}
}
\details{
\code{GMask} gives the gene masks that can represent the capability of genes to correctly classify each sample. Such a mask represents a gene's classification power. Each element of a mask is set either to 1 or 0 based on whether the corresponding sample (observation) could be unambiguously assign to its correct target class by the considered gene or not respectively.
}
\value{
It returns a P by N matrix with elements of zeros and ones.
}
\references{Mahmoud O., Harrison A., Perperoglou A., Gul A., Khan Z., Metodiev M. and Lausen B. (2014) \emph{A feature selection method for classification within functional genomics experiments based on the proportional overlapping score}. BMC Bioinformatics, 2014, 15:274.
}
\author{
Osama Mahmoud \email{ofamah@essex.ac.uk}
}

\seealso{
\code{\link{CI.emprical}} for the core interval boundaries.
}
\examples{
data(leukaemia)
GenesExpression <- leukaemia[1:7129,] #define the features matrix
Class           <- leukaemia[7130,]   #define the observations' class labels
Gene.Masks      <- GMask(GenesExpression, CI.emprical(GenesExpression, Class), Class)
Gene.Masks[1:100,]                    #show the masks of the first 100 features
}
\keyword{robust}
\keyword{univar}