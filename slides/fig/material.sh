#!/bin/bash

function aula13 () {
file=stack-array
pdflatex $file
./splitPDF.py $file.pdf 1 2 3 4 5
for i in 1 2 3 4 5; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=queue-array
pdflatex $file
./splitPDF.py $file.pdf 1 2 3 4 5
for i in 1 2 3 4 5; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=deque-array
pdflatex $file
./splitPDF.py $file.pdf 1 2 3 4 5
for i in 1 2 3 4 5; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done
}
function aula14 () {

TEXFILES="singly-linked-list \
  singly-linked-list-memory \
  singly-linked-list-circular \
  singly-linked-list-circular-memory \
  doubly-linked-list \
  doubly-linked-list-memory \
  doubly-linked-list-circular \
  doubly-linked-list-circular-memory \
  singly-linked-list-insert-after \
  singly-linked-list-insert-first \
  doubly-linked-list-insert-after\
  doubly-linked-list-sentinel-circular-remove\
  doubly-linked-list-insert-before \
  doubly-linked-list-sentinel-circular \
  doubly-linked-list-sentinel-circular-empty"

for file in $TEXFILES; do
  pdflatex $file
done

file=singly-linked-list-insert-after
./splitPDF.py $file.pdf 1 2 3
for i in 1 2 3; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=singly-linked-list-insert-first
./splitPDF.py $file.pdf 1 2 3
for i in 1 2 3; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=doubly-linked-list-insert-after
pages="1 2 3 4 5"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=doubly-linked-list-insert-before
pages="1 2 3 4 5"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=singly-linked-list-remove-after
pages="1 2"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=singly-linked-list-remove-first
pages="1 2"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=doubly-linked-list-sentinel-circular-remove
pages="1 2 3 4"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

}

function aula16 () {

TEXFILES="ab \
  abb"

for file in $TEXFILES; do
  pdflatex $file
done

file=abb
pages="1 2"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

}

function aula21 () {

TEXFILES="splay-insert \
  splay-remove \
  splay-do \
  splay-1 \
  splay-2 \
  splay-3"

for file in $TEXFILES; do
  latexmk -pdf $file
done

file=splay-insert
pages="1 2 3"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=splay-remove
pages="1 2 3 4 5"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=splay-do
pages="1 2 3 4"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=splay-1
pages="1 2"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=splay-2
pages="1 2 3"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=splay-3
pages="1 2"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

}
echo "aula21: splay trees"

function aula22 () {

TEXFILES="interval-tree \
  interval-tree-search"

for file in $TEXFILES; do
  latexmk -pdf $file
done

file=interval-tree-search
pages="1 2 3"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

}
echo "aula22: interval trees"

function aula23 () {

TEXFILES="bfs-proof\
  dfs"

for file in $TEXFILES; do
  latexmk -pdf $file
done

file=dfs
pages="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done
}
echo "aula23: elementary graph algorithms"

function aula24 () {

TEXFILES="dag\
  scc"

for file in $TEXFILES; do
  latexmk -pdf $file
done

file=dag
pages="1 2"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

file=scc
pages="1 2 3 4 5"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done
}
echo "aula24: elementary graph algorithms (ii)"

function aula25 () {

TEXFILES="mst"

for file in $TEXFILES; do
  latexmk -pdf $file
done

file=mst
pages="1 2 3 4 5 6"
./splitPDF.py $file.pdf $pages
for i in $pages; do mv $file.part$i.$i'_'$i.pdf "$file-$i.pdf"; done

}
echo "aula25: minimum spanning tree"

function clean () {
	rm -f *.log *.aux *~ *.pdf
}
