#!/bin/sh
for f in *.svg; do
	inkscape -f "$f" -A "${f%.svg}.pdf"
done

