\name{lung}
\alias{lung}
\docType{data}
\title{
Lung cancer data set.
}
\description{
Gene expression data for lung cancer classification between two classes: adenocarcinoma (ADCA); malignant pleural mesothe-lioma (MPM). The lung data set contains 181 tissue samples (150 ADCA and 31 MPM). Each sample is described by 12533 genes.
}
\usage{data(lung)}
\format{
  A matrix with 12534 rows (12533 rows show the gene expressions for 181 tissue samples, reported in columns, while the last row reports the corresponding sample's class label). The samples class's label coded as follows:
  \describe{
    \item{\code{1}}{adenocarcinoma sample (ADCA).}
    \item{\code{2}}{malignant pleural mesothe-lioma sample (MPM).}
    }
}
\source{
\url{http://cilab.ujn.edu.cn/datasets.htm}
}
\references{
Gordon GJ, Jensen RV, Hsiao L-L, Gullans SR, Blumenstock JE, Ramaswamy S, Richards WG, Sugarbaker DJ, Bueno R. (2002) \emph{Translation of microarray data into clinically relevant cancer diagnostic tests using gene expression ratios in lung cancer and mesothelioma}. Cancer research: 62(17), 4963-4967.
}
\examples{
data(lung)
str(lung)
}
\keyword{datasets}
