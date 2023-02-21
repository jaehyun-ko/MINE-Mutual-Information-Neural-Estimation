DOC=main

all:
	xelatex $(DOC).tex
	bibtex $(DOC)
	xelatex $(DOC).tex
	xelatex $(DOC).tex

clean:
	rm -f $(DOC).aux $(DOC).log $(DOC).nav $(DOC).out
	rm -f $(DOC).pdf $(DOC).snm $(DOC).toc $(DOC).vrb

bib:
	bibtex $(DOC).tex
	xelatex $(DOC).tex
	xelatex $(DOC).tex