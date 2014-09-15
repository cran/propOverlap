\name{Sel.Features}
\alias{Sel.Features}
\title{
Gene (Feature) Selection.
}
\description{
\code{Sel.Feature} selects the most discriminative genes (features) among the given ones.
}
\usage{
Sel.Features(ES, Y, K = "Min", Verbose = FALSE)
}
\arguments{
  \item{ES}{
gene (feature) matrix: P, number of genes, by N, number of samples (observations).
}
  \item{Y}{
a vector of length N for samples' class label.
}
  \item{K}{
the number of genes to be selected. The default is to give the minimum subset of genes that correctly classify the maximum number of the given tissue samples (observations). Alternatively, \code{K} should be a positive integer.
}
  \item{Verbose}{
logical. If \code{TRUE}, more information about the selected genes are returned. 
}
}
\details{
\code{Sel.Feature} selects the most relevant genes (features) in the high-dimensional binary classification problems. The discriminative genes are identified using analyzing the overlap between the expression values across both classes. The \dQuote{\bold{POS}} technique has been applied to produce the selected set of genes. A proportional overlapping score measures the overlapping degree avoiding the outliers effect for each gene. Each gene is described by a robust mask that represents its discriminative power. The constructed masks along with the gene scores are exploited to produce the selected subset of genes.
}
\value{
If \code{K} is specified as `Min' (the default), a list containing the following components is returned:
  \item{Features}{
  A matrix of the indices of selected genes with their POS measures. See \code{\link{POS}}.
  }
  \item{Covered.Obs}{
  A vector showing the indices of the observations that have been covered by the returned minimum subset of genes.
  }
If \code{K} is specified as a positive integer, a list containing the following components is returned:
  \item{features}{
  A vector of the indices of the selected genes.
  }
  \item{nMin.Features}{
  The number of genes included in the minimum subset.
  }
  \item{Measures}{
  Available only when \code{Verbose} is \code{TRUE}. It is an object with class \dQuote{\code{data.frame}} which contains 3 columns: the indices of the selected genes; the POS measures of the selected genes (see \code{\link{POS}}); the status that reports on which basis a gene is selected (\dQuote{Min.Set}: the gene is a member of the selected minimum subset, 1: the gene has a low POS score and its relative dominant class is the first class or 2: the gene has a low POS score and its relative dominant class is the second class), see \code{\link{RDC}}.
  }
}
\references{Mahmoud O., Harrison A., Perperoglou A., Gul A., Khan Z., Metodiev M. and Lausen B. (2014) \emph{A feature selection method for classification within functional genomics experiments based on the proportional overlapping score}. BMC Bioinformatics, 2014, 15:274.
}
\author{
Osama Mahmoud \email{ofamah@essex.ac.uk}
}
\note{
\code{Verbose} is only needed when \code{K} is specified. If \code{K} is set to \dQuote{Min} (default), all information are automatically returned.
}
\seealso{
\code{\link{POS}} for calculating the proportional overlapping scores and \code{\link{RDC}} for assigning the relative dominant class.
}
\examples{
data(leukaemia)
GenesExpression <- leukaemia[1:7129,] #define the features matrix
Class           <- leukaemia[7130,]   #define the observations' class labels
## select the minimum subset of features
Selection       <- Sel.Features(GenesExpression, Class)
attributes(Selection)
(Candidates      <- Selection$Features)   #return the selected features
(Covered.observations <- Selection$Covered.Obs) #return the covered observations by the selection
## select a specific number of features
Selection.k      <- Sel.Features(GenesExpression, Class, K=10, Verbose=TRUE)
Selection.k$Features
Selection.k$nMin.Features   #return the size of the minimum subset of genes
Selection.k$Measures        #return the selected features' information
}
\keyword{robust}