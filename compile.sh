#!/bin/bash
if [ "$1" == "complete" ]
then
    xelatex main.tex
    bibtex main
    xelatex main.tex
fi

if [ "$1" == "show" ]
then
    evince main.pdf & exit
fi

xelatex main.tex

