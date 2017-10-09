all: report.pdf specification-schedule-kth.pdf

report.pdf: report.tex bib.bib
	pdflatex report.tex
	bibtex report
	pdflatex report.tex

specification-schedule-kth.pdf: specification-schedule-kth/specification-schedule-kth.tex
	pdflatex specification-schedule-kth/specification-schedule-kth.tex

clean:
	rm -f *.log *.aux *.pdf *.bbl *.blg *-blx.bib *.run.xml *.toc *.out
