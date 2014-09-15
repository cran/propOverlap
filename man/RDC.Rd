\name{RDC}
\alias{RDC}
\title{
Assiging the Relative Dominant Class.
}
\description{
\code{RDC} associates genes (features) with the class which it is more able to distingish. For each gene, a class that has the highest proportion, relative to classes' size, of correctly assigned samples (observations) is reported as the relative dominant class for the considered gene.
}
\usage{
RDC(GMask, Y)
}
\arguments{
  \item{GMask}{
gene (feature) mask matrix: P, number of genes, by N, number of samples(observations) with elements of zeros and ones. See the returned value of the \code{\link{GMask}}.
}
\item{Y}{
a vector of length N for samples' class label.
}
}
\value{
\code{RDC} returns a vector of length P. Each element's value is either 1 or 2 indicating which class label is reported as the relative dominant class for the corresponding gene (feature).
}
\references{Mahmoud O., Harrison A., Perperoglou A., Gul A., Khan Z., Metodiev M. and Lausen B. (2014) \emph{A feature selection method for classification within functional genomics experiments based on the proportional overlapping score}. BMC Bioinformatics, 2014, 15:274.
}
\author{
Osama Mahmoud \email{ofamah@essex.ac.uk}
}

\seealso{
\code{\link{GMask}} for gene (feature) mask matrix.
}
\examples{
data(lung)
Class           <- lung[12534,]   #define the observations' class labels
Gene.Masks      <- GMask(lung[1:12533,], CI.emprical(lung[1:12533,], Class), Class)
RelativeDC      <- RDC(Gene.Masks, Class)
RelativeDC[1:10]                  #show the relative dominant classes for the first 10 features
table(RelativeDC)                 #show the number of assignments for each class
}
\keyword{univar}