#!/usr/bin/Rscript

args <- commandArgs(trailingOnly = TRUE)
rmarkdown::render(args[1], "html_document") #fragment or document