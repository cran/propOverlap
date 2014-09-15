\name{leukaemia}
\alias{leukaemia}
\docType{data}
\title{
Leukaemia data set.
}
\description{
The leukemia dataset was taken from a collection of leukemia patient samples reported by Golub et. al., (1999). This dataset often serves as a benchmark for microarray analysis methods. It contains gene expressions corresponding to acute lymphoblast leukemia (ALL) and acute myeloid leukemia (AML) samples from bone marrow and peripheral blood. The dataset consisted of 72 samples: 49 samples of ALL; 23 samples of AML. Each sample is measured over 7,129 genes.
}
\usage{data(leukaemia)}
\format{
  A matrix with 7130 rows (7129 rows show the gene expressions while the last row reports the corresponding sample's class label), and 72 columns represent the samples. The samples class's label coded as follows:
  \describe{
    \item{\code{1}}{acute lymphoblast leukemia sample (ALL).}
    \item{\code{2}}{acute myeloid leukemia sample (AML).}
    }
  }

\source{
\url{http://cilab.ujn.edu.cn/datasets.htm}
}
\references{
Golub TR, Slonim DK, Tamayo P, Huard C, Gaasenbeek M, Mesirov JP, Coller H, Loh ML, Downing JR, Caligiuri MA, Bloomfield CD, Lander ES. (1999) \emph{Molecular classification of cancer: class discovery and class prediction by gene expression monitoring}. Science: 286 (5439), 531-537.
}
\examples{
data(leukaemia)
str(leukaemia)
}
\keyword{datasets}
