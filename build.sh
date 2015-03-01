#!/bin/bash
cd source
for f in */*.rmd
do 
  directory=${f%/*.*}
  cp ../_output.yaml $directory #this sucks
  Rscript ../makehtml.r $f
  mkdir ../site/$directory
  cp -R ${f%.*}.html ../site/${f%.*}.html
  rm ${f%.*}.html
  rm $directory/_output.yaml 
  #mv ${f%.*}.html ../site/${f%.*}.html
  #ruby postprocess.rb ${f%.*}.tmp > ${f%.*}.html
done
cd ..
