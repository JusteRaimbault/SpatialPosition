% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/huff.R
\name{rasterHuff}
\alias{rasterHuff}
\title{Create a Raster from a Huff SpatialPointsDataFrame}
\usage{
rasterHuff(x, mask = NULL)
}
\arguments{
\item{x}{sp object (SpatialPointsDataFrame); output of the \code{huff} function.}

\item{mask}{sp object (SpatialPolygonsDataFrame); this object is used to clip 
the raster. (optional)}
}
\value{
Raster of catchment areas values.
}
\description{
This function creates a raster from a regularly spaced 
Huff SpatialPointsDataFrame (output of the \code{\link{huff}} function).
}
\examples{
data(spatData)
# Compute Huff catchment areas from known points (spatPts) on a
# grid defined by its resolution
myhuff <- huff(knownpts = spatPts, varname = "Capacite",
               typefct = "exponential", span = 750, beta = 2,
               resolution = 100, mask = spatMask)
# Create a raster of huff values
myhuffraster <- rasterHuff(x = myhuff, mask = spatMask)
plot(myhuffraster)
}
\seealso{
\link{huff}, \link{rasterHuff}, \link{plotHuff}, \link{CreateGrid}, 
\link{CreateDistMatrix}.
}

