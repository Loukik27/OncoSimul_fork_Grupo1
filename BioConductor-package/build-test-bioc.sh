#!/bin/bash

V_R=$1

cd ../Subversion-in-BioC

V_ADA=$(cat ./OncoSimulR/DESCRIPTION | grep Version | cut -d' ' -f2)

rm OncoSimulR_$V_ADA.tar.gz

# rm ./OncoSimulR/src/*.so
# rm ./OncoSimulR/src/*.o
# rm ./OncoSimulR/src/OncoSimulR.so
# rm ./OncoSimulR/src/OncoSimul.o
# rm ./OncoSimulR/src/OncoSimulR_init.o
# rm ./OncoSimulR/src/symbols.rds
# rm /OncoSimulR.Rcheck/* -r -f
# rm ./OncoSimulR.Rcheck/* -r -f
# # rm ./OncoSimulR/inst/doc/auto/*
# # rmdir ./OncoSimulR/inst/doc/auto
# rm ./OncoSimulR/vignettes/auto/*
# rmdir ./OncoSimulR/vignettes/auto
# rm ./OncoSimulR/vignettes/*.bbl
# rm ./OncoSimulR/vignettes/*.aux
# rm ./OncoSimulR/vignettes/*.toc
# rm ./OncoSimulR/vignettes/*.tex
# rm ./OncoSimulR/vignettes/*.pdf
# rm ./OncoSimulR/vignettes/*.log
# rm ./OncoSimulR/vignettes/*.out
# rm ./OncoSimulR/vignettes/*.blg

time $V_R CMD build --keep-empty-dirs --no-resave-data OncoSimulR

time $V_R CMD check --no-vignettes --timings OncoSimulR_$V_ADA.tar.gz

