all: report.pdf

report.pdf: report.tex bib.bib
	pdflatex report.tex
	bibtex report
	pdflatex report.tex

clean:
	rm -f *.log *.aux *.pdf
