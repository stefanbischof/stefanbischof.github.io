#!/bin/bash

export TMPDIR=.

BIB=mypublications.bib
HTML=mypublications.html

function b2h {
	bibtex2html -q -s owens-web -dl --named-field slides Slides --named-field video Video -nokeys -noheader -nofooter -nodoc --no-abstract --no-keywords --sort-by-date --reverse-sort -o - -citefile cite.txt $BIB >> $HTML
}

echo "<h2>Journal Articles</h2>" > $HTML

bib2bib -q -oc cite.txt -c '$type="ARTICLE"' $BIB > /dev/null
b2h

echo "<h2>Conference Articles</h2>" >> $HTML

bib2bib -q -oc cite.txt -c '$type="INPROCEEDINGS"' -c 'not exists eventtype' $BIB > /dev/null
b2h

echo "<h2>Workshop and Poster Articles</h2>" >> $HTML

bib2bib -q -oc cite.txt -c '$type="INPROCEEDINGS"' -c 'eventtype="poster"|eventtype="workshop"' $BIB > /dev/null
b2h

echo "<h2>Theses</h2>" >> $HTML

bib2bib -q -oc cite.txt -c '$type="MASTERSTHESIS"' $BIB > /dev/null
b2h

echo "<h2>Other</h2>" >> $HTML

bib2bib -q -oc cite.txt -c '!$type="ARTICLE"' -c '!$type="INPROCEEDINGS"' -c '!$type="MASTERSTHESIS"'  $BIB > /dev/null
b2h

## strip the comments about bibtex2html
paste -s -d " " $HTML > $HTML.1
mv $HTML.1 $HTML
#cat $HTML | sed -e 's/<hr>.*//g' -e 's/^<a.*//g' -e 's/<font[^>]*>//g' -e 's/<\/font>//g' > $HTML.1
cat $HTML | sed -e 's/<hr>.*//g' -e 's/^<p> /<p>/g' -e 's|</a>  |</a>|g' -e '/^$/d' -e 's/<font[^>]*>//g' -e 's/<\/font>//g' -e 's/pages \([0-9]*\)\-\([0-9]*\)/pages \1\&ndash;\2/g' -e 's/,/, /g' > $HTML.1


## add header and footer
cat  $HTML.1 > $HTML

#rm cite.txt $HTML.1
