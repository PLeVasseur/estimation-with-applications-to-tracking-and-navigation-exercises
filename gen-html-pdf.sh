#!/bin/bash

#
# Creates static HTML pages and PDFs for each Jupyter Notebook
# such that the information can be distributed.
#

# clean up old LaTeX artifacts and pdfs
cd pdf
rm -rf *.aux *.out *.log *.tex
cd ..

# create HTML pages using nbconvert
cd notebooks
jupyter nbconvert *.ipynb --to html
mv *.html ../html

# create LaTeX documents using nbconvert
jupyter nbconvert *.ipynb --to latex

# move them to pdf directory
mv *.tex ../pdf

# convert LaTeX documents to PDF using XeLaTeX
cd ../pdf
for entry in *.tex
do
  echo "$entry"
  xelatex "$entry"
done
rm -rf *.aux *.out *.log *.tex

# back to project root
#cd ..
