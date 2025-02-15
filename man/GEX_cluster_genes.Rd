% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GEX_cluster_genes.R
\name{GEX_cluster_genes}
\alias{GEX_cluster_genes}
\title{Extracts the differentially expressed genes between two samples. This function uses the FindMarkers function from the Seurat package. Further parameter control can be accomplished by calling the function directly on the output of automate_GEX or VDJ_GEX_matrix}
\usage{
GEX_cluster_genes(GEX, min.pct, filter, base, platypus.version)
}
\arguments{
\item{GEX}{Output Seurat object of either automate_GEX for platypus.version v2 or of VDJ_GEX_matrix for platypus.version v3 (usually VDJ_GEX_matrix.output[[2]])}

\item{min.pct}{The minimum percentage of cells expressing a gene in either of the two groups to be compared. Default is 0.25}

\item{filter}{Character vector of initials of the genes to be filtered. Default is c("MT-", "RPL", "RPS"), which filters mitochondrial and ribosomal genes.}

\item{base}{The base with respect to which logarithms are computed. Default: 2}

\item{platypus.version}{is set automatically}
}
\value{
Returns a dataframe containing the output from the FindMarkers function, which contains information regarding the genes that are differentially regulated, statistics (p value and log fold change), and the percent of cells expressing the particular gene. Ech element in the list corresponds to the clusters in numerical order. For example, the first element in the list output[[1]] corresponds to the genes deferentially expressed in cluster 0 in GEX
}
\description{
Extracts the differentially expressed genes between two samples. This function uses the FindMarkers function from the Seurat package. Further parameter control can be accomplished by calling the function directly on the output of automate_GEX or VDJ_GEX_matrix
}
\examples{
#Platypus version v2
#GEX_cluster_genes(GEX =automate_GEX_output[[i]], min.pct = .25
#, filter = c("MT-", "RPL", "RPS"))

#Platypus version v3
GEX_cluster_genes(GEX = subset(Platypus::small_vgm[[2]], seurat_clusters \%in\% c(0,1)), min.pct = .25
, filter = c("MT-", "RPL", "RPS"))

}
