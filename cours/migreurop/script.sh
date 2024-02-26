#!/bin/bash

rm *.pdf
mkdir tmp

convert -geometry 1600x1600 -density 200x200 -quality 100 intro/* tmp/intro.pdf 
convert -geometry 1600x1600 -density 200x200 -quality 100 actions/* tmp/actions.pdf 
convert -geometry 1600x1600 -density 200x200 -quality 100 camps/* tmp/camps.pdf 
convert -geometry 1600x1600 -density 200x200 -quality 100 morts/* tmp/morts.pdf 
convert -geometry 1600x1600 -density 200x200 -quality 100 syriens/* tmp/syriens.pdf 
convert -geometry 1600x1600 -density 200x200 -quality 100 conclusion/* tmp/conclusion.pdf 

qpdf --empty --pages tmp/intro.pdf tmp/actions.pdf tmp/camps.pdf tmp/morts.pdf tmp/syriens.pdf tmp/conclusion.pdf -- migreurop.pdf

rm tmp/*
rmdir tmp
