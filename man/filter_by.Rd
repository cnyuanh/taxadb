% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_by.R
\name{filter_by}
\alias{filter_by}
\title{Creates a data frame with column name given by \code{by}, and values given
by the vector \code{x}, and then uses this table to do a filtering join,
joining on the \code{by} column to return all rows matching the \code{x} values
(scientificNames, taxonIDs, etc).}
\usage{
filter_by(x, by, provider = c("itis", "ncbi", "col", "tpl", "gbif", "fb",
  "slb", "wd", "ott", "iucn"), collect = TRUE, db = td_connect(),
  ignore_case = TRUE)
}
\arguments{
\item{x}{a vector of values to filter on}

\item{by}{a column name in the taxa_tbl (following Darwin Core Schema terms).
The filtering join is executed with this column as the joining variable.}

\item{provider}{from which provider should the hierachy be returned?
Default is 'itis'.}

\item{collect}{logical, default \code{TRUE}. Should we return an in-memory
data.frame (default, usually the most convenient), or a reference to
lazy-eval table on disk (useful for very large tables on which we may
first perform subsequent filtering operations.)}

\item{db}{a connection to the taxadb database. See details.}

\item{ignore_case}{should we ignore case (capitalization) in matching names?
default is \code{TRUE}.}
}
\value{
a data.frame in the Darwin Core tabular format containing the
matching taxonomic entities.
}
\description{
Creates a data frame with column name given by \code{by}, and values given
by the vector \code{x}, and then uses this table to do a filtering join,
joining on the \code{by} column to return all rows matching the \code{x} values
(scientificNames, taxonIDs, etc).
}
\examples{
\donttest{
  \dontshow{
   ## All examples use a temporary directory
   Sys.setenv(TAXADB_HOME=tempdir())
  }

sp <- c("Trochalopteron henrici gucenense",
        "Trochalopteron elliotii")
filter_by(sp, "scientificName")

filter_by(c("ITIS:1077358", "ITIS:175089"), "taxonID")

filter_by("Aves", "class")

}

}
\seealso{
Other filter_by: \code{\link{by_common}},
  \code{\link{by_id}}, \code{\link{by_name}},
  \code{\link{by_rank}}
}
\concept{filter_by}