#!/bin/sh

BIB="mypublications.bib"
HTML="mypublications.html"

function pubbyyear {
	echo "<h2>$1</h2>" >> $HTML

	./bib2bib -q -oc cite.txt --remove editor -c "year=$1"  $BIB > test.bib 
	./bibtex2html -q -noabstract -nobibsource -nokeys -nokeywords -nodoc -noheader -nofooter -d -r -o - test.bib >> $HTML
}

echo "---
layout: default
---" > $HTML

echo "<h1>Publications</h1>" >> $HTML

for i in $(seq 2016 2010);
do
	pubbyyear $i
done