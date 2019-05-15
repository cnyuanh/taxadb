% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fuzzy_filter.R
\name{name_contains}
\alias{name_contains}
\title{return all taxa in which scientific name contains the text provided}
\usage{
name_contains(name, provider = "itis", db = td_connect(),
  ignore_case = TRUE)
}
\arguments{
\item{name}{vector of names (scientific or common, see \code{by}) to be matched against.}

\item{provider}{from which provider should the hierarchy be returned?
Default is 'itis'.}

\item{db}{a connection to the taxadb database. See details.}

\item{ignore_case}{should we ignore case (capitalization) in matching names?
default is \code{TRUE}.}
}
\description{
return all taxa in which scientific name contains the text provided
}
\examples{
\donttest{
  \dontshow{
   ## All examples use a temporary directory
   Sys.setenv(TAXADB_HOME=tempdir())
  }
name_contains("Homo ")
}
}