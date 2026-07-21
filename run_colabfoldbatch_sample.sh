#!/bin/bash

INPUTFILE="$dir/${trimmed}_WT.fa"
OUTPUTDIR="${INPUTFILE}"
RANDOMSEED=0

 export PATH="/home/c21094846/localcolabfold/localcolabfold/colabfold-conda/bin:$PATH"

colabfold_batch \
  --num-recycle 3 \
  --amber \
  --templates \
  --use-gpu-relax \
  --num-models 5 \
  --model-order 1,2,3,4,5 \
  --random-seed ${RANDOMSEED} \
  ${INPUTFILE}.fasta \
  ${OUTPUTDIR}
