library(testthat)
library(taxadb)

#Sys.setenv(TAXADB_DRIVER="MonetDBLite")
Sys.setenv(TAXADB_DRIVER="duckdb")
test_check("taxadb")
