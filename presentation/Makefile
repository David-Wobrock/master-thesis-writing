all: presentation.pdf

presentation.pdf: presentation.tex
	pdflatex presentation.tex
	pdflatex presentation.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc
	rm -f presentation.pdf
