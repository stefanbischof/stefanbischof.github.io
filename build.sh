#!/bin/sh

BIB="mypublications.bib"
HTML="mypublications.html"

function pubbyyear {
	echo "<h2>$1</h2>" >> $HTML

	./bib2bib -q -oc cite.txt --remove editor -c "year=$1"  $BIB > test.bib 
	./bibtex2html -q -noabstract -nobibsource -nokeys -nokeywords -nodoc -noheader -nofooter -d -r -o - test.bib >> $HTML
}


echo "<h1>Publications</h1>" > $HTML

echo "<p>Find a list of all of my publications on my <a href="http://www.informatik.uni-trier.de/~ley/pers/hd/b/Bischof_0002:Stefan.html">DBLP profile</a>, <a href="http://scholar.google.com/citations?user=U8wSrHwAAAAJ">Google Scholar profile</a>, <a href="https://www.semanticscholar.org/author/Stefan-Bischof/1957042">Semantic Scholar profile</a>, or <a href="https://academic.microsoft.com/#/detail/2191577688">Microsoft Academic profile</a>.</p>"

for i in $(seq 2016 2010);
do
	pubbyyear $i
done