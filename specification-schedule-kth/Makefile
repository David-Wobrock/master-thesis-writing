all: ../specification-schedule-kth.pdf

../specification-schedule-kth.pdf: specification-schedule-kth.tex bib.bib
	pdflatex specification-schedule-kth.tex
	bibtex specification-schedule-kth
	pdflatex specification-schedule-kth.tex
	mv specification-schedule-kth.pdf ../

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc *.out
