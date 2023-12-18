.PHONY: interactive 

%.pdf: %.tex slides.md
	latexmk -pdf -xelatex -f $^

%.tex: %.md
	pandoc --citeproc --biblatex -o $@ -t beamer $^

%.html: %.md
	pandoc -o $@ -s --citeproc --bibliography globals/papers.bib --css globals/pandoc.css $^
