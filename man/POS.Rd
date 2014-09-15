\name{POS}
\alias{POS}
\title{
Calculating the proportional Overlapping Scores.
}
\description{
\code{POS} computes the proportional overlapping scores of the given genes (features). This score measures the overlap degree between gene expression values across various classes. It produces a value lies in the interval [0,1]. A lower score denotes gene with higher discriminative power for the considered classification problem.
}
\usage{
POS(ES, Core, Y)
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
For each gene, \code{POS} computes a measure that estimates the overlapping degree between the expression intervals of different classes. For estimating the overlap, POS measure takes into account three factors: the length of the overlapping region; number of the overlapped samples (observations); the proportion of each class's overlapped samples to the total number of overlapping samples.
}
\value{
It returns a vector of length P for `POS' measures of all genes (features).
}
\references{Mahmoud O., Harrison A., Perperoglou A., Gul A., Khan Z., Metodiev M. and Lausen B. (2014) \emph{A feature selection method for classification within functional genomics experiments based on the proportional overlapping score}. BMC Bioinformatics, 2014, 15:274.
}
\author{
Osama Mahmoud \email{ofamah@essex.ac.uk}
}

\seealso{
\code{\link{CI.emprical}} for the core interval boundaries and \code{\link{GMask}} for the gene masks.
}
\examples{
data(leukaemia)
Score <- POS(leukaemia[1:7129,], CI.emprical(leukaemia[1:7129,],
leukaemia[7130,]), leukaemia[7130,])
Score[1:5]      #show the proportional overlapping scores for the first 5 features
summary(Score)  #show the the summary of the scores of all features.
}
\keyword{univar}