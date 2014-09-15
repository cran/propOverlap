\name{propOverlap-package}
\alias{propOverlap-package}
\alias{propOverlap}
\docType{package}
\title{Feature (gene) selection based on the Proportional Overlapping Scores.}
\description{
A package for selecting the most relevant features (genes) in the high-dimensional binary classification problems. The discriminative features are identified using analyzing the overlap between the expression values across both classes. The package includes functions for measuring the proportional overlapping score for each gene avoiding the outliers effect. The used measure of the overlap is the one defined in the \dQuote{Proportional Overlapping Score (\bold{POS})} technique for feature selection, see \sQuote{References} section below. A gene mask which represents a gene's classification power can also be produced for each gene (feature). The set size of the selected genes might be set by the user. The minimum set of genes that correctly classify the maximum number of the given tissue samples (observations) can be also produced.}
\details{
\tabular{ll}{
Package: \tab propOverlap\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-09-15\cr
License: \tab GPL (>= 2)\cr
}
}
\author{
Osama Mahmoud, Andrew Harrison, Aris Perperoglou, Asma Gul, Zardad Khan, Berthold Lausen
Maintainer: Osama Mahmoud \email{ofamah@essex.ac.uk}
}
\references{
Mahmoud O., Harrison A., Perperoglou A., Gul A., Khan Z., Metodiev M. and Lausen B. (2014) \emph{A feature selection method for classification within functional genomics experiments based on the proportional overlapping score}. BMC Bioinformatics, 2014, 15:274}
\keyword{ package }