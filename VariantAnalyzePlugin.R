## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)

## --------------------------------------------------------------------------
si

## --------------------------------------------------------------------------
#path <- system.file("extdata", package = "SGSeq")

## ---- message = FALSE------------------------------------------------------
library(TxDb.Hsapiens.UCSC.hg19.knownGene)

input <- function(inputfile) {
   sgfc_pred2 <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
sgvc_pred <- analyzeVariants(sgfc_pred2)
saveRDS(sgvc_pred, outputfile)
}
