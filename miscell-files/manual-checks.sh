#! /bin/bash
## for quick things, faster than R CMD check, etc
R -e 'library(knitr); knit("../OncoSimulR/vignettes/OncoSimulR.Rnw")'
R -e 'library(testthat); test_dir("../OncoSimulR/tests/testthat")'
R -e 'library(testthat); test_dir("../OncoSimulR/tests/manual")'
