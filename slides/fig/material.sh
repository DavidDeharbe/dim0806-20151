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


function clean () {
	rm -f *.log *.aux *~ *.pdf
}
