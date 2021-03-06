% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BAT.R
\name{evenness}
\alias{evenness}
\title{Phylogenetic/functional evenness of species or individuals.}
\usage{
evenness(comm, tree, distance, abund = TRUE)
}
\arguments{
\item{comm}{A sites x species matrix, with either abundance or incidence data. If missing, the evenness using the full tree or distance matrix is calculated.}

\item{tree}{An hclust or phylo object representing a phylogenetic or functional tree. One of tree or distance must be provided.}

\item{distance}{A dist or matrix object representing the phylogenetic or functional distance between species.}

\item{abund}{A boolean (T/F) indicating whether evenness should be calculated using abundance data.}
}
\value{
A vector of values per site (or a single value if no comm is given).
}
\description{
Regularity of distance and abundance between two species in a community.
}
\details{
Evenness is calculated based on the index of Bulla (1994) using the values of both edge lengths in the tree and their abundance.

If no tree or distance is provided the result is the original index of Bulla with correction.
}
\examples{
comm <- matrix(c(1,2,0,0,0,1,1,0,0,0,0,2,2,0,0,1,1,1,1,100), nrow = 4, byrow = TRUE)
distance <- dist(c(1:5), method="euclidean")
tree <- hclust(distance, method="average")
evenness(comm)
evenness(tree = tree)
evenness(comm, tree)
evenness(comm, tree, abund = FALSE)
}
\references{
Bulla, L. (1994) An index of evenness and its associated diversity measure. Oikos, 70: 167-171.
}
