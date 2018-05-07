#!/bin/bash
if [ "$1" == "complete" ]
then
    pdflatex main.tex
    bibtex main
    pdflatex main.tex
fi

if [ "$1" == "show" ]
then
    evince main.pdf & exit
fi

pdflatex main.tex

