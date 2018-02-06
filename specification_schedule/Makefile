specification_schedule.pdf: specification_schedule.tex bib.bib
	pdflatex specification_schedule.tex
	bibtex specification_schedule
	pdflatex specification_schedule.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *-blx.bib *.run.xml *.toc *.out
