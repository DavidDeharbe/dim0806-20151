#!/bin/bash

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
