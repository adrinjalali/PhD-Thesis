#!/bin/bash
if [ "$1" == "complete" ]
then
    xelatex main.tex
    bibtex main.aux
    xelatex main.tex
fi

xelatex main.tex

if [ "$1" == "show" ]
then
    evince main.pdf &
fi
